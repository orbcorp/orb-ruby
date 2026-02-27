# typed: strong

module Orb
  module Resources
    # An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity,
    # representing the request for payment for a single subscription. This includes a
    # set of line items, which correspond to prices in the subscription's plan and can
    # represent fixed recurring fees or usage-based fees. They are generated at the
    # end of a billing period, or as the result of an action, such as a cancellation.
    class InvoiceLineItems
      # This creates a one-off fixed fee invoice line item on an Invoice. This can only
      # be done for invoices that are in a `draft` status.
      #
      # The behavior depends on which parameters are provided:
      #
      # - If `item_id` is provided without `name`: The item is looked up by ID, and the
      #   item's name is used for the line item.
      # - If `name` is provided without `item_id`: An item with the given name is
      #   searched for in the account. If found, that item is used. If not found, a new
      #   item is created with that name. The new item's name is used for the line item.
      # - If both `item_id` and `name` are provided: The item is looked up by ID for
      #   association, but the provided `name` is used for the line item (not the item's
      #   name).
      sig do
        params(
          amount: String,
          end_date: Date,
          invoice_id: String,
          quantity: Float,
          start_date: Date,
          item_id: T.nilable(String),
          name: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::InvoiceLineItemCreateResponse)
      end
      def create(
        # The total amount in the invoice's currency to add to the line item.
        amount:,
        # A date string to specify the line item's end date in the customer's timezone.
        end_date:,
        # The id of the Invoice to add this line item.
        invoice_id:,
        # The number of units on the line item
        quantity:,
        # A date string to specify the line item's start date in the customer's timezone.
        start_date:,
        # The id of the item to associate with this line item. If provided without `name`,
        # the item's name will be used for the price/line item. If provided with `name`,
        # the item will be associated but `name` will be used for the line item. At least
        # one of `name` or `item_id` must be provided.
        item_id: nil,
        # The name to use for the line item. If `item_id` is not provided, Orb will search
        # for an item with this name. If found, that item will be associated with the line
        # item. If not found, a new item will be created with this name. If `item_id` is
        # provided, this name will be used for the line item, but the item association
        # will be based on `item_id`. At least one of `name` or `item_id` must be
        # provided.
        name: nil,
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
