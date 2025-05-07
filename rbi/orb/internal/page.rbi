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

      # @api private
      sig { returns(String) }
      def inspect
      end

      class PaginationMetadata < Orb::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

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
end
