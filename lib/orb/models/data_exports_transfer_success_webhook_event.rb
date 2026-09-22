# frozen_string_literal: true

module Orb
  module Models
    class DataExportsTransferSuccessWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   @return [Orb::Models::DataExportsTransferSuccessWebhookEvent::Properties]
      required :properties, -> { Orb::DataExportsTransferSuccessWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::DataExportsTransferSuccessWebhookEvent::Type]
      required :type, enum: -> { Orb::DataExportsTransferSuccessWebhookEvent::Type }

      # @!method initialize(id:, created_at:, properties:, type:)
      #   Issued when a data export transfer succeeds.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::DataExportsTransferSuccessWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::DataExportsTransferSuccessWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::DataExportsTransferSuccessWebhookEvent#properties
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

        # @!attribute transfer_ended_at
        #
        #   @return [Time]
        required :transfer_ended_at, Time

        # @!attribute transfer_started_at
        #
        #   @return [Time]
        required :transfer_started_at, Time

        # @!method initialize(description:, destination_name:, resources:, rows_transferred:, transfer_ended_at:, transfer_started_at:)
        #   @param description [String]
        #   @param destination_name [String]
        #   @param resources [Array<String>]
        #   @param rows_transferred [Integer]
        #   @param transfer_ended_at [Time]
        #   @param transfer_started_at [Time]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::DataExportsTransferSuccessWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        DATA_EXPORTS_TRANSFER_SUCCESS = :"data_exports.transfer_success"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
