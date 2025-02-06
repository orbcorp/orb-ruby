# typed: strong

module Orb
  module Models
    class InvoiceLineItemCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            amount: String,
            end_date: Date,
            invoice_id: String,
            name: String,
            quantity: Float,
            start_date: Date
          },
          Orb::RequestParameters::Shape
        )
      end

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
          request_options: Orb::RequestOpts
        ).void
      end
      def initialize(amount:, end_date:, invoice_id:, name:, quantity:, start_date:, request_options: {}); end

      sig { returns(Orb::Models::InvoiceLineItemCreateParams::Shape) }
      def to_h; end
    end
  end
end
