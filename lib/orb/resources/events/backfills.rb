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
        # @overload create(timeframe_end:, timeframe_start:, close_time: nil, customer_id: nil, deprecation_filter: nil, external_customer_id: nil, replace_existing_events: nil, request_options: {})
        #
        # @param timeframe_end [Time]
        # @param timeframe_start [Time]
        # @param close_time [Time, nil]
        # @param customer_id [String, nil]
        # @param deprecation_filter [String, nil]
        # @param external_customer_id [String, nil]
        # @param replace_existing_events [Boolean]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Events::BackfillCreateResponse]
        #
        # @see Orb::Models::Events::BackfillCreateParams
        def create(params)
          parsed, options = Orb::Models::Events::BackfillCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "events/backfills",
            body: parsed,
            model: Orb::Models::Events::BackfillCreateResponse,
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
        # @overload list(cursor: nil, limit: nil, request_options: {})
        #
        # @param cursor [String, nil]
        # @param limit [Integer]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Page<Orb::Models::Events::BackfillListResponse>]
        #
        # @see Orb::Models::Events::BackfillListParams
        def list(params = {})
          parsed, options = Orb::Models::Events::BackfillListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "events/backfills",
            query: parsed,
            page: Orb::Page,
            model: Orb::Models::Events::BackfillListResponse,
            options: options
          )
        end

        # Closing a backfill makes the updated usage visible in Orb. Upon closing a
        #   backfill, Orb will asynchronously reflect the updated usage in invoice amounts
        #   and usage graphs. Once all of the updates are complete, the backfill's status
        #   will transition to `reflected`.
        #
        # @overload close(backfill_id, request_options: {})
        #
        # @param backfill_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Events::BackfillCloseResponse]
        #
        # @see Orb::Models::Events::BackfillCloseParams
        def close(backfill_id, params = {})
          @client.request(
            method: :post,
            path: ["events/backfills/%1$s/close", backfill_id],
            model: Orb::Models::Events::BackfillCloseResponse,
            options: params[:request_options]
          )
        end

        # This endpoint is used to fetch a backfill given an identifier.
        #
        # @overload fetch(backfill_id, request_options: {})
        #
        # @param backfill_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Events::BackfillFetchResponse]
        #
        # @see Orb::Models::Events::BackfillFetchParams
        def fetch(backfill_id, params = {})
          @client.request(
            method: :get,
            path: ["events/backfills/%1$s", backfill_id],
            model: Orb::Models::Events::BackfillFetchResponse,
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
        # @overload revert(backfill_id, request_options: {})
        #
        # @param backfill_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Events::BackfillRevertResponse]
        #
        # @see Orb::Models::Events::BackfillRevertParams
        def revert(backfill_id, params = {})
          @client.request(
            method: :post,
            path: ["events/backfills/%1$s/revert", backfill_id],
            model: Orb::Models::Events::BackfillRevertResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Orb::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
