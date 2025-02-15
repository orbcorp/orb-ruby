# typed: strong

module Orb
  module Models
    class InvoiceLineItemCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(String) }
      def amount
      end

      sig { params(_: String).returns(String) }
      def amount=(_)
      end

      sig { returns(Date) }
      def end_date
      end

      sig { params(_: Date).returns(Date) }
      def end_date=(_)
      end

      sig { returns(String) }
      def invoice_id
      end

      sig { params(_: String).returns(String) }
      def invoice_id=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(Float) }
      def quantity
      end

      sig { params(_: Float).returns(Float) }
      def quantity=(_)
      end

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
        ).void
      end
      def initialize(amount:, end_date:, invoice_id:, name:, quantity:, start_date:, request_options: {})
      end

      sig do
        override.returns(
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
