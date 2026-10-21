# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class InvoiceDueDateRecalculationCanceledStandardWebhookEvent < Orb::Internal::Type::BaseModel
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
        #   @return [Symbol, Orb::Models::Webhooks::InvoiceDueDateRecalculationCanceledStandardWebhookEvent::PayloadStyle]
        required :payload_style,
                 enum: -> { Orb::Webhooks::InvoiceDueDateRecalculationCanceledStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #
        #   @return [Orb::Models::Webhooks::InvoiceDueDateRecalculationCanceledStandardWebhookEvent::Properties]
        required :properties,
                 -> { Orb::Webhooks::InvoiceDueDateRecalculationCanceledStandardWebhookEvent::Properties }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::InvoiceDueDateRecalculationCanceledStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::InvoiceDueDateRecalculationCanceledStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, payload_style:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::InvoiceDueDateRecalculationCanceledStandardWebhookEvent}
        #   for more details.
        #
        #   Issued when an invoice due date recalculation is canceled.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::InvoiceDueDateRecalculationCanceledStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Orb::Models::Webhooks::InvoiceDueDateRecalculationCanceledStandardWebhookEvent::Properties]
        #
        #   @param type [Symbol, Orb::Models::Webhooks::InvoiceDueDateRecalculationCanceledStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::InvoiceDueDateRecalculationCanceledStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::InvoiceDueDateRecalculationCanceledStandardWebhookEvent#properties
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
        # @see Orb::Models::Webhooks::InvoiceDueDateRecalculationCanceledStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          INVOICE_DUE_DATE_RECALCULATION_CANCELED = :"invoice_due_date_recalculation.canceled"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
