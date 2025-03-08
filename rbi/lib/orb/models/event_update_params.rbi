# typed: strong

module Orb
  module Models
    class EventUpdateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(String) }
      def event_name
      end

      sig { params(_: String).returns(String) }
      def event_name=(_)
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
