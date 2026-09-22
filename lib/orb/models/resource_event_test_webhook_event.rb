# frozen_string_literal: true

module Orb
  module Models
    class ResourceEventTestWebhookEvent < Orb::Internal::Type::BaseModel
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

      # @!attribute properties
      #
      #   @return [Orb::Models::ResourceEventTestWebhookEvent::Properties]
      required :properties, -> { Orb::ResourceEventTestWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::ResourceEventTestWebhookEvent::Type]
      required :type, enum: -> { Orb::ResourceEventTestWebhookEvent::Type }

      # @!method initialize(id:, created_at:, properties:, type:)
      #   Issued when a test webhook is sent.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::ResourceEventTestWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::ResourceEventTestWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::ResourceEventTestWebhookEvent#properties
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
      # @see Orb::Models::ResourceEventTestWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        RESOURCE_EVENT_TEST = :"resource_event.test"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
