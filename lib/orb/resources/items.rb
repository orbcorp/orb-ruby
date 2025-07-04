# frozen_string_literal: true

module Orb
  module Resources
    class Items
      # Some parameter documentations has been truncated, see
      # {Orb::Models::ItemCreateParams} for more details.
      #
      # This endpoint is used to create an [Item](/core-concepts#item).
      #
      # @overload create(name:, metadata: nil, request_options: {})
      #
      # @param name [String] The name of the item.
      #
      # @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Item]
      #
      # @see Orb::Models::ItemCreateParams
      def create(params)
        parsed, options = Orb::ItemCreateParams.dump_request(params)
        @client.request(method: :post, path: "items", body: parsed, model: Orb::Item, options: options)
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::ItemUpdateParams} for more details.
      #
      # This endpoint can be used to update properties on the Item.
      #
      # @overload update(item_id, external_connections: nil, metadata: nil, name: nil, request_options: {})
      #
      # @param item_id [String]
      #
      # @param external_connections [Array<Orb::Models::ItemUpdateParams::ExternalConnection>, nil]
      #
      # @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      # @param name [String, nil]
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Item]
      #
      # @see Orb::Models::ItemUpdateParams
      def update(item_id, params = {})
        parsed, options = Orb::ItemUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["items/%1$s", item_id],
          body: parsed,
          model: Orb::Item,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::ItemListParams} for more details.
      #
      # This endpoint returns a list of all Items, ordered in descending order by
      # creation time.
      #
      # @overload list(cursor: nil, limit: nil, request_options: {})
      #
      # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #
      # @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Models::Item>]
      #
      # @see Orb::Models::ItemListParams
      def list(params = {})
        parsed, options = Orb::ItemListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "items",
          query: parsed,
          page: Orb::Internal::Page,
          model: Orb::Item,
          options: options
        )
      end

      # Archive item
      #
      # @overload archive(item_id, request_options: {})
      #
      # @param item_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::Item]
      #
      # @see Orb::Models::ItemArchiveParams
      def archive(item_id, params = {})
        @client.request(
          method: :post,
          path: ["items/%1$s/archive", item_id],
          model: Orb::Item,
          options: params[:request_options]
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
          model: Orb::Item,
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
