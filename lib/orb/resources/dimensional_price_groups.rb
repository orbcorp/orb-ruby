# frozen_string_literal: true

module Orb
  module Resources
    class DimensionalPriceGroups
      # @return [Orb::Resources::DimensionalPriceGroups::ExternalDimensionalPriceGroupID]
      attr_reader :external_dimensional_price_group_id

      # A dimensional price group is used to partition the result of a billable metric
      # by a set of dimensions. Prices in a price group must specify the parition used
      # to derive their usage.
      #
      # For example, suppose we have a billable metric that measures the number of
      # widgets used and we want to charge differently depending on the color of the
      # widget. We can create a price group with a dimension "color" and two prices: one
      # that charges $10 per red widget and one that charges $20 per blue widget.
      #
      # @overload create(billable_metric_id:, dimensions:, name:, external_dimensional_price_group_id: nil, metadata: nil, request_options: {})
      #
      # @param billable_metric_id [String]
      # @param dimensions [Array<String>]
      # @param name [String]
      # @param external_dimensional_price_group_id [String, nil]
      # @param metadata [Hash{Symbol=>String, nil}, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::DimensionalPriceGroup]
      #
      # @see Orb::Models::DimensionalPriceGroupCreateParams
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
      # @overload retrieve(dimensional_price_group_id, request_options: {})
      #
      # @param dimensional_price_group_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::DimensionalPriceGroup]
      #
      # @see Orb::Models::DimensionalPriceGroupRetrieveParams
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
      # @overload list(cursor: nil, limit: nil, request_options: {})
      #
      # @param cursor [String, nil]
      # @param limit [Integer]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Models::DimensionalPriceGroup>]
      #
      # @see Orb::Models::DimensionalPriceGroupListParams
      def list(params = {})
        parsed, options = Orb::Models::DimensionalPriceGroupListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "dimensional_price_groups",
          query: parsed,
          page: Orb::Internal::Page,
          model: Orb::Models::DimensionalPriceGroup,
          options: options
        )
      end

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
        @external_dimensional_price_group_id =
          Orb::Resources::DimensionalPriceGroups::ExternalDimensionalPriceGroupID.new(client: client)
      end
    end
  end
end
