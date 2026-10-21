# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class InvoiceCostDataExportedStandardWebhookEvent < Orb::Internal::Type::BaseModel
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

        # @!attribute payload_style
        #   The serialization style this payload was rendered in, as configured on the
        #   endpoint.
        #
        #   @return [Symbol, Orb::Models::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::PayloadStyle]
        required :payload_style,
                 enum: -> { Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #
        #   @return [Orb::Models::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::Properties]
        required :properties, -> { Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::Properties }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, invoice:, payload_style:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::InvoiceCostDataExportedStandardWebhookEvent} for more
        #   details.
        #
        #   Issued when invoice cost data is exported.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param invoice [String]
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Orb::Models::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::Properties]
        #
        #   @param type [Symbol, Orb::Models::Webhooks::InvoiceCostDataExportedStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::InvoiceCostDataExportedStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::InvoiceCostDataExportedStandardWebhookEvent#properties
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
        # @see Orb::Models::Webhooks::InvoiceCostDataExportedStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          INVOICE_COST_DATA_EXPORTED = :"invoice.cost_data_exported"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
