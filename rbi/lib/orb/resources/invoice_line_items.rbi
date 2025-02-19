# typed: strong

module Orb
  module Resources
    class InvoiceLineItems
      sig do
        params(
          amount: String,
          end_date: Date,
          invoice_id: String,
          name: String,
          quantity: Float,
          start_date: Date,
          request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(Orb::Models::InvoiceLineItemCreateResponse)
      end
      def create(amount:, end_date:, invoice_id:, name:, quantity:, start_date:, request_options: {})
      end

      sig { params(client: Orb::Client).void }
      def initialize(client:)
      end
    end
  end
end
