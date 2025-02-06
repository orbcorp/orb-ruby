# typed: strong

module Orb
  module Models
    class DimensionalPriceGroupsAPI < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::DimensionalPriceGroup]) }
      attr_accessor :data

      sig { returns(Orb::Models::PaginationMetadata) }
      attr_accessor :pagination_metadata

      sig do
        params(
          data: T::Array[Orb::Models::DimensionalPriceGroup],
          pagination_metadata: Orb::Models::PaginationMetadata
        ).void
      end
      def initialize(data:, pagination_metadata:)
      end

      sig do
        override.returns(
          {
            data: T::Array[Orb::Models::DimensionalPriceGroup],
            pagination_metadata: Orb::Models::PaginationMetadata
          }
        )
      end
      def to_hash
      end
    end
  end
end
