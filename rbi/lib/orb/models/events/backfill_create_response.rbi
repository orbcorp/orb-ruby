# typed: strong

module Orb
  module Models
    module Events
      class BackfillCreateResponse < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        # If in the future, the time at which the backfill will automatically close. If in
        #   the past, the time at which the backfill was closed.
        sig { returns(T.nilable(Time)) }
        def close_time
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def close_time=(_)
        end

        sig { returns(Time) }
        def created_at
        end

        sig { params(_: Time).returns(Time) }
        def created_at=(_)
        end

        # The Orb-generated ID of the customer to which this backfill is scoped. If
        #   `null`, this backfill is scoped to all customers.
        sig { returns(T.nilable(String)) }
        def customer_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def customer_id=(_)
        end

        # The number of events ingested in this backfill.
        sig { returns(Integer) }
        def events_ingested
        end

        sig { params(_: Integer).returns(Integer) }
        def events_ingested=(_)
        end

        # If `true`, existing events in the backfill's timeframe will be replaced with the
        #   newly ingested events associated with the backfill. If `false`, newly ingested
        #   events will be added to the existing events.
        sig { returns(T::Boolean) }
        def replace_existing_events
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def replace_existing_events=(_)
        end

        # The time at which this backfill was reverted.
        sig { returns(T.nilable(Time)) }
        def reverted_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def reverted_at=(_)
        end

        # The status of the backfill.
        sig { returns(Symbol) }
        def status
        end

        sig { params(_: Symbol).returns(Symbol) }
        def status=(_)
        end

        sig { returns(Time) }
        def timeframe_end
        end

        sig { params(_: Time).returns(Time) }
        def timeframe_end=(_)
        end

        sig { returns(Time) }
        def timeframe_start
        end

        sig { params(_: Time).returns(Time) }
        def timeframe_start=(_)
        end

        # A boolean
        #   [computed property](/extensibility/advanced-metrics#computed-properties) used to
        #   filter the set of events to deprecate
        sig { returns(T.nilable(String)) }
        def deprecation_filter
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def deprecation_filter=(_)
        end

        # A backfill represents an update to historical usage data, adding or replacing
        #   events in a timeframe.
        sig do
          params(
            id: String,
            close_time: T.nilable(Time),
            created_at: Time,
            customer_id: T.nilable(String),
            events_ingested: Integer,
            replace_existing_events: T::Boolean,
            reverted_at: T.nilable(Time),
            status: Symbol,
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
        )
        end

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
                status: Symbol,
                timeframe_end: Time,
                timeframe_start: Time,
                deprecation_filter: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        # The status of the backfill.
        class Status < Orb::Enum
          abstract!

          PENDING = :pending
          REFLECTED = :reflected
          PENDING_REVERT = :pending_revert
          REVERTED = :reverted

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
