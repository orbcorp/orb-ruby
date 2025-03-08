# typed: strong

module Orb
  module Models
    class BillableMetric < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      sig { returns(Orb::Models::Item) }
      def item
      end

      sig { params(_: Orb::Models::Item).returns(Orb::Models::Item) }
      def item=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      sig { returns(String) }
      def name
      end

      sig { params(_: String).returns(String) }
      def name=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(
          id: String,
          description: T.nilable(String),
          item: Orb::Models::Item,
          metadata: T::Hash[Symbol, String],
          name: String,
          status: Symbol
        )
          .returns(T.attached_class)
      end
      def self.new(id:, description:, item:, metadata:, name:, status:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              description: T.nilable(String),
              item: Orb::Models::Item,
              metadata: T::Hash[Symbol, String],
              name: String,
              status: Symbol
            }
          )
      end
      def to_hash
      end

      class Status < Orb::Enum
        abstract!

        ACTIVE = :active
        DRAFT = :draft
        ARCHIVED = :archived

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
