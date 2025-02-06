# typed: strong

module Orb
  module Models
    class EventUpdateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            event_name: String,
            properties: T.anything,
            timestamp: Time,
            customer_id: T.nilable(String),
            external_customer_id: T.nilable(String)
          },
          Orb::RequestParameters::Shape
        )
      end

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
          request_options: Orb::RequestOpts
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

      sig { returns(Orb::Models::EventUpdateParams::Shape) }
      def to_h; end
    end
  end
end
