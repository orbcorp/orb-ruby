# typed: strong

module Orb
  module Models
    class OtherSubLineItem < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::OtherSubLineItem, Orb::Internal::AnyHash) }

      # The total amount for this sub line item.
      sig { returns(String) }
      attr_accessor :amount

      sig { returns(T.nilable(Orb::SubLineItemGrouping)) }
      attr_reader :grouping

      sig { params(grouping: T.nilable(Orb::SubLineItemGrouping::OrHash)).void }
      attr_writer :grouping

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Float) }
      attr_accessor :quantity

      sig { returns(Orb::OtherSubLineItem::Type::TaggedSymbol) }
      attr_accessor :type

      sig do
        params(
          amount: String,
          grouping: T.nilable(Orb::SubLineItemGrouping::OrHash),
          name: String,
          quantity: Float,
          type: Orb::OtherSubLineItem::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The total amount for this sub line item.
        amount:,
        grouping:,
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
            name: String,
            quantity: Float,
            type: Orb::OtherSubLineItem::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::OtherSubLineItem::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NULL = T.let(:"'null'", Orb::OtherSubLineItem::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Orb::OtherSubLineItem::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
