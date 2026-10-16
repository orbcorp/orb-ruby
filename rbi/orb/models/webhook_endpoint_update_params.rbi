# typed: strong

module Orb
  module Models
    class WebhookEndpointUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::WebhookEndpointUpdateParams, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :webhook_endpoint_id

      # The webhook event types to send to this endpoint. Null sends all event types;
      # omit to leave them unchanged.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :enabled_event_types

      # The HTTPS URL that Orb sends webhook events to.
      sig { returns(T.nilable(String)) }
      attr_accessor :url

      sig do
        params(
          webhook_endpoint_id: String,
          enabled_event_types: T.nilable(T::Array[String]),
          url: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        webhook_endpoint_id:,
        # The webhook event types to send to this endpoint. Null sends all event types;
        # omit to leave them unchanged.
        enabled_event_types: nil,
        # The HTTPS URL that Orb sends webhook events to.
        url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            webhook_endpoint_id: String,
            enabled_event_types: T.nilable(T::Array[String]),
            url: T.nilable(String),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
