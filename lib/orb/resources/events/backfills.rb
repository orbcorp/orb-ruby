# frozen_string_literal: true

module Orb
  module Resources
    class Events
      class Backfills
        # Creating the backfill enables adding or replacing past events, even those that
        #   are older than the ingestion grace period. Performing a backfill in Orb involves
        #   3 steps:
        #
        #   1. Create the backfill, specifying its parameters.
        #   2. [Ingest](ingest) usage events, referencing the backfill (query parameter
        #      `backfill_id`).
        #   3. [Close](close-backfill) the backfill, propagating the update in past usage
        #      throughout Orb.
        #
        #   Changes from a backfill are not reflected until the backfill is closed, so you
        #   won’t need to worry about your customers seeing partially updated usage data.
        #   Backfills are also reversible, so you’ll be able to revert a backfill if you’ve
        #   made a mistake.
        #
        #   This endpoint will return a backfill object, which contains an `id`. That `id`
        #   can then be used as the `backfill_id` query parameter to the event ingestion
        #   endpoint to associate ingested events with this backfill. The effects (e.g.
        #   updated usage graphs) of this backfill will not take place until the backfill is
        #   closed.
        #
        #   If the `replace_existing_events` is `true`, existing events in the backfill's
        #   timeframe will be replaced with the newly ingested events associated with the
        #   backfill. If `false`, newly ingested events will be added to the existing
        #   events.
        #
        #   If a `customer_id` or `external_customer_id` is specified, the backfill will
        #   only affect events for that customer. If neither is specified, the backfill will
        #   affect all customers.
        #
        #   When `replace_existing_events` is `true`, this indicates that existing events in
        #   the timeframe should no longer be counted towards invoiced usage. In this
        #   scenario, the parameter `filter` can be optionally added which enables filtering
        #   using
        #   [computed properties](/extensibility/advanced-metrics#computed-properties). The
        #   expressiveness of computed properties allows you to deprecate existing events
        #   based on both a period of time and specific property values.
        #
        # @param params [Orb::Models::Events::BackfillCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Time] :timeframe_end The (exclusive) end of the usage timeframe affected by this backfill.
        #
        #   @option params [Time] :timeframe_start The (inclusive) start of the usage timeframe affected by this backfill.
        #
        #   @option params [Time, nil] :close_time The time at which no more events will be accepted for this backfill. The
        #     backfill will automatically begin reflecting throughout Orb at the close time.
        #     If not specified, it will default to 1 day after the creation of the backfill.
        #
        #   @option params [String, nil] :customer_id The Orb-generated ID of the customer to which this backfill is scoped. Omitting
        #     this field will scope the backfill to all customers.
        #
        #   @option params [String, nil] :deprecation_filter A boolean
        #     [computed property](/extensibility/advanced-metrics#computed-properties) used to
        #     filter the set of events to deprecate
        #
        #   @option params [String, nil] :external_customer_id The external customer ID of the customer to which this backfill is scoped.
        #     Omitting this field will scope the backfill to all customers.
        #
        #   @option params [Boolean] :replace_existing_events If true, replaces all existing events in the timeframe with the newly ingested
        #     events. If false, adds the newly ingested events to the existing events.
        #
        #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Orb::Models::BackfillModel]
        #
        def create(params)
          parsed, options = Orb::Models::Events::BackfillCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "events/backfills",
            body: parsed,
            model: Orb::Models::BackfillModel,
            options: options
          )
        end

        # This endpoint returns a list of all backfills in a list format.
        #
        #   The list of backfills is ordered starting from the most recently created
        #   backfill. The response also includes
        #   [`pagination_metadata`](/api-reference/pagination), which lets the caller
        #   retrieve the next page of results if they exist. More information about
        #   pagination can be found in the [Pagination-metadata schema](pagination).
        #
        # @param params [Orb::Models::Events::BackfillListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String, nil] :cursor Cursor for pagination. This can be populated by the `next_cursor` value returned
        #     from the initial request.
        #
        #   @option params [Integer] :limit The number of items to fetch. Defaults to 20.
        #
        #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Orb::Page<Orb::Models::BackfillModel>]
        #
        def list(params = {})
          parsed, options = Orb::Models::Events::BackfillListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "events/backfills",
            query: parsed,
            page: Orb::Page,
            model: Orb::Models::BackfillModel,
            options: options
          )
        end

        # Closing a backfill makes the updated usage visible in Orb. Upon closing a
        #   backfill, Orb will asynchronously reflect the updated usage in invoice amounts
        #   and usage graphs. Once all of the updates are complete, the backfill's status
        #   will transition to `reflected`.
        #
        # @param backfill_id [String]
        #
        # @param params [Orb::Models::Events::BackfillCloseParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Orb::Models::BackfillModel]
        #
        def close(backfill_id, params = {})
          @client.request(
            method: :post,
            path: ["events/backfills/%0s/close", backfill_id],
            model: Orb::Models::BackfillModel,
            options: params[:request_options]
          )
        end

        # This endpoint is used to fetch a backfill given an identifier.
        #
        # @param backfill_id [String]
        #
        # @param params [Orb::Models::Events::BackfillFetchParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Orb::Models::BackfillModel]
        #
        def fetch(backfill_id, params = {})
          @client.request(
            method: :get,
            path: ["events/backfills/%0s", backfill_id],
            model: Orb::Models::BackfillModel,
            options: params[:request_options]
          )
        end

        # Reverting a backfill undoes all the effects of closing the backfill. If the
        #   backfill is reflected, the status will transition to `pending_revert` while the
        #   effects of the backfill are undone. Once all effects are undone, the backfill
        #   will transition to `reverted`.
        #
        #   If a backfill is reverted before its closed, no usage will be updated as a
        #   result of the backfill and it will immediately transition to `reverted`.
        #
        # @param backfill_id [String]
        #
        # @param params [Orb::Models::Events::BackfillRevertParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Orb::Models::BackfillModel]
        #
        def revert(backfill_id, params = {})
          @client.request(
            method: :post,
            path: ["events/backfills/%0s/revert", backfill_id],
            model: Orb::Models::BackfillModel,
            options: params[:request_options]
          )
        end

        # @param client [Orb::Client]
        #
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
