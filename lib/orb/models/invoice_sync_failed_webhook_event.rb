# frozen_string_literal: true

module Orb
  module Models
    class InvoiceSyncFailedWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   @return [Orb::Models::InvoiceSyncFailedWebhookEvent::Properties]
      required :properties, -> { Orb::InvoiceSyncFailedWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::InvoiceSyncFailedWebhookEvent::Type]
      required :type, enum: -> { Orb::InvoiceSyncFailedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, invoice:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoiceSyncFailedWebhookEvent} for more details.
      #
      #   Issued when an invoice sync fails.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param invoice [Orb::Models::Invoice] An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity, represen
      #
      #   @param properties [Orb::Models::InvoiceSyncFailedWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::InvoiceSyncFailedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::InvoiceSyncFailedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute payment_provider
        #
        #   @return [String, nil]
        required :payment_provider, String, nil?: true

        # @!attribute payment_provider_id
        #
        #   @return [String, nil]
        required :payment_provider_id, String, nil?: true

        # @!method initialize(payment_provider:, payment_provider_id:)
        #   @param payment_provider [String, nil]
        #   @param payment_provider_id [String, nil]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::InvoiceSyncFailedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        INVOICE_SYNC_FAILED = :"invoice.sync_failed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
