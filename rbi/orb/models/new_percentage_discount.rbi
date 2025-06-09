# typed: strong

module Orb
  module Models
    class NewPercentageDiscount < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::NewPercentageDiscount, Orb::Internal::AnyHash)
        end

      sig { returns(Orb::NewPercentageDiscount::AdjustmentType::OrSymbol) }
      attr_accessor :adjustment_type

      sig { returns(Float) }
      attr_accessor :percentage_discount

      # If set, the adjustment will apply to every price on the subscription.
      sig do
        returns(T.nilable(Orb::NewPercentageDiscount::AppliesToAll::OrBoolean))
      end
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
      sig do
        returns(T.nilable(Orb::NewPercentageDiscount::PriceType::OrSymbol))
      end
      attr_accessor :price_type

      sig do
        params(
          adjustment_type: Orb::NewPercentageDiscount::AdjustmentType::OrSymbol,
          percentage_discount: Float,
          applies_to_all:
            T.nilable(Orb::NewPercentageDiscount::AppliesToAll::OrBoolean),
          applies_to_item_ids: T.nilable(T::Array[String]),
          applies_to_price_ids: T.nilable(T::Array[String]),
          currency: T.nilable(String),
          filters: T.nilable(T::Array[Orb::TransformPriceFilter::OrHash]),
          is_invoice_level: T::Boolean,
          price_type: T.nilable(Orb::NewPercentageDiscount::PriceType::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        adjustment_type:,
        percentage_discount:,
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
            adjustment_type:
              Orb::NewPercentageDiscount::AdjustmentType::OrSymbol,
            percentage_discount: Float,
            applies_to_all:
              T.nilable(Orb::NewPercentageDiscount::AppliesToAll::OrBoolean),
            applies_to_item_ids: T.nilable(T::Array[String]),
            applies_to_price_ids: T.nilable(T::Array[String]),
            currency: T.nilable(String),
            filters: T.nilable(T::Array[Orb::TransformPriceFilter]),
            is_invoice_level: T::Boolean,
            price_type:
              T.nilable(Orb::NewPercentageDiscount::PriceType::OrSymbol)
          }
        )
      end
      def to_hash
      end

      module AdjustmentType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::NewPercentageDiscount::AdjustmentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERCENTAGE_DISCOUNT =
          T.let(
            :percentage_discount,
            Orb::NewPercentageDiscount::AdjustmentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::NewPercentageDiscount::AdjustmentType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # If set, the adjustment will apply to every price on the subscription.
      module AppliesToAll
        extend Orb::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(T::Boolean, Orb::NewPercentageDiscount::AppliesToAll)
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(true, Orb::NewPercentageDiscount::AppliesToAll::TaggedBoolean)

        sig do
          override.returns(
            T::Array[Orb::NewPercentageDiscount::AppliesToAll::TaggedBoolean]
          )
        end
        def self.values
        end
      end

      # If set, only prices of the specified type will have the adjustment applied.
      module PriceType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::NewPercentageDiscount::PriceType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USAGE =
          T.let(:usage, Orb::NewPercentageDiscount::PriceType::TaggedSymbol)
        FIXED_IN_ADVANCE =
          T.let(
            :fixed_in_advance,
            Orb::NewPercentageDiscount::PriceType::TaggedSymbol
          )
        FIXED_IN_ARREARS =
          T.let(
            :fixed_in_arrears,
            Orb::NewPercentageDiscount::PriceType::TaggedSymbol
          )
        FIXED =
          T.let(:fixed, Orb::NewPercentageDiscount::PriceType::TaggedSymbol)
        IN_ARREARS =
          T.let(
            :in_arrears,
            Orb::NewPercentageDiscount::PriceType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::NewPercentageDiscount::PriceType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
