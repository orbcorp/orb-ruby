# typed: strong

module Orb
  module Models
    class InvoiceLineItemCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::InvoiceLineItemCreateParams, Orb::Internal::AnyHash)
        end

      # The total amount in the invoice's currency to add to the line item.
      sig { returns(String) }
      attr_accessor :amount

      # A date string to specify the line item's end date in the customer's timezone.
      sig { returns(Date) }
      attr_accessor :end_date

      # The id of the Invoice to add this line item.
      sig { returns(String) }
      attr_accessor :invoice_id

      # The number of units on the line item
      sig { returns(Float) }
      attr_accessor :quantity

      # A date string to specify the line item's start date in the customer's timezone.
      sig { returns(Date) }
      attr_accessor :start_date

      # The id of the item to associate with this line item. If provided without `name`,
      # the item's name will be used for the price/line item. If provided with `name`,
      # the item will be associated but `name` will be used for the line item. At least
      # one of `name` or `item_id` must be provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :item_id

      # The name to use for the line item. If `item_id` is not provided, Orb will search
      # for an item with this name. If found, that item will be associated with the line
      # item. If not found, a new item will be created with this name. If `item_id` is
      # provided, this name will be used for the line item, but the item association
      # will be based on `item_id`. At least one of `name` or `item_id` must be
      # provided.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            amount: String,
            end_date: Date,
            invoice_id: String,
            quantity: Float,
            start_date: Date,
            item_id: T.nilable(String),
            name: T.nilable(String),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
