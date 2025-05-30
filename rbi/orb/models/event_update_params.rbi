# typed: strong

module Orb
  module Models
    class EventUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::EventUpdateParams, Orb::Internal::AnyHash) }

      # A name to meaningfully identify the action or event type.
      sig { returns(String) }
      attr_accessor :event_name

      # A dictionary of custom properties. Values in this dictionary must be numeric,
      # boolean, or strings. Nested dictionaries are disallowed.
      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :properties

      # An ISO 8601 format date with no timezone offset (i.e. UTC). This should
      # represent the time that usage was recorded, and is particularly important to
      # attribute usage to a given billing period.
      sig { returns(Time) }
      attr_accessor :timestamp

      # The Orb Customer identifier
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_id

      # An alias for the Orb customer, whose mapping is specified when creating the
      # customer
      sig { returns(T.nilable(String)) }
      attr_accessor :external_customer_id

      sig do
        params(
          event_name: String,
          properties: T::Hash[Symbol, T.anything],
          timestamp: Time,
          customer_id: T.nilable(String),
          external_customer_id: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A name to meaningfully identify the action or event type.
        event_name:,
        # A dictionary of custom properties. Values in this dictionary must be numeric,
        # boolean, or strings. Nested dictionaries are disallowed.
        properties:,
        # An ISO 8601 format date with no timezone offset (i.e. UTC). This should
        # represent the time that usage was recorded, and is particularly important to
        # attribute usage to a given billing period.
        timestamp:,
        # The Orb Customer identifier
        customer_id: nil,
        # An alias for the Orb customer, whose mapping is specified when creating the
        # customer
        external_customer_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            event_name: String,
            properties: T::Hash[Symbol, T.anything],
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
