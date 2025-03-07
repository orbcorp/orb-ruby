# typed: strong

module Orb
  module Models
    module Events
      class BackfillFetchResponse < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

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

        sig { returns(T.nilable(String)) }
        def customer_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def customer_id=(_)
        end

        sig { returns(Integer) }
        def events_ingested
        end

        sig { params(_: Integer).returns(Integer) }
        def events_ingested=(_)
        end

        sig { returns(T::Boolean) }
        def replace_existing_events
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def replace_existing_events=(_)
        end

        sig { returns(T.nilable(Time)) }
        def reverted_at
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def reverted_at=(_)
        end

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

        sig { returns(T.nilable(String)) }
        def deprecation_filter
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def deprecation_filter=(_)
        end

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
            .void
        end
        def initialize(
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
