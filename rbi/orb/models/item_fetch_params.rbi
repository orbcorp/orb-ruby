# typed: strong

module Orb
  module Models
    class ItemFetchParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::ItemFetchParams, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :item_id

      sig do
        params(
          item_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(item_id:, request_options: {})
      end

      sig do
        override.returns(
          { item_id: String, request_options: Orb::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
