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

      # The payload style of the webhook events sent to this endpoint. `standard`
      # payloads include each object's own fields and references to related objects,
      # without invoice line items or subscription price intervals. `expanded` payloads
      # include every object fully expanded.
      sig do
        returns(Orb::WebhookEndpointWithSecret::PayloadStyle::TaggedSymbol)
      end
      attr_accessor :payload_style

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
          payload_style: Orb::WebhookEndpointWithSecret::PayloadStyle::OrSymbol,
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
        # The payload style of the webhook events sent to this endpoint. `standard`
        # payloads include each object's own fields and references to related objects,
        # without invoice line items or subscription price intervals. `expanded` payloads
        # include every object fully expanded.
        payload_style:,
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
            payload_style:
              Orb::WebhookEndpointWithSecret::PayloadStyle::TaggedSymbol,
            secret: String,
            url: String
          }
        )
      end
      def to_hash
      end

      # The payload style of the webhook events sent to this endpoint. `standard`
      # payloads include each object's own fields and references to related objects,
      # without invoice line items or subscription price intervals. `expanded` payloads
      # include every object fully expanded.
      module PayloadStyle
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::WebhookEndpointWithSecret::PayloadStyle)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPANDED =
          T.let(
            :expanded,
            Orb::WebhookEndpointWithSecret::PayloadStyle::TaggedSymbol
          )
        STANDARD =
          T.let(
            :standard,
            Orb::WebhookEndpointWithSecret::PayloadStyle::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::WebhookEndpointWithSecret::PayloadStyle::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
