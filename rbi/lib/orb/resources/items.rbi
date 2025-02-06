# typed: strong

module Orb
  module Resources
    class Items
      sig { params(name: String, request_options: Orb::RequestOpts).returns(Orb::Models::Item) }
      def create(name:, request_options: {}); end

      sig do
        params(
          item_id: String,
          external_connections: T.nilable(T::Array[Orb::Models::ItemUpdateParams::ExternalConnection]),
          name: T.nilable(String),
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::Item)
      end
      def update(item_id, external_connections:, name:, request_options: {}); end

      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          request_options: Orb::RequestOpts
        ).returns(Orb::Page[Orb::Models::Item])
      end
      def list(cursor:, limit:, request_options: {}); end

      sig { params(item_id: String, request_options: Orb::RequestOpts).returns(Orb::Models::Item) }
      def fetch(item_id, request_options: {}); end

      sig { params(client: Orb::Client).void }
      def initialize(client:); end
    end
  end
end
