# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class InvoiceDueDateRecalculationCompletedStandardWebhookEvent < Orb::Internal::Type::BaseModel
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
        #   @return [Symbol, Orb::Models::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::PayloadStyle]
        required :payload_style,
                 enum: -> { Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #
        #   @return [Orb::Models::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::Properties]
        required :properties,
                 -> { Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::Properties }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, payload_style:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent}
        #   for more details.
        #
        #   Issued when an invoice due date recalculation is completed.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Orb::Models::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::Properties]
        #
        #   @param type [Symbol, Orb::Models::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent#properties
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
        # @see Orb::Models::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          INVOICE_DUE_DATE_RECALCULATION_COMPLETED = :"invoice_due_date_recalculation.completed"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
