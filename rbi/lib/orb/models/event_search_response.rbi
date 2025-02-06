# typed: strong

module Orb
  module Models
    class EventSearchResponse < Orb::BaseModel
      Shape = T.type_alias { {data: T::Array[Orb::Models::EventSearchResponse::Data]} }

      sig { returns(T::Array[Orb::Models::EventSearchResponse::Data]) }
      attr_accessor :data

      sig { params(data: T::Array[Orb::Models::EventSearchResponse::Data]).void }
      def initialize(data:); end

      sig { returns(Orb::Models::EventSearchResponse::Shape) }
      def to_h; end

      class Data < Orb::BaseModel
        Shape = T.type_alias do
          {
            id: String,
            customer_id: T.nilable(String),
            deprecated: T::Boolean,
            event_name: String,
            external_customer_id: T.nilable(String),
            properties: T.anything,
            timestamp: Time
          }
        end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :customer_id

        sig { returns(T::Boolean) }
        attr_accessor :deprecated

        sig { returns(String) }
        attr_accessor :event_name

        sig { returns(T.nilable(String)) }
        attr_accessor :external_customer_id

        sig { returns(T.anything) }
        attr_accessor :properties

        sig { returns(Time) }
        attr_accessor :timestamp

        sig do
          params(
            id: String,
            customer_id: T.nilable(String),
            deprecated: T::Boolean,
            event_name: String,
            external_customer_id: T.nilable(String),
            properties: T.anything,
            timestamp: Time
          ).void
        end
        def initialize(
          id:,
          customer_id:,
          deprecated:,
          event_name:,
          external_customer_id:,
          properties:,
          timestamp:
        )
        end

        sig { returns(Orb::Models::EventSearchResponse::Data::Shape) }
        def to_h; end
      end
    end
  end
end
