# frozen_string_literal: true

module Orb
  module Models
    class InvoiceManuallyMarkedAsPaidWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity,
      #   representing the request for payment for a single subscription. This includes a
      #   set of line items, which correspond to prices in the subscription's plan and can
      #   represent fixed recurring fees or usage-based fees. They are generated at the
      #   end of a billing period, or as the result of an action, such as a cancellation.
      #
      #   @return [Orb::Models::Invoice]
      required :invoice, -> { Orb::Invoice }

      # @!attribute properties
      #
      #   @return [Orb::Models::InvoiceManuallyMarkedAsPaidWebhookEvent::Properties]
      required :properties, -> { Orb::InvoiceManuallyMarkedAsPaidWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::InvoiceManuallyMarkedAsPaidWebhookEvent::Type]
      required :type, enum: -> { Orb::InvoiceManuallyMarkedAsPaidWebhookEvent::Type }

      # @!method initialize(id:, created_at:, invoice:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoiceManuallyMarkedAsPaidWebhookEvent} for more details.
      #
      #   Issued when an invoice is manually marked as paid.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param invoice [Orb::Models::Invoice] An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity, represen
      #
      #   @param properties [Orb::Models::InvoiceManuallyMarkedAsPaidWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::InvoiceManuallyMarkedAsPaidWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::InvoiceManuallyMarkedAsPaidWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute external_id
        #
        #   @return [String, nil]
        required :external_id, String, nil?: true

        # @!attribute notes
        #
        #   @return [String, nil]
        required :notes, String, nil?: true

        # @!attribute payment_received_date
        #
        #   @return [Time, nil]
        required :payment_received_date, Time, nil?: true

        # @!method initialize(external_id:, notes:, payment_received_date:)
        #   @param external_id [String, nil]
        #   @param notes [String, nil]
        #   @param payment_received_date [Time, nil]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::InvoiceManuallyMarkedAsPaidWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        INVOICE_MANUALLY_MARKED_AS_PAID = :"invoice.manually_marked_as_paid"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
