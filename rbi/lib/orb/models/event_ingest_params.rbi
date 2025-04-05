# typed: strong

module Orb
  module Models
    class EventIngestParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      sig { returns(T::Array[Orb::Models::EventIngestParams::Event]) }
      attr_accessor :events

      # If this ingestion request is part of a backfill, this parameter ties the
      #   ingested events to the backfill
      sig { returns(T.nilable(String)) }
      attr_accessor :backfill_id

      # Flag to enable additional debug information in the endpoint response
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :debug

      sig { params(debug: T::Boolean).void }
      attr_writer :debug

      sig do
        params(
          events: T::Array[T.any(Orb::Models::EventIngestParams::Event, Orb::Internal::AnyHash)],
          backfill_id: T.nilable(String),
          debug: T::Boolean,
          request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(events:, backfill_id: nil, debug: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              events: T::Array[Orb::Models::EventIngestParams::Event],
              backfill_id: T.nilable(String),
              debug: T::Boolean,
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash; end

      class Event < Orb::Internal::Type::BaseModel
        # A name to meaningfully identify the action or event type.
        sig { returns(String) }
        attr_accessor :event_name

        # A unique value, generated by the client, that is used to de-duplicate events.
        #   Exactly one event with a given idempotency key will be ingested, which allows
        #   for safe request retries.
        sig { returns(String) }
        attr_accessor :idempotency_key

        # A dictionary of custom properties. Values in this dictionary must be numeric,
        #   boolean, or strings. Nested dictionaries are disallowed.
        sig { returns(T.anything) }
        attr_accessor :properties

        # An ISO 8601 format date with no timezone offset (i.e. UTC). This should
        #   represent the time that usage was recorded, and is particularly important to
        #   attribute usage to a given billing period.
        sig { returns(Time) }
        attr_accessor :timestamp

        # The Orb Customer identifier
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_id

        # An alias for the Orb customer, whose mapping is specified when creating the
        #   customer
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
          )
            .returns(T.attached_class)
        end
        def self.new(
          event_name:,
          idempotency_key:,
          properties:,
          timestamp:,
          customer_id: nil,
          external_customer_id: nil
        )
        end

        sig do
          override
            .returns(
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
