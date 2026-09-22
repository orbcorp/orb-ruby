# frozen_string_literal: true

module Orb
  module Models
    class DataExportsTransferErrorWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   @return [Orb::Models::DataExportsTransferErrorWebhookEvent::Properties]
      required :properties, -> { Orb::DataExportsTransferErrorWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::DataExportsTransferErrorWebhookEvent::Type]
      required :type, enum: -> { Orb::DataExportsTransferErrorWebhookEvent::Type }

      # @!method initialize(id:, created_at:, properties:, type:)
      #   Issued when a data export transfer fails.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::DataExportsTransferErrorWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::DataExportsTransferErrorWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::DataExportsTransferErrorWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute description
        #
        #   @return [String]
        required :description, String

        # @!attribute destination_name
        #
        #   @return [String]
        required :destination_name, String

        # @!attribute resources
        #
        #   @return [Array<String>]
        required :resources, Orb::Internal::Type::ArrayOf[String]

        # @!attribute rows_transferred
        #
        #   @return [Integer]
        required :rows_transferred, Integer

        # @!attribute transfer_blamed_party
        #
        #   @return [String]
        required :transfer_blamed_party, String

        # @!attribute transfer_ended_at
        #
        #   @return [Time]
        required :transfer_ended_at, Time

        # @!attribute transfer_started_at
        #
        #   @return [Time]
        required :transfer_started_at, Time

        # @!method initialize(description:, destination_name:, resources:, rows_transferred:, transfer_blamed_party:, transfer_ended_at:, transfer_started_at:)
        #   @param description [String]
        #   @param destination_name [String]
        #   @param resources [Array<String>]
        #   @param rows_transferred [Integer]
        #   @param transfer_blamed_party [String]
        #   @param transfer_ended_at [Time]
        #   @param transfer_started_at [Time]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::DataExportsTransferErrorWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        DATA_EXPORTS_TRANSFER_ERROR = :"data_exports.transfer_error"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
