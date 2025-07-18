# typed: strong

module Orb
  module Resources
    class Events
      class Backfills
        # Creating the backfill enables adding or replacing past events, even those that
        # are older than the ingestion grace period. Performing a backfill in Orb involves
        # 3 steps:
        #
        # 1. Create the backfill, specifying its parameters.
        # 2. [Ingest](ingest) usage events, referencing the backfill (query parameter
        #    `backfill_id`).
        # 3. [Close](close-backfill) the backfill, propagating the update in past usage
        #    throughout Orb.
        #
        # Changes from a backfill are not reflected until the backfill is closed, so you
        # won’t need to worry about your customers seeing partially updated usage data.
        # Backfills are also reversible, so you’ll be able to revert a backfill if you’ve
        # made a mistake.
        #
        # This endpoint will return a backfill object, which contains an `id`. That `id`
        # can then be used as the `backfill_id` query parameter to the event ingestion
        # endpoint to associate ingested events with this backfill. The effects (e.g.
        # updated usage graphs) of this backfill will not take place until the backfill is
        # closed.
        #
        # If the `replace_existing_events` is `true`, existing events in the backfill's
        # timeframe will be replaced with the newly ingested events associated with the
        # backfill. If `false`, newly ingested events will be added to the existing
        # events.
        #
        # If a `customer_id` or `external_customer_id` is specified, the backfill will
        # only affect events for that customer. If neither is specified, the backfill will
        # affect all customers.
        #
        # When `replace_existing_events` is `true`, this indicates that existing events in
        # the timeframe should no longer be counted towards invoiced usage. In this
        # scenario, the parameter `filter` can be optionally added which enables filtering
        # using
        # [computed properties](/extensibility/advanced-metrics#computed-properties). The
        # expressiveness of computed properties allows you to deprecate existing events
        # based on both a period of time and specific property values.
        sig do
          params(
            timeframe_end: Time,
            timeframe_start: Time,
            close_time: T.nilable(Time),
            customer_id: T.nilable(String),
            deprecation_filter: T.nilable(String),
            external_customer_id: T.nilable(String),
            replace_existing_events: T::Boolean,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Models::Events::BackfillCreateResponse)
        end
        def create(
          # The (exclusive) end of the usage timeframe affected by this backfill. By
          # default, Orb allows backfills up to 31 days in duration at a time. Reach out to
          # discuss extending this limit and your use case.
          timeframe_end:,
          # The (inclusive) start of the usage timeframe affected by this backfill. By
          # default, Orb allows backfills up to 31 days in duration at a time. Reach out to
          # discuss extending this limit and your use case.
          timeframe_start:,
          # The time at which no more events will be accepted for this backfill. The
          # backfill will automatically begin reflecting throughout Orb at the close time.
          # If not specified, it will default to 1 day after the creation of the backfill.
          close_time: nil,
          # The Orb-generated ID of the customer to which this backfill is scoped. Omitting
          # this field will scope the backfill to all customers.
          customer_id: nil,
          # A boolean
          # [computed property](/extensibility/advanced-metrics#computed-properties) used to
          # filter the set of events to deprecate
          deprecation_filter: nil,
          # The external customer ID of the customer to which this backfill is scoped.
          # Omitting this field will scope the backfill to all customers.
          external_customer_id: nil,
          # If true, replaces all existing events in the timeframe with the newly ingested
          # events. If false, adds the newly ingested events to the existing events.
          replace_existing_events: nil,
          request_options: {}
        )
        end

        # This endpoint returns a list of all backfills in a list format.
        #
        # The list of backfills is ordered starting from the most recently created
        # backfill. The response also includes
        # [`pagination_metadata`](/api-reference/pagination), which lets the caller
        # retrieve the next page of results if they exist. More information about
        # pagination can be found in the [Pagination-metadata schema](pagination).
        sig do
          params(
            cursor: T.nilable(String),
            limit: Integer,
            request_options: Orb::RequestOptions::OrHash
          ).returns(
            Orb::Internal::Page[Orb::Models::Events::BackfillListResponse]
          )
        end
        def list(
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          # from the initial request.
          cursor: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          request_options: {}
        )
        end

        # Closing a backfill makes the updated usage visible in Orb. Upon closing a
        # backfill, Orb will asynchronously reflect the updated usage in invoice amounts
        # and usage graphs. Once all of the updates are complete, the backfill's status
        # will transition to `reflected`.
        sig do
          params(
            backfill_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Models::Events::BackfillCloseResponse)
        end
        def close(backfill_id, request_options: {})
        end

        # This endpoint is used to fetch a backfill given an identifier.
        sig do
          params(
            backfill_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Models::Events::BackfillFetchResponse)
        end
        def fetch(backfill_id, request_options: {})
        end

        # Reverting a backfill undoes all the effects of closing the backfill. If the
        # backfill is reflected, the status will transition to `pending_revert` while the
        # effects of the backfill are undone. Once all effects are undone, the backfill
        # will transition to `reverted`.
        #
        # If a backfill is reverted before its closed, no usage will be updated as a
        # result of the backfill and it will immediately transition to `reverted`.
        sig do
          params(
            backfill_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Models::Events::BackfillRevertResponse)
        end
        def revert(backfill_id, request_options: {})
        end

        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
