# typed: strong

module Orb
  module Models
    class DimensionalPriceGroupRetrieveParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Orb::DimensionalPriceGroupRetrieveParams,
            Orb::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :dimensional_price_group_id

      sig do
        params(
          dimensional_price_group_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(dimensional_price_group_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            dimensional_price_group_id: String,
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
