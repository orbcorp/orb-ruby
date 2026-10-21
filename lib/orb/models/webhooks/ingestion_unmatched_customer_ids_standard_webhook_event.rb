# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class IngestionUnmatchedCustomerIDsStandardWebhookEvent < Orb::Internal::Type::BaseModel
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
        #   @return [Symbol, Orb::Models::Webhooks::IngestionUnmatchedCustomerIDsStandardWebhookEvent::PayloadStyle]
        required :payload_style,
                 enum: -> { Orb::Webhooks::IngestionUnmatchedCustomerIDsStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #
        #   @return [Orb::Models::Webhooks::IngestionUnmatchedCustomerIDsStandardWebhookEvent::Properties]
        required :properties, -> { Orb::Webhooks::IngestionUnmatchedCustomerIDsStandardWebhookEvent::Properties }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::IngestionUnmatchedCustomerIDsStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::IngestionUnmatchedCustomerIDsStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, payload_style:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::IngestionUnmatchedCustomerIDsStandardWebhookEvent} for
        #   more details.
        #
        #   Issued when ingestion events reference unmatched customer IDs.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::IngestionUnmatchedCustomerIDsStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Orb::Models::Webhooks::IngestionUnmatchedCustomerIDsStandardWebhookEvent::Properties]
        #
        #   @param type [Symbol, Orb::Models::Webhooks::IngestionUnmatchedCustomerIDsStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::IngestionUnmatchedCustomerIDsStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::IngestionUnmatchedCustomerIDsStandardWebhookEvent#properties
        class Properties < Orb::Internal::Type::BaseModel
          # @!attribute external_customer_ids
          #
          #   @return [Array<String>]
          required :external_customer_ids, Orb::Internal::Type::ArrayOf[String]

          # @!method initialize(external_customer_ids:)
          #   @param external_customer_ids [Array<String>]
        end

        # The event this payload describes.
        #
        # @see Orb::Models::Webhooks::IngestionUnmatchedCustomerIDsStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          INGESTION_UNMATCHED_CUSTOMER_IDS = :"ingestion.unmatched_customer_ids"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
