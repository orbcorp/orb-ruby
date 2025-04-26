# typed: strong

module Orb
  module Resources
    class Items
      # This endpoint is used to create an [Item](/core-concepts#item).
      sig do
        params(name: String, request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash)))
          .returns(Orb::Models::Item)
      end
      def create(
        # The name of the item.
        name:,
        request_options: {}
      ); end
      # This endpoint can be used to update properties on the Item.
      sig do
        params(
          item_id: String,
          external_connections: T.nilable(T::Array[T.any(Orb::Models::ItemUpdateParams::ExternalConnection, Orb::Internal::AnyHash)]),
          name: T.nilable(String),
          request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
        )
          .returns(Orb::Models::Item)
      end
      def update(item_id, external_connections: nil, name: nil, request_options: {}); end

      # This endpoint returns a list of all Items, ordered in descending order by
      # creation time.
      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
        )
          .returns(Orb::Internal::Page[Orb::Models::Item])
      end
      def list(
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        request_options: {}
      ); end
      # This endpoint returns an item identified by its item_id.
      sig do
        params(
          item_id: String,
          request_options: T.nilable(T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
        )
          .returns(Orb::Models::Item)
      end
      def fetch(item_id, request_options: {}); end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
