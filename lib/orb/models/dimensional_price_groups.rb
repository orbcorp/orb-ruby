# frozen_string_literal: true

module Orb
  module Models
    class DimensionalPriceGroupsAPI < Orb::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Orb::DimensionalPriceGroup>]
      required :data, -> { Orb::Internal::Type::ArrayOf[Orb::DimensionalPriceGroup] }

      # @!attribute pagination_metadata
      #
      #   @return [Orb::PaginationMetadata]
      required :pagination_metadata, -> { Orb::PaginationMetadata }

      # @!method initialize(data:, pagination_metadata:)
      #   @param data [Array<Orb::DimensionalPriceGroup>]
      #   @param pagination_metadata [Orb::PaginationMetadata]
    end
  end
end
