# typed: strong

module Orb
  module Models
    class NewMinimum < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::NewMinimum, Orb::Internal::AnyHash) }

      sig { returns(Orb::NewMinimum::AdjustmentType::OrSymbol) }
      attr_accessor :adjustment_type

      # The item ID that revenue from this minimum will be attributed to.
      sig { returns(String) }
      attr_accessor :item_id

      sig { returns(String) }
      attr_accessor :minimum_amount

      # If set, the adjustment will apply to every price on the subscription.
      sig { returns(T.nilable(Orb::NewMinimum::AppliesToAll::OrBoolean)) }
      attr_accessor :applies_to_all

      # The set of item IDs to which this adjustment applies.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :applies_to_item_ids

      # The set of price IDs to which this adjustment applies.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :applies_to_price_ids

      # If set, only prices in the specified currency will have the adjustment applied.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      # A list of filters that determine which prices this adjustment will apply to.
      sig { returns(T.nilable(T::Array[Orb::TransformPriceFilter])) }
      attr_accessor :filters

      # When false, this adjustment will be applied to a single price. Otherwise, it
      # will be applied at the invoice level, possibly to multiple prices.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_invoice_level

      sig { params(is_invoice_level: T::Boolean).void }
      attr_writer :is_invoice_level

      # If set, only prices of the specified type will have the adjustment applied.
      sig { returns(T.nilable(Orb::NewMinimum::PriceType::OrSymbol)) }
      attr_accessor :price_type

      sig do
        params(
          adjustment_type: Orb::NewMinimum::AdjustmentType::OrSymbol,
          item_id: String,
          minimum_amount: String,
          applies_to_all: T.nilable(Orb::NewMinimum::AppliesToAll::OrBoolean),
          applies_to_item_ids: T.nilable(T::Array[String]),
          applies_to_price_ids: T.nilable(T::Array[String]),
          currency: T.nilable(String),
          filters: T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
          is_invoice_level: T::Boolean,
          price_type: T.nilable(Orb::NewMinimum::PriceType::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        adjustment_type:,
        # The item ID that revenue from this minimum will be attributed to.
        item_id:,
        minimum_amount:,
        # If set, the adjustment will apply to every price on the subscription.
        applies_to_all: nil,
        # The set of item IDs to which this adjustment applies.
        applies_to_item_ids: nil,
        # The set of price IDs to which this adjustment applies.
        applies_to_price_ids: nil,
        # If set, only prices in the specified currency will have the adjustment applied.
        currency: nil,
        # A list of filters that determine which prices this adjustment will apply to.
        filters: nil,
        # When false, this adjustment will be applied to a single price. Otherwise, it
        # will be applied at the invoice level, possibly to multiple prices.
        is_invoice_level: nil,
        # If set, only prices of the specified type will have the adjustment applied.
        price_type: nil
      )
      end

      sig do
        override.returns(
          {
            adjustment_type: Orb::NewMinimum::AdjustmentType::OrSymbol,
            item_id: String,
            minimum_amount: String,
            applies_to_all: T.nilable(Orb::NewMinimum::AppliesToAll::OrBoolean),
            applies_to_item_ids: T.nilable(T::Array[String]),
            applies_to_price_ids: T.nilable(T::Array[String]),
            currency: T.nilable(String),
            filters: T.nilable(T::Array[Orb::TransformPriceFilter]),
            is_invoice_level: T::Boolean,
            price_type: T.nilable(Orb::NewMinimum::PriceType::OrSymbol)
          }
        )
      end
      def to_hash
      end

      module AdjustmentType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::NewMinimum::AdjustmentType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MINIMUM = T.let(:minimum, Orb::NewMinimum::AdjustmentType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::NewMinimum::AdjustmentType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # If set, the adjustment will apply to every price on the subscription.
      module AppliesToAll
        extend Orb::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias { T.all(T::Boolean, Orb::NewMinimum::AppliesToAll) }
        OrBoolean = T.type_alias { T::Boolean }

        TRUE = T.let(true, Orb::NewMinimum::AppliesToAll::TaggedBoolean)

        sig do
          override.returns(
            T::Array[Orb::NewMinimum::AppliesToAll::TaggedBoolean]
          )
        end
        def self.values
        end
      end

      # If set, only prices of the specified type will have the adjustment applied.
      module PriceType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::NewMinimum::PriceType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USAGE = T.let(:usage, Orb::NewMinimum::PriceType::TaggedSymbol)
        FIXED_IN_ADVANCE =
          T.let(:fixed_in_advance, Orb::NewMinimum::PriceType::TaggedSymbol)
        FIXED_IN_ARREARS =
          T.let(:fixed_in_arrears, Orb::NewMinimum::PriceType::TaggedSymbol)
        FIXED = T.let(:fixed, Orb::NewMinimum::PriceType::TaggedSymbol)
        IN_ARREARS =
          T.let(:in_arrears, Orb::NewMinimum::PriceType::TaggedSymbol)

        sig do
          override.returns(T::Array[Orb::NewMinimum::PriceType::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
