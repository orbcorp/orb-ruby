# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::WebhookEndpoints#create
    class WebhookEndpointCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute url
      #   The HTTPS URL that Orb sends webhook events to.
      #
      #   @return [String]
      required :url, String

      # @!attribute enabled_event_types
      #   The webhook event types to send to this endpoint. If omitted or null, all event
      #   types are sent.
      #
      #   @return [Array<String>, nil]
      optional :enabled_event_types, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute payload_style
      #   The payload style of the webhook events sent to this endpoint. If omitted or
      #   null, the account's default style is used.
      #
      #   @return [Symbol, Orb::Models::WebhookEndpointCreateParams::PayloadStyle, nil]
      optional :payload_style, enum: -> { Orb::WebhookEndpointCreateParams::PayloadStyle }, nil?: true

      # @!method initialize(url:, enabled_event_types: nil, payload_style: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::WebhookEndpointCreateParams} for more details.
      #
      #   @param url [String] The HTTPS URL that Orb sends webhook events to.
      #
      #   @param enabled_event_types [Array<String>, nil] The webhook event types to send to this endpoint. If omitted or null, all event
      #
      #   @param payload_style [Symbol, Orb::Models::WebhookEndpointCreateParams::PayloadStyle, nil] The payload style of the webhook events sent to this endpoint. If omitted or nul
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      # The payload style of the webhook events sent to this endpoint. If omitted or
      # null, the account's default style is used.
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
