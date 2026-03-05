# typed: strong

module Orb
  module Models
    class CreditBlockListInvoicesParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::CreditBlockListInvoicesParams, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :block_id

      sig do
        params(
          block_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(block_id:, request_options: {})
      end

      sig do
        override.returns(
          { block_id: String, request_options: Orb::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
