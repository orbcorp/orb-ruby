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

      # The Item resource represents a sellable product or good. Items are associated
      #   with all line items, billable metrics, and prices and are used for defining
      #   external sync behavior for invoices and tax calculation purposes.
      sig { returns(Orb::Models::Item) }
      def item
      end

      sig { params(_: Orb::Models::Item).returns(Orb::Models::Item) }
      def item=(_)
      end

      # User specified key-value pairs for the resource. If not present, this defaults
      #   to an empty dictionary. Individual keys can be removed by setting the value to
      #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #   `null`.
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

      # The Metric resource represents a calculation of a quantity based on events.
      #   Metrics are defined by the query that transforms raw usage events into
      #   meaningful values for your customers.
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
