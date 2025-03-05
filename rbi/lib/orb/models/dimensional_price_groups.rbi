# typed: strong

module Orb
  module Models
    class DimensionalPriceGroupsAPI < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::DimensionalPriceGroupModel]) }
      def data
      end

      sig do
        params(_: T::Array[Orb::Models::DimensionalPriceGroupModel])
          .returns(T::Array[Orb::Models::DimensionalPriceGroupModel])
      end
      def data=(_)
      end

      sig { returns(Orb::Models::PaginationMetadata) }
      def pagination_metadata
      end

      sig { params(_: Orb::Models::PaginationMetadata).returns(Orb::Models::PaginationMetadata) }
      def pagination_metadata=(_)
      end

      sig do
        params(
          data: T::Array[Orb::Models::DimensionalPriceGroupModel],
          pagination_metadata: Orb::Models::PaginationMetadata
        )
          .void
      end
      def initialize(data:, pagination_metadata:)
      end

      sig do
        override
          .returns(
            {
              data: T::Array[Orb::Models::DimensionalPriceGroupModel],
              pagination_metadata: Orb::Models::PaginationMetadata
            }
          )
      end
      def to_hash
      end
    end
  end
end
