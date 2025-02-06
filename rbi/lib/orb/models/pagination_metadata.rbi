# typed: strong

module Orb
  module Models
    class PaginationMetadata < Orb::BaseModel
      Shape = T.type_alias { {has_more: T::Boolean, next_cursor: T.nilable(String)} }

      sig { returns(T::Boolean) }
      attr_accessor :has_more

      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      sig { params(has_more: T::Boolean, next_cursor: T.nilable(String)).void }
      def initialize(has_more:, next_cursor:); end

      sig { returns(Orb::Models::PaginationMetadata::Shape) }
      def to_h; end
    end
  end
end
