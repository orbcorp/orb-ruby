# typed: strong

module Orb
  module Models
    class PaginationMetadataModel < Orb::BaseModel
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

      sig { params(has_more: T::Boolean, next_cursor: T.nilable(String)).void }
      def initialize(has_more:, next_cursor:)
      end

      sig { override.returns({has_more: T::Boolean, next_cursor: T.nilable(String)}) }
      def to_hash
      end
    end
  end
end
