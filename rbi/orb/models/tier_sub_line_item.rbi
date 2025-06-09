# typed: strong

module Orb
  module Models
    class TierSubLineItem < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::TierSubLineItem, Orb::Internal::AnyHash) }

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

      sig { returns(Orb::TierConfig) }
      attr_reader :tier_config

      sig { params(tier_config: Orb::TierConfig::OrHash).void }
      attr_writer :tier_config

      sig { returns(Orb::TierSubLineItem::Type::TaggedSymbol) }
      attr_accessor :type

      sig do
        params(
          amount: String,
          grouping: T.nilable(Orb::SubLineItemGrouping::OrHash),
          name: String,
          quantity: Float,
          tier_config: Orb::TierConfig::OrHash,
          type: Orb::TierSubLineItem::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The total amount for this sub line item.
        amount:,
        grouping:,
        name:,
        quantity:,
        tier_config:,
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
            tier_config: Orb::TierConfig,
            type: Orb::TierSubLineItem::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::TierSubLineItem::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TIER = T.let(:tier, Orb::TierSubLineItem::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Orb::TierSubLineItem::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
