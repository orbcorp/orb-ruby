# typed: strong

module Orb
  module Internal
    class Page
      include Orb::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      sig { returns(PaginationMetadata) }
      attr_accessor :pagination_metadata

      sig { returns(String) }
      def inspect; end

      class PaginationMetadata < Orb::Internal::Type::BaseModel
        sig { returns(T::Boolean) }
        attr_accessor :has_more

        sig { returns(T.nilable(String)) }
        attr_accessor :next_cursor

        sig { params(has_more: T::Boolean, next_cursor: T.nilable(String)).returns(T.attached_class) }
        def self.new(has_more:, next_cursor:); end

        sig { override.returns({has_more: T::Boolean, next_cursor: T.nilable(String)}) }
        def to_hash; end
      end
    end
  end
end
