# frozen_string_literal: true

module Orb
  module Models
    class MetricListParams < Orb::BaseModel
      # @!parse
      #   extend Orb::Type::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute created_at_gt
      #
      #   @return [Time, nil]
      optional :created_at_gt, Time, api_name: :"created_at[gt]", nil?: true

      # @!attribute created_at_gte
      #
      #   @return [Time, nil]
      optional :created_at_gte, Time, api_name: :"created_at[gte]", nil?: true

      # @!attribute created_at_lt
      #
      #   @return [Time, nil]
      optional :created_at_lt, Time, api_name: :"created_at[lt]", nil?: true

      # @!attribute created_at_lte
      #
      #   @return [Time, nil]
      optional :created_at_lte, Time, api_name: :"created_at[lte]", nil?: true

      # @!attribute cursor
      #   Cursor for pagination. This can be populated by the `next_cursor` value returned
      #     from the initial request.
      #
      #   @return [String, nil]
      optional :cursor, String, nil?: true

      # @!attribute [r] limit
      #   The number of items to fetch. Defaults to 20.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!parse
      #   # @param created_at_gt [Time, nil]
      #   # @param created_at_gte [Time, nil]
      #   # @param created_at_lt [Time, nil]
      #   # @param created_at_lte [Time, nil]
      #   # @param cursor [String, nil]
      #   # @param limit [Integer]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     created_at_gt: nil,
      #     created_at_gte: nil,
      #     created_at_lt: nil,
      #     created_at_lte: nil,
      #     cursor: nil,
      #     limit: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
