# frozen_string_literal: true

module Orb
  module Models
    class DimensionalPriceGroupsAPI < Orb::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Orb::Models::DimensionalPriceGroup>]
      required :data, -> { Orb::Internal::Type::ArrayOf[Orb::Models::DimensionalPriceGroup] }

      # @!attribute pagination_metadata
      #
      #   @return [Orb::Models::PaginationMetadata]
      required :pagination_metadata, -> { Orb::Models::PaginationMetadata }

      # @!method initialize(data:, pagination_metadata:)
      #   @param data [Array<Orb::Models::DimensionalPriceGroup>]
      #   @param pagination_metadata [Orb::Models::PaginationMetadata]
    end
  end
end
