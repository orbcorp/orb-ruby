# frozen_string_literal: true

module Orb
  module Resources
    class DimensionalPriceGroups
      # @return [Orb::Resources::DimensionalPriceGroups::ExternalDimensionalPriceGroupID]
      attr_reader :external_dimensional_price_group_id

      # A dimensional price group is used to partition the result of a billable metric
      #   by a set of dimensions. Prices in a price group must specify the parition used
      #   to derive their usage.
      #
      #   For example, suppose we have a billable metric that measures the number of
      #   widgets used and we want to charge differently depending on the color of the
      #   widget. We can create a price group with a dimension "color" and two prices: one
      #   that charges $10 per red widget and one that charges $20 per blue widget.
      #
      # @param params [Orb::Models::DimensionalPriceGroupCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :billable_metric_id
      #
      #   @option params [Array<String>] :dimensions The set of keys (in order) used to disambiguate prices in the group.
      #
      #   @option params [String] :name
      #
      #   @option params [String, nil] :external_dimensional_price_group_id
      #
      #   @option params [Hash{Symbol=>String, nil}, nil] :metadata User-specified key/value pairs for the resource. Individual keys can be removed
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::DimensionalPriceGroup]
      def create(params)
        parsed, options = Orb::Models::DimensionalPriceGroupCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "dimensional_price_groups",
          body: parsed,
          model: Orb::Models::DimensionalPriceGroup,
          options: options
        )
      end

      # Fetch dimensional price group
      #
      # @param dimensional_price_group_id [String]
      #
      # @param params [Orb::Models::DimensionalPriceGroupRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::DimensionalPriceGroup]
      def retrieve(dimensional_price_group_id, params = {})
        @client.request(
          method: :get,
          path: ["dimensional_price_groups/%1$s", dimensional_price_group_id],
          model: Orb::Models::DimensionalPriceGroup,
          options: params[:request_options]
        )
      end

      # List dimensional price groups
      #
      # @param params [Orb::Models::DimensionalPriceGroupListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :cursor Cursor for pagination. This can be populated by the `next_cursor` value returned
      #     from the initial request.
      #
      #   @option params [Integer] :limit The number of items to fetch. Defaults to 20.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Page<Orb::Models::DimensionalPriceGroup>]
      def list(params = {})
        parsed, options = Orb::Models::DimensionalPriceGroupListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "dimensional_price_groups",
          query: parsed,
          page: Orb::Page,
          model: Orb::Models::DimensionalPriceGroup,
          options: options
        )
      end

      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
        @external_dimensional_price_group_id =
          Orb::Resources::DimensionalPriceGroups::ExternalDimensionalPriceGroupID.new(client: client)
      end
    end
  end
end
