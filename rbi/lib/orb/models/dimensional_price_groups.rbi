# typed: strong

module Orb
  module Models
    class DimensionalPriceGroupsAPI < Orb::Internal::Type::BaseModel
      sig { returns(T::Array[Orb::Models::DimensionalPriceGroup]) }
      attr_accessor :data

      sig { returns(Orb::Models::PaginationMetadata) }
      attr_reader :pagination_metadata

      sig { params(pagination_metadata: T.any(Orb::Models::PaginationMetadata, Orb::Internal::AnyHash)).void }
      attr_writer :pagination_metadata

      sig do
        params(
          data: T::Array[T.any(Orb::Models::DimensionalPriceGroup, Orb::Internal::AnyHash)],
          pagination_metadata: T.any(Orb::Models::PaginationMetadata, Orb::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(data:, pagination_metadata:); end

      sig do
        override
          .returns(
            {data: T::Array[Orb::Models::DimensionalPriceGroup], pagination_metadata: Orb::Models::PaginationMetadata}
          )
      end
      def to_hash; end
    end
  end
end
