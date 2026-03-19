# typed: strong

module Orb
  module Models
    class InvoicePayParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::InvoicePayParams, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :invoice_id

      # The ID of a shared payment token granted by an agent to use for this payment.
      sig { returns(String) }
      attr_accessor :shared_payment_token_id

      sig do
        params(
          invoice_id: String,
          shared_payment_token_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        invoice_id:,
        # The ID of a shared payment token granted by an agent to use for this payment.
        shared_payment_token_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            invoice_id: String,
            shared_payment_token_id: String,
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
