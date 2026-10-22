# typed: strong

module Orb
  module Models
    class WebhookEndpointCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::WebhookEndpointCreateParams, Orb::Internal::AnyHash)
        end

      # The HTTPS URL that Orb sends webhook events to.
      sig { returns(String) }
      attr_accessor :url

      # The webhook event types to send to this endpoint. If omitted or null, all event
      # types are sent.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :enabled_event_types

      # The payload style of the webhook events sent to this endpoint. If omitted or
      # null, the account's default style is used.
      sig do
        returns(
          T.nilable(Orb::WebhookEndpointCreateParams::PayloadStyle::OrSymbol)
        )
      end
      attr_accessor :payload_style

      sig do
        params(
          url: String,
          enabled_event_types: T.nilable(T::Array[String]),
          payload_style:
            T.nilable(Orb::WebhookEndpointCreateParams::PayloadStyle::OrSymbol),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The HTTPS URL that Orb sends webhook events to.
        url:,
        # The webhook event types to send to this endpoint. If omitted or null, all event
        # types are sent.
        enabled_event_types: nil,
        # The payload style of the webhook events sent to this endpoint. If omitted or
        # null, the account's default style is used.
        payload_style: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            url: String,
            enabled_event_types: T.nilable(T::Array[String]),
            payload_style:
              T.nilable(
                Orb::WebhookEndpointCreateParams::PayloadStyle::OrSymbol
              ),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The payload style of the webhook events sent to this endpoint. If omitted or
      # null, the account's default style is used.
      module PayloadStyle
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::WebhookEndpointCreateParams::PayloadStyle)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPANDED =
          T.let(
            :expanded,
            Orb::WebhookEndpointCreateParams::PayloadStyle::TaggedSymbol
          )
        STANDARD =
          T.let(
            :standard,
            Orb::WebhookEndpointCreateParams::PayloadStyle::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::WebhookEndpointCreateParams::PayloadStyle::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
