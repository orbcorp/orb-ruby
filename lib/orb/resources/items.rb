# frozen_string_literal: true

module Orb
  module Resources
    class Items
      # This endpoint is used to create an [Item](/core-concepts#item).
      #
      # @overload create(name:, request_options: {})
      #
      # @param name [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Item]
      #
      # @see Orb::Models::ItemCreateParams
      def create(params)
        parsed, options = Orb::Models::ItemCreateParams.dump_request(params)
        @client.request(method: :post, path: "items", body: parsed, model: Orb::Models::Item, options: options)
      end

      # This endpoint can be used to update properties on the Item.
      #
      # @overload update(item_id, external_connections: nil, name: nil, request_options: {})
      #
      # @param item_id [String]
      # @param external_connections [Array<Orb::Models::ItemUpdateParams::ExternalConnection>, nil]
      # @param name [String, nil]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Item]
      #
      # @see Orb::Models::ItemUpdateParams
      def update(item_id, params = {})
        parsed, options = Orb::Models::ItemUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["items/%1$s", item_id],
          body: parsed,
          model: Orb::Models::Item,
          options: options
        )
      end

      # This endpoint returns a list of all Items, ordered in descending order by
      # creation time.
      #
      # @overload list(cursor: nil, limit: nil, request_options: {})
      #
      # @param cursor [String, nil]
      # @param limit [Integer]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Models::Item>]
      #
      # @see Orb::Models::ItemListParams
      def list(params = {})
        parsed, options = Orb::Models::ItemListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "items",
          query: parsed,
          page: Orb::Internal::Page,
          model: Orb::Models::Item,
          options: options
        )
      end

      # This endpoint returns an item identified by its item_id.
      #
      # @overload fetch(item_id, request_options: {})
      #
      # @param item_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Item]
      #
      # @see Orb::Models::ItemFetchParams
      def fetch(item_id, params = {})
        @client.request(
          method: :get,
          path: ["items/%1$s", item_id],
          model: Orb::Models::Item,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
