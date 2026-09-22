# frozen_string_literal: true

module Orb
  module Models
    class IngestionUnmatchedCustomerIDsWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   @return [Orb::Models::IngestionUnmatchedCustomerIDsWebhookEvent::Properties]
      required :properties, -> { Orb::IngestionUnmatchedCustomerIDsWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::IngestionUnmatchedCustomerIDsWebhookEvent::Type]
      required :type, enum: -> { Orb::IngestionUnmatchedCustomerIDsWebhookEvent::Type }

      # @!method initialize(id:, created_at:, properties:, type:)
      #   Issued when ingestion events reference unmatched customer IDs.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::IngestionUnmatchedCustomerIDsWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::IngestionUnmatchedCustomerIDsWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::IngestionUnmatchedCustomerIDsWebhookEvent#properties
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
      # @see Orb::Models::IngestionUnmatchedCustomerIDsWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        INGESTION_UNMATCHED_CUSTOMER_IDS = :"ingestion.unmatched_customer_ids"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
