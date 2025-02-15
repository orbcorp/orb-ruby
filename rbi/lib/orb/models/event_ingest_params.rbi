# typed: strong

module Orb
  module Models
    class EventIngestParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T::Array[Orb::Models::EventIngestParams::Event]) }
      def events
      end

      sig do
        params(_: T::Array[Orb::Models::EventIngestParams::Event]).returns(T::Array[Orb::Models::EventIngestParams::Event])
      end
      def events=(_)
      end

      sig { returns(T.nilable(String)) }
      def backfill_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def backfill_id=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def debug
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def debug=(_)
      end

      sig do
        params(
          events: T::Array[Orb::Models::EventIngestParams::Event],
          backfill_id: T.nilable(String),
          debug: T::Boolean,
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(events:, backfill_id: nil, debug: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            events: T::Array[Orb::Models::EventIngestParams::Event],
            backfill_id: T.nilable(String),
            debug: T::Boolean,
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Event < Orb::BaseModel
        sig { returns(String) }
        def event_name
        end

        sig { params(_: String).returns(String) }
        def event_name=(_)
        end

        sig { returns(String) }
        def idempotency_key
        end

        sig { params(_: String).returns(String) }
        def idempotency_key=(_)
        end

        sig { returns(T.anything) }
        def properties
        end

        sig { params(_: T.anything).returns(T.anything) }
        def properties=(_)
        end

        sig { returns(Time) }
        def timestamp
        end

        sig { params(_: Time).returns(Time) }
        def timestamp=(_)
        end

        sig { returns(T.nilable(String)) }
        def customer_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def customer_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def external_customer_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_customer_id=(_)
        end

        sig do
          params(
            event_name: String,
            idempotency_key: String,
            properties: T.anything,
            timestamp: Time,
            customer_id: T.nilable(String),
            external_customer_id: T.nilable(String)
          ).void
        end
        def initialize(
          event_name:,
          idempotency_key:,
          properties:,
          timestamp:,
          customer_id: nil,
          external_customer_id: nil
        )
        end

        sig do
          override.returns(
            {
              event_name: String,
              idempotency_key: String,
              properties: T.anything,
              timestamp: Time,
              customer_id: T.nilable(String),
              external_customer_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
