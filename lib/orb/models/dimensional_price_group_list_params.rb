# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::DimensionalPriceGroups#list
    class DimensionalPriceGroupListParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute billable_metric_id
      #   Filter to groups that use this billable metric.
      #
      #   @return [String, nil]
      optional :billable_metric_id, String, nil?: true

      # @!attribute cursor
      #   Cursor for pagination. This can be populated by the `next_cursor` value returned
      #   from the initial request.
      #
      #   @return [String, nil]
      optional :cursor, String, nil?: true

      # @!attribute limit
      #   The number of items to fetch. Defaults to 20.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(billable_metric_id: nil, cursor: nil, limit: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::DimensionalPriceGroupListParams} for more details.
      #
      #   @param billable_metric_id [String, nil] Filter to groups that use this billable metric.
      #
      #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #
      #   @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
