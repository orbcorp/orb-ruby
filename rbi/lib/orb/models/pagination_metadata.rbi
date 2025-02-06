# typed: strong

module Orb
  module Models
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
