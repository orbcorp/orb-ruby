# typed: strong

module Orb
  module Models
    class BillableMetric < Orb::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # The Item resource represents a sellable product or good. Items are associated
      #   with all line items, billable metrics, and prices and are used for defining
      #   external sync behavior for invoices and tax calculation purposes.
      sig { returns(Orb::Models::Item) }
      attr_reader :item

      sig { params(item: T.any(Orb::Models::Item, Orb::Util::AnyHash)).void }
      attr_writer :item

      # User specified key-value pairs for the resource. If not present, this defaults
      #   to an empty dictionary. Individual keys can be removed by setting the value to
      #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #   `null`.
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Orb::Models::BillableMetric::Status::TaggedSymbol) }
      attr_accessor :status

      # The Metric resource represents a calculation of a quantity based on events.
      #   Metrics are defined by the query that transforms raw usage events into
      #   meaningful values for your customers.
      sig do
        params(
          id: String,
          description: T.nilable(String),
          item: T.any(Orb::Models::Item, Orb::Util::AnyHash),
          metadata: T::Hash[Symbol, String],
          name: String,
          status: Orb::Models::BillableMetric::Status::OrSymbol
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
              status: Orb::Models::BillableMetric::Status::TaggedSymbol
            }
          )
      end
      def to_hash
      end

      module Status
        extend Orb::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::BillableMetric::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, Orb::Models::BillableMetric::Status::TaggedSymbol) }

        ACTIVE = T.let(:active, Orb::Models::BillableMetric::Status::TaggedSymbol)
        DRAFT = T.let(:draft, Orb::Models::BillableMetric::Status::TaggedSymbol)
        ARCHIVED = T.let(:archived, Orb::Models::BillableMetric::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Orb::Models::BillableMetric::Status::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
