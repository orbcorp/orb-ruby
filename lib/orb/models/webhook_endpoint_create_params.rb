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

      # @!method initialize(url:, enabled_event_types: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::WebhookEndpointCreateParams} for more details.
      #
      #   @param url [String] The HTTPS URL that Orb sends webhook events to.
      #
      #   @param enabled_event_types [Array<String>, nil] The webhook event types to send to this endpoint. If omitted or null, all event
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
