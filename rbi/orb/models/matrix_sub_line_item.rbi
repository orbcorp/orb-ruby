# typed: strong

module Orb
  module Models
    class MatrixSubLineItem < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::MatrixSubLineItem, Orb::Internal::AnyHash) }

      # The total amount for this sub line item.
      sig { returns(String) }
      attr_accessor :amount

      sig { returns(T.nilable(Orb::SubLineItemGrouping)) }
      attr_reader :grouping

      sig { params(grouping: T.nilable(Orb::SubLineItemGrouping::OrHash)).void }
      attr_writer :grouping

      sig { returns(Orb::SubLineItemMatrixConfig) }
      attr_reader :matrix_config

      sig { params(matrix_config: Orb::SubLineItemMatrixConfig::OrHash).void }
      attr_writer :matrix_config

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Float) }
      attr_accessor :quantity

      sig { returns(Orb::MatrixSubLineItem::Type::TaggedSymbol) }
      attr_accessor :type

      sig do
        params(
          amount: String,
          grouping: T.nilable(Orb::SubLineItemGrouping::OrHash),
          matrix_config: Orb::SubLineItemMatrixConfig::OrHash,
          name: String,
          quantity: Float,
          type: Orb::MatrixSubLineItem::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The total amount for this sub line item.
        amount:,
        grouping:,
        matrix_config:,
        name:,
        quantity:,
        type:
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            grouping: T.nilable(Orb::SubLineItemGrouping),
            matrix_config: Orb::SubLineItemMatrixConfig,
            name: String,
            quantity: Float,
            type: Orb::MatrixSubLineItem::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::MatrixSubLineItem::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MATRIX = T.let(:matrix, Orb::MatrixSubLineItem::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Orb::MatrixSubLineItem::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
