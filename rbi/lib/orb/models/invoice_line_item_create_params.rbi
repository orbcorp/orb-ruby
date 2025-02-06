# typed: strong

module Orb
  module Models
    class InvoiceLineItemCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(String) }
      attr_accessor :amount

      sig { returns(Date) }
      attr_accessor :end_date

      sig { returns(String) }
      attr_accessor :invoice_id

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Float) }
      attr_accessor :quantity

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
