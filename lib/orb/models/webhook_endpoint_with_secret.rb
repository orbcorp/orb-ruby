# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::WebhookEndpoints#create
    class WebhookEndpointWithSecret < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The Orb-assigned unique identifier for the webhook endpoint.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The time the webhook endpoint was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute enabled
      #   Whether Orb sends webhook events to this endpoint.
      #
      #   @return [Boolean]
      required :enabled, Orb::Internal::Type::Boolean

      # @!attribute enabled_event_types
      #   The webhook event types sent to this endpoint. If null, all event types are
      #   sent.
      #
      #   @return [Array<String>, nil]
      required :enabled_event_types, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute payload_style
      #   The payload style of the webhook events sent to this endpoint. `standard`
      #   payloads include each object's own fields and references to related objects,
      #   without invoice line items or subscription price intervals. `expanded` payloads
      #   include every object fully expanded.
      #
      #   @return [Symbol, Orb::Models::WebhookEndpointWithSecret::PayloadStyle]
      required :payload_style, enum: -> { Orb::WebhookEndpointWithSecret::PayloadStyle }

      # @!attribute secret
      #   The secret used to sign the webhook events sent to this endpoint. Only returned
      #   when the endpoint is created.
      #
      #   @return [String]
      required :secret, String

      # @!attribute url
      #   The HTTPS URL that Orb sends webhook events to.
      #
      #   @return [String]
      required :url, String

      # @!method initialize(id:, created_at:, enabled:, enabled_event_types:, payload_style:, secret:, url:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::WebhookEndpointWithSecret} for more details.
      #
      #   A newly created webhook endpoint, along with the secret used to sign its webhook
      #   events.
      #
      #   @param id [String] The Orb-assigned unique identifier for the webhook endpoint.
      #
      #   @param created_at [Time] The time the webhook endpoint was created.
      #
      #   @param enabled [Boolean] Whether Orb sends webhook events to this endpoint.
      #
      #   @param enabled_event_types [Array<String>, nil] The webhook event types sent to this endpoint. If null, all event types are sent
      #
      #   @param payload_style [Symbol, Orb::Models::WebhookEndpointWithSecret::PayloadStyle] The payload style of the webhook events sent to this endpoint. `standard` payloa
      #
      #   @param secret [String] The secret used to sign the webhook events sent to this endpoint. Only returned
      #
      #   @param url [String] The HTTPS URL that Orb sends webhook events to.

      # The payload style of the webhook events sent to this endpoint. `standard`
      # payloads include each object's own fields and references to related objects,
      # without invoice line items or subscription price intervals. `expanded` payloads
      # include every object fully expanded.
      #
      # @see Orb::Models::WebhookEndpointWithSecret#payload_style
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
