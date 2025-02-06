# typed: strong

module Orb
  module Models
    class EventIngestParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T::Array[Orb::Models::EventIngestParams::Event]) }
      attr_accessor :events

      sig { returns(T.nilable(String)) }
      attr_accessor :backfill_id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :debug

      sig { params(debug: T::Boolean).void }
      attr_writer :debug

      sig do
        params(
          events: T::Array[Orb::Models::EventIngestParams::Event],
          backfill_id: T.nilable(String),
          debug: T::Boolean,
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(events:, backfill_id: nil, debug: nil, request_options: {}); end

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
      def to_hash; end

      class Event < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :event_name

        sig { returns(String) }
        attr_accessor :idempotency_key

        sig { returns(T.anything) }
        attr_accessor :properties

        sig { returns(Time) }
        attr_accessor :timestamp

        sig { returns(T.nilable(String)) }
        attr_accessor :customer_id

        sig { returns(T.nilable(String)) }
        attr_accessor :external_customer_id

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
        def to_hash; end
      end
    end
  end
end
