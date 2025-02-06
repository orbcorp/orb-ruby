# typed: strong

module Orb
  module Models
    class DimensionalPriceGroupsAPI < Orb::BaseModel
      Shape = T.type_alias do
        {
          data: T::Array[Orb::Models::DimensionalPriceGroup],
          pagination_metadata: Orb::Models::PaginationMetadata
        }
      end

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
      def initialize(data:, pagination_metadata:); end

      sig { returns(Orb::Models::DimensionalPriceGroupsAPI::Shape) }
      def to_h; end
    end
  end
end
