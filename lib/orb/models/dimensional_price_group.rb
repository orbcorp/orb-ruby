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
      #     associated with this dimensional price group will be computed using this
      #     billable metric.
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
      #     to an empty dictionary. Individual keys can be removed by setting the value to
      #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #     `null`.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Orb::Internal::Type::HashOf[String]

      # @!attribute name
      #   The name of the dimensional price group
      #
      #   @return [String]
      required :name, String

      # @!parse
      #   # A dimensional price group is used to partition the result of a billable metric
      #   #   by a set of dimensions. Prices in a price group must specify the parition used
      #   #   to derive their usage.
      #   #
      #   # @param id [String]
      #   # @param billable_metric_id [String]
      #   # @param dimensions [Array<String>]
      #   # @param external_dimensional_price_group_id [String, nil]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param name [String]
      #   #
      #   def initialize(id:, billable_metric_id:, dimensions:, external_dimensional_price_group_id:, metadata:, name:, **) = super

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
    end
  end
end
