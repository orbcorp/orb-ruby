# typed: strong

module Orb
  module Resources
    class Events
      class Backfills
        sig do
          params(
            timeframe_end: Time,
            timeframe_start: Time,
            close_time: T.nilable(Time),
            customer_id: T.nilable(String),
            deprecation_filter: T.nilable(String),
            external_customer_id: T.nilable(String),
            replace_existing_events: T::Boolean,
            request_options: Orb::RequestOpts
          ).returns(Orb::Models::Events::BackfillCreateResponse)
        end
        def create(
          timeframe_end:,
          timeframe_start:,
          close_time:,
          customer_id:,
          deprecation_filter:,
          external_customer_id:,
          replace_existing_events:,
          request_options: {}
        ); end

        sig do
          params(
            cursor: T.nilable(String),
            limit: Integer,
            request_options: Orb::RequestOpts
          ).returns(Orb::Page[Orb::Models::Events::BackfillListResponse])
        end
        def list(cursor:, limit:, request_options: {}); end

        sig do
          params(
            backfill_id: String,
            request_options: Orb::RequestOpts
          ).returns(Orb::Models::Events::BackfillCloseResponse)
        end
        def close(backfill_id, request_options: {}); end

        sig do
          params(
            backfill_id: String,
            request_options: Orb::RequestOpts
          ).returns(Orb::Models::Events::BackfillFetchResponse)
        end
        def fetch(backfill_id, request_options: {}); end

        sig do
          params(
            backfill_id: String,
            request_options: Orb::RequestOpts
          ).returns(Orb::Models::Events::BackfillRevertResponse)
        end
        def revert(backfill_id, request_options: {}); end

        sig { params(client: Orb::Client).void }
        def initialize(client:); end
      end
    end
  end
end
