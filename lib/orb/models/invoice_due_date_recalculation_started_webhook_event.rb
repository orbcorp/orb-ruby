# frozen_string_literal: true

module Orb
  module Models
    class InvoiceDueDateRecalculationStartedWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   @return [Symbol, Orb::Models::InvoiceDueDateRecalculationStartedWebhookEvent::PayloadStyle]
      required :payload_style, enum: -> { Orb::InvoiceDueDateRecalculationStartedWebhookEvent::PayloadStyle }

      # @!attribute properties
      #
      #   @return [Orb::Models::InvoiceDueDateRecalculationStartedWebhookEvent::Properties]
      required :properties, -> { Orb::InvoiceDueDateRecalculationStartedWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::InvoiceDueDateRecalculationStartedWebhookEvent::Type]
      required :type, enum: -> { Orb::InvoiceDueDateRecalculationStartedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, payload_style:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoiceDueDateRecalculationStartedWebhookEvent} for more details.
      #
      #   Issued when an invoice due date recalculation is started.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param payload_style [Symbol, Orb::Models::InvoiceDueDateRecalculationStartedWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
      #
      #   @param properties [Orb::Models::InvoiceDueDateRecalculationStartedWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::InvoiceDueDateRecalculationStartedWebhookEvent::Type] The event this payload describes.

      # The serialization style this payload was rendered in, as configured on the
      # endpoint.
      #
      # @see Orb::Models::InvoiceDueDateRecalculationStartedWebhookEvent#payload_style
      module PayloadStyle
        extend Orb::Internal::Type::Enum

        EXPANDED = :expanded
        STANDARD = :standard

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Orb::Models::InvoiceDueDateRecalculationStartedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute started_at
        #
        #   @return [Time]
        required :started_at, Time

        # @!method initialize(started_at:)
        #   @param started_at [Time]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::InvoiceDueDateRecalculationStartedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        INVOICE_DUE_DATE_RECALCULATION_STARTED = :"invoice_due_date_recalculation.started"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
