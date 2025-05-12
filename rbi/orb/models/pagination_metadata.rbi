# typed: strong

module Orb
  module Models
    class PaginationMetadata < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::PaginationMetadata, Orb::Internal::AnyHash) }

      sig { returns(T::Boolean) }
      attr_accessor :has_more

      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      sig do
        params(has_more: T::Boolean, next_cursor: T.nilable(String)).returns(
          T.attached_class
        )
      end
      def self.new(has_more:, next_cursor:)
      end

      sig do
        override.returns(
          { has_more: T::Boolean, next_cursor: T.nilable(String) }
        )
      end
      def to_hash
      end
    end
  end
end
