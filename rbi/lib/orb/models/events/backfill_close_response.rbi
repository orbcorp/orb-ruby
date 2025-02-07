# typed: strong

module Orb
  module Models
    module Events
      class BackfillCloseResponse < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(Time)) }
        attr_accessor :close_time

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(String)) }
        attr_accessor :customer_id

        sig { returns(Integer) }
        attr_accessor :events_ingested

        sig { returns(T::Boolean) }
        attr_accessor :replace_existing_events

        sig { returns(T.nilable(Time)) }
        attr_accessor :reverted_at

        sig { returns(Symbol) }
        attr_accessor :status

        sig { returns(Time) }
        attr_accessor :timeframe_end

        sig { returns(Time) }
        attr_accessor :timeframe_start

        sig { returns(T.nilable(String)) }
        attr_accessor :deprecation_filter

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
          ).void
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
          override.returns(
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

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
