# typed: strong

module Orb
  module Models
    class InvoiceLineItemCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # The total amount in the invoice's currency to add to the line item.
      sig { returns(String) }
      attr_accessor :amount

      # A date string to specify the line item's end date in the customer's timezone.
      sig { returns(Date) }
      attr_accessor :end_date

      # The id of the Invoice to add this line item.
      sig { returns(String) }
      attr_accessor :invoice_id

      # The item name associated with this line item. If an item with the same name
      #   exists in Orb, that item will be associated with the line item.
      sig { returns(String) }
      attr_accessor :name

      # The number of units on the line item
      sig { returns(Float) }
      attr_accessor :quantity

      # A date string to specify the line item's start date in the customer's timezone.
      sig { returns(Date) }
      attr_accessor :start_date

      sig do
        params(
          amount: String,
          end_date: Date,
          invoice_id: String,
          name: String,
          quantity: Float,
          start_date: Date,
          request_options: T.any(Orb::RequestOptions, Orb::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(amount:, end_date:, invoice_id:, name:, quantity:, start_date:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              amount: String,
              end_date: Date,
              invoice_id: String,
              name: String,
              quantity: Float,
              start_date: Date,
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
