# frozen_string_literal: true

module Orb
  module Models
    class InvoicePaymentProcessingWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   @return [Orb::Models::InvoicePaymentProcessingWebhookEvent::Properties]
      required :properties, -> { Orb::InvoicePaymentProcessingWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::InvoicePaymentProcessingWebhookEvent::Type]
      required :type, enum: -> { Orb::InvoicePaymentProcessingWebhookEvent::Type }

      # @!method initialize(id:, created_at:, invoice:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoicePaymentProcessingWebhookEvent} for more details.
      #
      #   Issued when an invoice payment is being processed.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param invoice [Orb::Models::Invoice] An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity, represen
      #
      #   @param properties [Orb::Models::InvoicePaymentProcessingWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::InvoicePaymentProcessingWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::InvoicePaymentProcessingWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute payment_provider_id
        #
        #   @return [String, nil]
        required :payment_provider_id, String, nil?: true

        # @!attribute payment_provider
        #
        #   @return [String, nil]
        optional :payment_provider, String

        # @!method initialize(payment_provider_id:, payment_provider: nil)
        #   @param payment_provider_id [String, nil]
        #   @param payment_provider [String]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::InvoicePaymentProcessingWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        INVOICE_PAYMENT_PROCESSING = :"invoice.payment_processing"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
