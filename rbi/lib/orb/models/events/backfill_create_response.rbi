# typed: strong

module Orb
  module Models
    module Events
      class BackfillCreateResponse < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        # If in the future, the time at which the backfill will automatically close. If in
        # the past, the time at which the backfill was closed.
        sig { returns(T.nilable(Time)) }
        attr_accessor :close_time

        sig { returns(Time) }
        attr_accessor :created_at

        # The Orb-generated ID of the customer to which this backfill is scoped. If
        # `null`, this backfill is scoped to all customers.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_id

        # The number of events ingested in this backfill.
        sig { returns(Integer) }
        attr_accessor :events_ingested

        # If `true`, existing events in the backfill's timeframe will be replaced with the
        # newly ingested events associated with the backfill. If `false`, newly ingested
        # events will be added to the existing events.
        sig { returns(T::Boolean) }
        attr_accessor :replace_existing_events

        # The time at which this backfill was reverted.
        sig { returns(T.nilable(Time)) }
        attr_accessor :reverted_at

        # The status of the backfill.
        sig { returns(Orb::Models::Events::BackfillCreateResponse::Status::TaggedSymbol) }
        attr_accessor :status

        sig { returns(Time) }
        attr_accessor :timeframe_end

        sig { returns(Time) }
        attr_accessor :timeframe_start

        # A boolean
        # [computed property](/extensibility/advanced-metrics#computed-properties) used to
        # filter the set of events to deprecate
        sig { returns(T.nilable(String)) }
        attr_accessor :deprecation_filter

        # A backfill represents an update to historical usage data, adding or replacing
        # events in a timeframe.
        sig do
          params(
            id: String,
            close_time: T.nilable(Time),
            created_at: Time,
            customer_id: T.nilable(String),
            events_ingested: Integer,
            replace_existing_events: T::Boolean,
            reverted_at: T.nilable(Time),
            status: Orb::Models::Events::BackfillCreateResponse::Status::OrSymbol,
            timeframe_end: Time,
            timeframe_start: Time,
            deprecation_filter: T.nilable(String)
          )
            .returns(T.attached_class)
        end
        def self.new(
          id:,
          close_time:,
          created_at:,
          customer_id:,
          events_ingested:,
          replace_existing_events:,
          reverted_at:,
          status:,
          timeframe_end:,
          timeframe_start:,
          deprecation_filter: nil
        ); end
        sig do
          override
            .returns(
              {
                id: String,
                close_time: T.nilable(Time),
                created_at: Time,
                customer_id: T.nilable(String),
                events_ingested: Integer,
                replace_existing_events: T::Boolean,
                reverted_at: T.nilable(Time),
                status: Orb::Models::Events::BackfillCreateResponse::Status::TaggedSymbol,
                timeframe_end: Time,
                timeframe_start: Time,
                deprecation_filter: T.nilable(String)
              }
            )
        end
        def to_hash; end

        # The status of the backfill.
        module Status
          extend Orb::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Events::BackfillCreateResponse::Status) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Events::BackfillCreateResponse::Status::TaggedSymbol) }

          PENDING = T.let(:pending, Orb::Models::Events::BackfillCreateResponse::Status::TaggedSymbol)
          REFLECTED = T.let(:reflected, Orb::Models::Events::BackfillCreateResponse::Status::TaggedSymbol)
          PENDING_REVERT =
            T.let(:pending_revert, Orb::Models::Events::BackfillCreateResponse::Status::TaggedSymbol)
          REVERTED = T.let(:reverted, Orb::Models::Events::BackfillCreateResponse::Status::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Events::BackfillCreateResponse::Status::TaggedSymbol]) }
          def self.values; end
        end
      end
    end
  end
end
