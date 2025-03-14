# typed: strong

module Orb
  module Models
    class InvoiceLineItemCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # The total amount in the invoice's currency to add to the line item.
      sig { returns(String) }
      def amount
      end

      sig { params(_: String).returns(String) }
      def amount=(_)
      end

      # A date string to specify the line item's end date in the customer's timezone.
      sig { returns(Date) }
      def end_date
      end

      sig { params(_: Date).returns(Date) }
      def end_date=(_)
      end

      # The id of the Invoice to add this line item.
      sig { returns(String) }
      def invoice_id
      end

      sig { params(_: String).returns(String) }
      def invoice_id=(_)
      end

      # The item name associated with this line item. If an item with the same name
      #   exists in Orb, that item will be associated with the line item.
      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      # The number of units on the line item
      sig { returns(Float) }
      def quantity
      end

      sig { params(_: Float).returns(Float) }
      def quantity=(_)
      end

      # A date string to specify the line item's start date in the customer's timezone.
      sig { returns(Date) }
      def start_date
      end

      sig { params(_: Date).returns(Date) }
      def start_date=(_)
      end

      sig do
        params(
          amount: String,
          end_date: Date,
          invoice_id: String,
          name: String,
          quantity: Float,
          start_date: Date,
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
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
