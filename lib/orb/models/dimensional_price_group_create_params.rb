# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::DimensionalPriceGroups#create
    class DimensionalPriceGroupCreateParams < Orb::Internal::Type::BaseModel
      # @!parse
      #   extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute billable_metric_id
      #
      #   @return [String]
      required :billable_metric_id, String

      # @!attribute dimensions
      #   The set of keys (in order) used to disambiguate prices in the group.
      #
      #   @return [Array<String>]
      required :dimensions, Orb::Internal::Type::ArrayOf[String]

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute external_dimensional_price_group_id
      #
      #   @return [String, nil]
      optional :external_dimensional_price_group_id, String, nil?: true

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!parse
      #   # @param billable_metric_id [String]
      #   # @param dimensions [Array<String>]
      #   # @param name [String]
      #   # @param external_dimensional_price_group_id [String, nil]
      #   # @param metadata [Hash{Symbol=>String, nil}, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     billable_metric_id:,
      #     dimensions:,
      #     name:,
      #     external_dimensional_price_group_id: nil,
      #     metadata: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
    end
  end
end
