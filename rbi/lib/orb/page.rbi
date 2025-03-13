# typed: strong

module Orb
  class Page
    include Orb::BasePage

    Elem = type_member

    sig { returns(T::Array[Elem]) }
    def data
    end

    sig { params(_: T::Array[Elem]).returns(T::Array[Elem]) }
    def data=(_)
    end

    sig { returns(PaginationMetadata) }
    def pagination_metadata
    end

    sig { params(_: PaginationMetadata).returns(PaginationMetadata) }
    def pagination_metadata=(_)
    end

    sig do
      params(
        client: Orb::BaseClient,
        req: Orb::BaseClient::RequestComponentsShape,
        headers: T.any(T::Hash[String, String], Net::HTTPHeader),
        page_data: T::Hash[Symbol, T.anything]
      )
        .returns(T.attached_class)
    end
    def self.new(client:, req:, headers:, page_data:)
    end

    class PaginationMetadata < Orb::BaseModel
      sig { returns(T::Boolean) }
      def has_more
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def has_more=(_)
      end

      sig { returns(T.nilable(String)) }
      def next_cursor
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def next_cursor=(_)
      end

      sig { params(has_more: T::Boolean, next_cursor: T.nilable(String)).returns(T.attached_class) }
      def self.new(has_more:, next_cursor:)
      end

      sig { override.returns({has_more: T::Boolean, next_cursor: T.nilable(String)}) }
      def to_hash
      end
    end
  end
end
