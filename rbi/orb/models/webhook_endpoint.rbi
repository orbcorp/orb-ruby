# typed: strong

module Orb
  module Models
    class WebhookEndpoint < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::WebhookEndpoint, Orb::Internal::AnyHash) }

      # The Orb-assigned unique identifier for the webhook endpoint.
      sig { returns(String) }
      attr_accessor :id

      # The time the webhook endpoint was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Whether Orb sends webhook events to this endpoint.
      sig { returns(T::Boolean) }
      attr_accessor :enabled

      # The webhook event types sent to this endpoint. If null, all event types are
      # sent.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :enabled_event_types

      # The HTTPS URL that Orb sends webhook events to.
      sig { returns(String) }
      attr_accessor :url

      # A webhook endpoint is an HTTPS URL that Orb sends
      # [webhook events](/integrations-and-exports/webhooks) to.
      sig do
        params(
          id: String,
          created_at: Time,
          enabled: T::Boolean,
          enabled_event_types: T.nilable(T::Array[String]),
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The Orb-assigned unique identifier for the webhook endpoint.
        id:,
        # The time the webhook endpoint was created.
        created_at:,
        # Whether Orb sends webhook events to this endpoint.
        enabled:,
        # The webhook event types sent to this endpoint. If null, all event types are
        # sent.
        enabled_event_types:,
        # The HTTPS URL that Orb sends webhook events to.
        url:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            enabled: T::Boolean,
            enabled_event_types: T.nilable(T::Array[String]),
            url: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
