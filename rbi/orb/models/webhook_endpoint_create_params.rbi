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

      sig do
        params(
          url: String,
          enabled_event_types: T.nilable(T::Array[String]),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The HTTPS URL that Orb sends webhook events to.
        url:,
        # The webhook event types to send to this endpoint. If omitted or null, all event
        # types are sent.
        enabled_event_types: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            url: String,
            enabled_event_types: T.nilable(T::Array[String]),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
