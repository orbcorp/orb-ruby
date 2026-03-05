# typed: strong

module Orb
  module Models
    class PriceFetchParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::PriceFetchParams, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :price_id

      sig do
        params(
          price_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(price_id:, request_options: {})
      end

      sig do
        override.returns(
          { price_id: String, request_options: Orb::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
