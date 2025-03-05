# frozen_string_literal: true

module Orb
  module Resources
    class Items
      # This endpoint is used to create an [Item](/core-concepts#item).
      #
      # @param params [Orb::Models::ItemCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :name The name of the item.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Item]
      #
      def create(params)
        parsed, options = Orb::Models::ItemCreateParams.dump_request(params)
        @client.request(method: :post, path: "items", body: parsed, model: Orb::Models::Item, options: options)
      end

      # This endpoint can be used to update properties on the Item.
      #
      # @param item_id [String]
      #
      # @param params [Orb::Models::ItemUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<Orb::Models::ItemUpdateParams::ExternalConnection>, nil] :external_connections
      #
      #   @option params [String, nil] :name
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Item]
      #
      def update(item_id, params = {})
        parsed, options = Orb::Models::ItemUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["items/%0s", item_id],
          body: parsed,
          model: Orb::Models::Item,
          options: options
        )
      end

      # This endpoint returns a list of all Items, ordered in descending order by
      #   creation time.
      #
      # @param params [Orb::Models::ItemListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :cursor Cursor for pagination. This can be populated by the `next_cursor` value returned
      #     from the initial request.
      #
      #   @option params [Integer] :limit The number of items to fetch. Defaults to 20.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Page<Orb::Models::Item>]
      #
      def list(params = {})
        parsed, options = Orb::Models::ItemListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "items",
          query: parsed,
          page: Orb::Page,
          model: Orb::Models::Item,
          options: options
        )
      end

      # This endpoint returns an item identified by its item_id.
      #
      # @param item_id [String]
      #
      # @param params [Orb::Models::ItemFetchParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::Item]
      #
      def fetch(item_id, params = {})
        @client.request(
          method: :get,
          path: ["items/%0s", item_id],
          model: Orb::Models::Item,
          options: params[:request_options]
        )
      end

      # @param client [Orb::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
