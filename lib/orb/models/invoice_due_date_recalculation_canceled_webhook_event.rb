# frozen_string_literal: true

module Orb
  module Models
    class InvoiceDueDateRecalculationCanceledWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   @return [Orb::Models::InvoiceDueDateRecalculationCanceledWebhookEvent::Properties]
      required :properties, -> { Orb::InvoiceDueDateRecalculationCanceledWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::InvoiceDueDateRecalculationCanceledWebhookEvent::Type]
      required :type, enum: -> { Orb::InvoiceDueDateRecalculationCanceledWebhookEvent::Type }

      # @!method initialize(id:, created_at:, properties:, type:)
      #   Issued when an invoice due date recalculation is canceled.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::InvoiceDueDateRecalculationCanceledWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::InvoiceDueDateRecalculationCanceledWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::InvoiceDueDateRecalculationCanceledWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute canceled_at
        #
        #   @return [Time]
        required :canceled_at, Time

        # @!attribute started_at
        #
        #   @return [Time]
        required :started_at, Time

        # @!method initialize(canceled_at:, started_at:)
        #   @param canceled_at [Time]
        #   @param started_at [Time]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::InvoiceDueDateRecalculationCanceledWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        INVOICE_DUE_DATE_RECALCULATION_CANCELED = :"invoice_due_date_recalculation.canceled"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
