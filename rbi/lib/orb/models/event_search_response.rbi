# typed: strong

module Orb
  module Models
    class EventSearchResponse < Orb::Internal::Type::BaseModel
      sig { returns(T::Array[Orb::Models::EventSearchResponse::Data]) }
      attr_accessor :data

      sig do
        params(data: T::Array[T.any(Orb::Models::EventSearchResponse::Data, Orb::Internal::AnyHash)])
          .returns(T.attached_class)
      end
      def self.new(data:); end

      sig { override.returns({data: T::Array[Orb::Models::EventSearchResponse::Data]}) }
      def to_hash; end

      class Data < Orb::Internal::Type::BaseModel
        # A unique value, generated by the client, that is used to de-duplicate events.
        # Exactly one event with a given idempotency key will be ingested, which allows
        # for safe request retries.
        sig { returns(String) }
        attr_accessor :id

        # The Orb Customer identifier
        sig { returns(T.nilable(String)) }
        attr_accessor :customer_id

        # A boolean indicating whether the event is currently deprecated.
        sig { returns(T::Boolean) }
        attr_accessor :deprecated

        # A name to meaningfully identify the action or event type.
        sig { returns(String) }
        attr_accessor :event_name

        # An alias for the Orb customer, whose mapping is specified when creating the
        # customer
        sig { returns(T.nilable(String)) }
        attr_accessor :external_customer_id

        # A dictionary of custom properties. Values in this dictionary must be numeric,
        # boolean, or strings. Nested dictionaries are disallowed.
        sig { returns(T.anything) }
        attr_accessor :properties

        # An ISO 8601 format date with no timezone offset (i.e. UTC). This should
        # represent the time that usage was recorded, and is particularly important to
        # attribute usage to a given billing period.
        sig { returns(Time) }
        attr_accessor :timestamp

        # The [Event](/core-concepts#event) resource represents a usage event that has
        # been created for a customer. Events are the core of Orb's usage-based billing
        # model, and are used to calculate the usage charges for a given billing period.
        sig do
          params(
            id: String,
            customer_id: T.nilable(String),
            deprecated: T::Boolean,
            event_name: String,
            external_customer_id: T.nilable(String),
            properties: T.anything,
            timestamp: Time
          )
            .returns(T.attached_class)
        end
        def self.new(
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
          override
            .returns(
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
