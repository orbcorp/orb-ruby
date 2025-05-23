# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::DimensionalPriceGroups#create
    class DimensionalPriceGroup < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute billable_metric_id
      #   The billable metric associated with this dimensional price group. All prices
      #   associated with this dimensional price group will be computed using this
      #   billable metric.
      #
      #   @return [String]
      required :billable_metric_id, String

      # @!attribute dimensions
      #   The dimensions that this dimensional price group is defined over
      #
      #   @return [Array<String>]
      required :dimensions, Orb::Internal::Type::ArrayOf[String]

      # @!attribute external_dimensional_price_group_id
      #   An alias for the dimensional price group
      #
      #   @return [String, nil]
      required :external_dimensional_price_group_id, String, nil?: true

      # @!attribute metadata
      #   User specified key-value pairs for the resource. If not present, this defaults
      #   to an empty dictionary. Individual keys can be removed by setting the value to
      #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #   `null`.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Orb::Internal::Type::HashOf[String]

      # @!attribute name
      #   The name of the dimensional price group
      #
      #   @return [String]
      required :name, String

      # @!method initialize(id:, billable_metric_id:, dimensions:, external_dimensional_price_group_id:, metadata:, name:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::DimensionalPriceGroup} for more details.
      #
      #   A dimensional price group is used to partition the result of a billable metric
      #   by a set of dimensions. Prices in a price group must specify the parition used
      #   to derive their usage.
      #
      #   @param id [String]
      #
      #   @param billable_metric_id [String] The billable metric associated with this dimensional price group. All prices ass
      #
      #   @param dimensions [Array<String>] The dimensions that this dimensional price group is defined over
      #
      #   @param external_dimensional_price_group_id [String, nil] An alias for the dimensional price group
      #
      #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
      #
      #   @param name [String] The name of the dimensional price group
    end
  end
end
