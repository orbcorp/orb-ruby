# frozen_string_literal: true

module Orb
  module Models
    class InvoiceDueDateRecalculationCompletedWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   @return [Orb::Models::InvoiceDueDateRecalculationCompletedWebhookEvent::Properties]
      required :properties, -> { Orb::InvoiceDueDateRecalculationCompletedWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::InvoiceDueDateRecalculationCompletedWebhookEvent::Type]
      required :type, enum: -> { Orb::InvoiceDueDateRecalculationCompletedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, properties:, type:)
      #   Issued when an invoice due date recalculation is completed.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::InvoiceDueDateRecalculationCompletedWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::InvoiceDueDateRecalculationCompletedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::InvoiceDueDateRecalculationCompletedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute completed_at
        #
        #   @return [Time]
        required :completed_at, Time

        # @!attribute started_at
        #
        #   @return [Time]
        required :started_at, Time

        # @!method initialize(completed_at:, started_at:)
        #   @param completed_at [Time]
        #   @param started_at [Time]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::InvoiceDueDateRecalculationCompletedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        INVOICE_DUE_DATE_RECALCULATION_COMPLETED = :"invoice_due_date_recalculation.completed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
