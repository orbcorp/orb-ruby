# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class ResourceEventTestStandardWebhookEvent < Orb::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of this webhook event.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The time at which this event was created, to the second.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute payload_style
        #   The serialization style this payload was rendered in, as configured on the
        #   endpoint.
        #
        #   @return [Symbol, Orb::Models::Webhooks::ResourceEventTestStandardWebhookEvent::PayloadStyle]
        required :payload_style, enum: -> { Orb::Webhooks::ResourceEventTestStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #
        #   @return [Orb::Models::Webhooks::ResourceEventTestStandardWebhookEvent::Properties]
        required :properties, -> { Orb::Webhooks::ResourceEventTestStandardWebhookEvent::Properties }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::ResourceEventTestStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::ResourceEventTestStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, payload_style:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::ResourceEventTestStandardWebhookEvent} for more details.
        #
        #   Issued when a test webhook is sent.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::ResourceEventTestStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Orb::Models::Webhooks::ResourceEventTestStandardWebhookEvent::Properties]
        #
        #   @param type [Symbol, Orb::Models::Webhooks::ResourceEventTestStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::ResourceEventTestStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::ResourceEventTestStandardWebhookEvent#properties
        class Properties < Orb::Internal::Type::BaseModel
          # @!attribute message
          #
          #   @return [String, nil]
          optional :message, String

          # @!method initialize(message: nil)
          #   @param message [String]
        end

        # The event this payload describes.
        #
        # @see Orb::Models::Webhooks::ResourceEventTestStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          RESOURCE_EVENT_TEST = :"resource_event.test"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
