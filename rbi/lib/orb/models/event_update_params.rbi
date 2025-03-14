# typed: strong

module Orb
  module Models
    class EventUpdateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # A name to meaningfully identify the action or event type.
      sig { returns(String) }
      def event_name
      end

      sig { params(_: String).returns(String) }
      def event_name=(_)
      end

      # A dictionary of custom properties. Values in this dictionary must be numeric,
      #   boolean, or strings. Nested dictionaries are disallowed.
      sig { returns(T.anything) }
      def properties
      end

      sig { params(_: T.anything).returns(T.anything) }
      def properties=(_)
      end

      # An ISO 8601 format date with no timezone offset (i.e. UTC). This should
      #   represent the time that usage was recorded, and is particularly important to
      #   attribute usage to a given billing period.
      sig { returns(Time) }
      def timestamp
      end

      sig { params(_: Time).returns(Time) }
      def timestamp=(_)
      end

      # The Orb Customer identifier
      sig { returns(T.nilable(String)) }
      def customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def customer_id=(_)
      end

      # An alias for the Orb customer, whose mapping is specified when creating the
      #   customer
      sig { returns(T.nilable(String)) }
      def external_customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_customer_id=(_)
      end

      sig do
        params(
          event_name: String,
          properties: T.anything,
          timestamp: Time,
          customer_id: T.nilable(String),
          external_customer_id: T.nilable(String),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(event_name:, properties:, timestamp:, customer_id: nil, external_customer_id: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              event_name: String,
              properties: T.anything,
              timestamp: Time,
              customer_id: T.nilable(String),
              external_customer_id: T.nilable(String),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
