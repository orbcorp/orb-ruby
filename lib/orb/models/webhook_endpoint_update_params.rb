# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::WebhookEndpoints#update
    class WebhookEndpointUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute webhook_endpoint_id
      #
      #   @return [String]
      required :webhook_endpoint_id, String

      # @!attribute enabled_event_types
      #   The webhook event types to send to this endpoint. Null sends all event types;
      #   omit to leave them unchanged.
      #
      #   @return [Array<String>, nil]
      optional :enabled_event_types, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute payload_style
      #   The payload style of the webhook events sent to this endpoint. Applies to events
      #   created after the change; omit to leave it unchanged.
      #
      #   @return [Symbol, Orb::Models::WebhookEndpointUpdateParams::PayloadStyle, nil]
      optional :payload_style, enum: -> { Orb::WebhookEndpointUpdateParams::PayloadStyle }, nil?: true

      # @!attribute url
      #   The HTTPS URL that Orb sends webhook events to.
      #
      #   @return [String, nil]
      optional :url, String, nil?: true

      # @!method initialize(webhook_endpoint_id:, enabled_event_types: nil, payload_style: nil, url: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::WebhookEndpointUpdateParams} for more details.
      #
      #   @param webhook_endpoint_id [String]
      #
      #   @param enabled_event_types [Array<String>, nil] The webhook event types to send to this endpoint. Null sends all event types; om
      #
      #   @param payload_style [Symbol, Orb::Models::WebhookEndpointUpdateParams::PayloadStyle, nil] The payload style of the webhook events sent to this endpoint. Applies to events
      #
      #   @param url [String, nil] The HTTPS URL that Orb sends webhook events to.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      # The payload style of the webhook events sent to this endpoint. Applies to events
      # created after the change; omit to leave it unchanged.
      module PayloadStyle
        extend Orb::Internal::Type::Enum

        EXPANDED = :expanded
        STANDARD = :standard

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
