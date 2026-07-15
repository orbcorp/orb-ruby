# typed: strong

module Orb
  module Models
    class InvoiceRegenerateInvoicePdfParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::InvoiceRegenerateInvoicePdfParams, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :invoice_id

      sig do
        params(
          invoice_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(invoice_id:, request_options: {})
      end

      sig do
        override.returns(
          { invoice_id: String, request_options: Orb::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
