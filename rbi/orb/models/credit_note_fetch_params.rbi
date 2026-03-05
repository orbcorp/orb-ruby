# typed: strong

module Orb
  module Models
    class CreditNoteFetchParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::CreditNoteFetchParams, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :credit_note_id

      sig do
        params(
          credit_note_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(credit_note_id:, request_options: {})
      end

      sig do
        override.returns(
          { credit_note_id: String, request_options: Orb::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
