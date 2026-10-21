# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class InvoiceInvoiceDateElapsedStandardWebhookEvent < Orb::Internal::Type::BaseModel
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
        #   @return [Orb::Models::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice]
        required :invoice, -> { Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice }

        # @!attribute payload_style
        #   The serialization style this payload was rendered in, as configured on the
        #   endpoint.
        #
        #   @return [Symbol, Orb::Models::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::PayloadStyle]
        required :payload_style,
                 enum: -> { Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #
        #   @return [Orb::Models::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Properties]
        required :properties, -> { Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Properties }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, invoice:, payload_style:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent} for more
        #   details.
        #
        #   Issued when an invoice's invoice date has elapsed.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param invoice [Orb::Models::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice]
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Orb::Models::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Properties]
        #
        #   @param type [Symbol, Orb::Models::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Type] The event this payload describes.

        # @see Orb::Models::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent#invoice
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
          #   @return [Symbol, Orb::Models::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice::Status]
          required :status,
                   enum: -> { Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice::Status }

          # @!attribute subscription
          #
          #   @return [Orb::Models::SubscriptionMinified, nil]
          required :subscription, -> { Orb::SubscriptionMinified }, nil?: true

          # @!method initialize(id:, customer:, invoice_number:, status:, subscription:)
          #   @param id [String]
          #   @param customer [Orb::Models::CustomerMinified]
          #   @param invoice_number [String]
          #   @param status [Symbol, Orb::Models::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice::Status]
          #   @param subscription [Orb::Models::SubscriptionMinified, nil]

          # @see Orb::Models::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice#status
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

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent#properties
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
        # @see Orb::Models::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          INVOICE_INVOICE_DATE_ELAPSED = :"invoice.invoice_date_elapsed"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
