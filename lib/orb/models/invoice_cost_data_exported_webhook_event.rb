# frozen_string_literal: true

module Orb
  module Models
    class InvoiceCostDataExportedWebhookEvent < Orb::Internal::Type::BaseModel
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

      # @!attribute invoice
      #
      #   @return [String]
      required :invoice, String

      # @!attribute properties
      #
      #   @return [Orb::Models::InvoiceCostDataExportedWebhookEvent::Properties]
      required :properties, -> { Orb::InvoiceCostDataExportedWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::InvoiceCostDataExportedWebhookEvent::Type]
      required :type, enum: -> { Orb::InvoiceCostDataExportedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, invoice:, properties:, type:)
      #   Issued when invoice cost data is exported.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param invoice [String]
      #
      #   @param properties [Orb::Models::InvoiceCostDataExportedWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::InvoiceCostDataExportedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::InvoiceCostDataExportedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute exported_date
        #
        #   @return [Time]
        required :exported_date, Time

        # @!attribute s3_bucket
        #
        #   @return [String]
        required :s3_bucket, String

        # @!attribute s3_key
        #
        #   @return [String]
        required :s3_key, String

        # @!method initialize(exported_date:, s3_bucket:, s3_key:)
        #   @param exported_date [Time]
        #   @param s3_bucket [String]
        #   @param s3_key [String]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::InvoiceCostDataExportedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        INVOICE_COST_DATA_EXPORTED = :"invoice.cost_data_exported"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
