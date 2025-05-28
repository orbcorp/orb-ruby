# typed: strong

module Orb
  module Resources
    class Items
      # This endpoint is used to create an [Item](/core-concepts#item).
      sig do
        params(
          name: String,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Item)
      end
      def create(
        # The name of the item.
        name:,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        request_options: {}
      )
      end

      # This endpoint can be used to update properties on the Item.
      sig do
        params(
          item_id: String,
          external_connections:
            T.nilable(
              T::Array[Orb::ItemUpdateParams::ExternalConnection::OrHash]
            ),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          name: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Item)
      end
      def update(
        item_id,
        external_connections: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        name: nil,
        request_options: {}
      )
      end

      # This endpoint returns a list of all Items, ordered in descending order by
      # creation time.
      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Internal::Page[Orb::Item])
      end
      def list(
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        request_options: {}
      )
      end

      # Archive item
      sig do
        params(
          item_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Item)
      end
      def archive(item_id, request_options: {})
      end

      # This endpoint returns an item identified by its item_id.
      sig do
        params(
          item_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Item)
      end
      def fetch(item_id, request_options: {})
      end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
