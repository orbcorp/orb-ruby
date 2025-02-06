# typed: strong

module Orb
  module Models
    class BillableMetric < Orb::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(Orb::Models::Item) }
      attr_accessor :item

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Symbol) }
      attr_accessor :status

      sig do
        params(
          id: String,
          description: T.nilable(String),
          item: Orb::Models::Item,
          metadata: T::Hash[Symbol, String],
          name: String,
          status: Symbol
        ).void
      end
      def initialize(id:, description:, item:, metadata:, name:, status:)
      end

      sig do
        override.returns(
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

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
