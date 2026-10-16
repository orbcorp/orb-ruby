# typed: strong

module Orb
  module Models
    class WebhookEndpointWithSecret < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::WebhookEndpointWithSecret, Orb::Internal::AnyHash)
        end

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

      # The secret used to sign the webhook events sent to this endpoint. Only returned
      # when the endpoint is created.
      sig { returns(String) }
      attr_accessor :secret

      # The HTTPS URL that Orb sends webhook events to.
      sig { returns(String) }
      attr_accessor :url

      # A newly created webhook endpoint, along with the secret used to sign its webhook
      # events.
      sig do
        params(
          id: String,
          created_at: Time,
          enabled: T::Boolean,
          enabled_event_types: T.nilable(T::Array[String]),
          secret: String,
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
        # The secret used to sign the webhook events sent to this endpoint. Only returned
        # when the endpoint is created.
        secret:,
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
            secret: String,
            url: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
