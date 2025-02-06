# typed: strong

module Orb
  class Page
    include Orb::BasePage

    Elem = type_member

    sig { returns(T::Array[Elem]) }
    attr_accessor :data

    sig { returns(PaginationMetadata) }
    attr_accessor :pagination_metadata

    sig do
      params(
        client: Orb::BaseClient,
        req: Orb::BaseClient::RequestShape,
        headers: T::Hash[String, String],
        unwrapped: T::Hash[Symbol, T.anything]
      ).void
    end
    def initialize(client:, req:, headers:, unwrapped:); end

    class PaginationMetadata < Orb::BaseModel
      sig { returns(T::Boolean) }
      attr_accessor :has_more

      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      sig { params(has_more: T::Boolean, next_cursor: T.nilable(String)).void }
      def initialize(has_more:, next_cursor:); end

      sig { override.returns({has_more: T::Boolean, next_cursor: T.nilable(String)}) }
      def to_hash; end
    end
  end
end
