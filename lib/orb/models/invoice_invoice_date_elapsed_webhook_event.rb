# frozen_string_literal: true

module Orb
  module Models
    class InvoiceInvoiceDateElapsedWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   @return [Orb::Models::InvoiceInvoiceDateElapsedWebhookEvent::Invoice]
      required :invoice, -> { Orb::InvoiceInvoiceDateElapsedWebhookEvent::Invoice }

      # @!attribute properties
      #
      #   @return [Orb::Models::InvoiceInvoiceDateElapsedWebhookEvent::Properties]
      required :properties, -> { Orb::InvoiceInvoiceDateElapsedWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::InvoiceInvoiceDateElapsedWebhookEvent::Type]
      required :type, enum: -> { Orb::InvoiceInvoiceDateElapsedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, invoice:, properties:, type:)
      #   Issued when an invoice's invoice date has elapsed.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param invoice [Orb::Models::InvoiceInvoiceDateElapsedWebhookEvent::Invoice]
      #
      #   @param properties [Orb::Models::InvoiceInvoiceDateElapsedWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::InvoiceInvoiceDateElapsedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::InvoiceInvoiceDateElapsedWebhookEvent#invoice
      class Invoice < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute customer
        #
        #   @return [Orb::Models::CustomerMinified]
        required :customer, -> { Orb::CustomerMinified }

        # @!attribute invoice_number
        #
        #   @return [String]
        required :invoice_number, String

        # @!attribute status
        #
        #   @return [Symbol, Orb::Models::InvoiceInvoiceDateElapsedWebhookEvent::Invoice::Status]
        required :status, enum: -> { Orb::InvoiceInvoiceDateElapsedWebhookEvent::Invoice::Status }

        # @!attribute subscription
        #
        #   @return [Orb::Models::SubscriptionMinified, nil]
        required :subscription, -> { Orb::SubscriptionMinified }, nil?: true

        # @!method initialize(id:, customer:, invoice_number:, status:, subscription:)
        #   @param id [String]
        #   @param customer [Orb::Models::CustomerMinified]
        #   @param invoice_number [String]
        #   @param status [Symbol, Orb::Models::InvoiceInvoiceDateElapsedWebhookEvent::Invoice::Status]
        #   @param subscription [Orb::Models::SubscriptionMinified, nil]

        # @see Orb::Models::InvoiceInvoiceDateElapsedWebhookEvent::Invoice#status
        module Status
          extend Orb::Internal::Type::Enum

          ISSUED = :issued
          PAID = :paid
          SYNCED = :synced
          VOID = :void
          DRAFT = :draft

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Orb::Models::InvoiceInvoiceDateElapsedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute invoice_date
        #
        #   @return [Time]
        required :invoice_date, Time

        # @!method initialize(invoice_date:)
        #   @param invoice_date [Time]
      end

      # The event this payload describes.
      #
      # @see Orb::Models::InvoiceInvoiceDateElapsedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        INVOICE_INVOICE_DATE_ELAPSED = :"invoice.invoice_date_elapsed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
