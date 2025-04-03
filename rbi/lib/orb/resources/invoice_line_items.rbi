# typed: strong

module Orb
  module Resources
    class InvoiceLineItems
      # This creates a one-off fixed fee invoice line item on an Invoice. This can only
      #   be done for invoices that are in a `draft` status.
      sig do
        params(
          amount: String,
          end_date: Date,
          invoice_id: String,
          name: String,
          quantity: Float,
          start_date: Date,
          request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
        )
          .returns(Orb::Models::InvoiceLineItemCreateResponse)
      end
      def create(
        # The total amount in the invoice's currency to add to the line item.
        amount:,
        # A date string to specify the line item's end date in the customer's timezone.
        end_date:,
        # The id of the Invoice to add this line item.
        invoice_id:,
        # The item name associated with this line item. If an item with the same name
        #   exists in Orb, that item will be associated with the line item.
        name:,
        # The number of units on the line item
        quantity:,
        # A date string to specify the line item's start date in the customer's timezone.
        start_date:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
