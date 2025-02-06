# typed: strong

module Orb
  module Models
    class EventSearchResponse < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::EventSearchResponse::Data]) }
      attr_accessor :data

      sig { params(data: T::Array[Orb::Models::EventSearchResponse::Data]).void }
      def initialize(data:); end

      sig { override.returns({data: T::Array[Orb::Models::EventSearchResponse::Data]}) }
      def to_hash; end

      class Data < Orb::BaseModel
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

        sig do
          override.returns(
            {
              id: String,
              customer_id: T.nilable(String),
              deprecated: T::Boolean,
              event_name: String,
              external_customer_id: T.nilable(String),
              properties: T.anything,
              timestamp: Time
            }
          )
        end
        def to_hash; end
      end
    end
  end
end
