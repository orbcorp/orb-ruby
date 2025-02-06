# typed: strong

module Orb
  module Models
    class EventIngestParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            events: T::Array[Orb::Models::EventIngestParams::Event],
            backfill_id: T.nilable(String),
            debug: T::Boolean
          },
          Orb::RequestParameters::Shape
        )
      end

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
          request_options: Orb::RequestOpts
        ).void
      end
      def initialize(events:, backfill_id: nil, debug: nil, request_options: {}); end

      sig { returns(Orb::Models::EventIngestParams::Shape) }
      def to_h; end

      class Event < Orb::BaseModel
        Shape = T.type_alias do
          {
            event_name: String,
            idempotency_key: String,
            properties: T.anything,
            timestamp: Time,
            customer_id: T.nilable(String),
            external_customer_id: T.nilable(String)
          }
        end

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

        sig { returns(Orb::Models::EventIngestParams::Event::Shape) }
        def to_h; end
      end
    end
  end
end
