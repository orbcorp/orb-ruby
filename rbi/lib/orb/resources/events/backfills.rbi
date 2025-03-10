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
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Orb::Models::Events::BackfillCreateResponse)
        end
        def create(
          timeframe_end:,
          timeframe_start:,
          close_time: nil,
          customer_id: nil,
          deprecation_filter: nil,
          external_customer_id: nil,
          replace_existing_events: nil,
          request_options: {}
        )
        end

        sig do
          params(
            cursor: T.nilable(String),
            limit: Integer,
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Orb::Page[Orb::Models::Events::BackfillListResponse])
        end
        def list(cursor: nil, limit: nil, request_options: {})
        end

        sig do
          params(
            backfill_id: String,
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Orb::Models::Events::BackfillCloseResponse)
        end
        def close(backfill_id, request_options: {})
        end

        sig do
          params(
            backfill_id: String,
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Orb::Models::Events::BackfillFetchResponse)
        end
        def fetch(backfill_id, request_options: {})
        end

        sig do
          params(
            backfill_id: String,
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Orb::Models::Events::BackfillRevertResponse)
        end
        def revert(backfill_id, request_options: {})
        end

        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
