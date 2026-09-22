# frozen_string_literal: true

module Orb
  module Models
    class InvoiceIssuedWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   @return [Orb::Models::InvoiceIssuedWebhookEvent::Properties]
      required :properties, -> { Orb::InvoiceIssuedWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::InvoiceIssuedWebhookEvent::Type]
      required :type, enum: -> { Orb::InvoiceIssuedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, invoice:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoiceIssuedWebhookEvent} for more details.
      #
      #   Issued when an invoice transitions to the "issued" state.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param invoice [Orb::Models::Invoice] An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity, represen
      #
      #   @param properties [Orb::Models::InvoiceIssuedWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::InvoiceIssuedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::InvoiceIssuedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute automatically_marked_as_paid
        #
        #   @return [Boolean]
        required :automatically_marked_as_paid, Orb::Internal::Type::Boolean

        # @!method initialize(automatically_marked_as_paid:)
        #   @param automatically_marked_as_paid [Boolean]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::InvoiceIssuedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        INVOICE_ISSUED = :"invoice.issued"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
