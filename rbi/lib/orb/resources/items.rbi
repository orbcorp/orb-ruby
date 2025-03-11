# typed: strong

module Orb
  module Resources
    class Items
      sig do
        params(name: String, request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])))
          .returns(Orb::Models::Item)
      end
      def create(name:, request_options: {})
      end

      sig do
        params(
            item_id: String,
            external_connections: T.nilable(T::Array[Orb::Models::ItemUpdateParams::ExternalConnection]),
            name: T.nilable(String),
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Models::Item)
      end
      def update(item_id, external_connections: nil, name: nil, request_options: {})
      end

      sig do
        params(
            cursor: T.nilable(String),
            limit: Integer,
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Page[Orb::Models::Item])
      end
      def list(cursor: nil, limit: nil, request_options: {})
      end

      sig do
        params(
            item_id: String,
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Models::Item)
      end
      def fetch(item_id, request_options: {})
      end

      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
