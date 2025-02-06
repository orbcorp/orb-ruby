# typed: strong

module Orb
  module Models
    class EventUpdateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(String) }
      attr_accessor :event_name

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
          properties: T.anything,
          timestamp: Time,
          customer_id: T.nilable(String),
          external_customer_id: T.nilable(String),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        event_name:,
        properties:,
        timestamp:,
        customer_id: nil,
        external_customer_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
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
