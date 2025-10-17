# typed: strong

module Orb
  module Models
    class NewAmountDiscount < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::NewAmountDiscount, Orb::Internal::AnyHash) }

      sig { returns(Orb::NewAmountDiscount::AdjustmentType::OrSymbol) }
      attr_accessor :adjustment_type

      sig { returns(String) }
      attr_accessor :amount_discount

      # If set, the adjustment will apply to every price on the subscription.
      sig do
        returns(T.nilable(Orb::NewAmountDiscount::AppliesToAll::OrBoolean))
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
      sig { returns(T.nilable(T::Array[Orb::NewAmountDiscount::Filter])) }
      attr_accessor :filters

      # When false, this adjustment will be applied to a single price. Otherwise, it
      # will be applied at the invoice level, possibly to multiple prices.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_invoice_level

      sig { params(is_invoice_level: T::Boolean).void }
      attr_writer :is_invoice_level

      # If set, only prices of the specified type will have the adjustment applied.
      sig { returns(T.nilable(Orb::NewAmountDiscount::PriceType::OrSymbol)) }
      attr_accessor :price_type

      sig do
        params(
          adjustment_type: Orb::NewAmountDiscount::AdjustmentType::OrSymbol,
          amount_discount: String,
          applies_to_all:
            T.nilable(Orb::NewAmountDiscount::AppliesToAll::OrBoolean),
          applies_to_item_ids: T.nilable(T::Array[String]),
          applies_to_price_ids: T.nilable(T::Array[String]),
          currency: T.nilable(String),
          filters: T.nilable(T::Array[Orb::NewAmountDiscount::Filter::OrHash]),
          is_invoice_level: T::Boolean,
          price_type: T.nilable(Orb::NewAmountDiscount::PriceType::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        adjustment_type:,
        amount_discount:,
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
            adjustment_type: Orb::NewAmountDiscount::AdjustmentType::OrSymbol,
            amount_discount: String,
            applies_to_all:
              T.nilable(Orb::NewAmountDiscount::AppliesToAll::OrBoolean),
            applies_to_item_ids: T.nilable(T::Array[String]),
            applies_to_price_ids: T.nilable(T::Array[String]),
            currency: T.nilable(String),
            filters: T.nilable(T::Array[Orb::NewAmountDiscount::Filter]),
            is_invoice_level: T::Boolean,
            price_type: T.nilable(Orb::NewAmountDiscount::PriceType::OrSymbol)
          }
        )
      end
      def to_hash
      end

      module AdjustmentType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::NewAmountDiscount::AdjustmentType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMOUNT_DISCOUNT =
          T.let(
            :amount_discount,
            Orb::NewAmountDiscount::AdjustmentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::NewAmountDiscount::AdjustmentType::TaggedSymbol]
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
            T.all(T::Boolean, Orb::NewAmountDiscount::AppliesToAll)
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE = T.let(true, Orb::NewAmountDiscount::AppliesToAll::TaggedBoolean)

        sig do
          override.returns(
            T::Array[Orb::NewAmountDiscount::AppliesToAll::TaggedBoolean]
          )
        end
        def self.values
        end
      end

      class Filter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::NewAmountDiscount::Filter, Orb::Internal::AnyHash)
          end

        # The property of the price to filter on.
        sig { returns(Orb::NewAmountDiscount::Filter::Field::OrSymbol) }
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig { returns(Orb::NewAmountDiscount::Filter::Operator::OrSymbol) }
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field: Orb::NewAmountDiscount::Filter::Field::OrSymbol,
            operator: Orb::NewAmountDiscount::Filter::Operator::OrSymbol,
            values: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The property of the price to filter on.
          field:,
          # Should prices that match the filter be included or excluded.
          operator:,
          # The IDs or values that match this filter.
          values:
        )
        end

        sig do
          override.returns(
            {
              field: Orb::NewAmountDiscount::Filter::Field::OrSymbol,
              operator: Orb::NewAmountDiscount::Filter::Operator::OrSymbol,
              values: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # The property of the price to filter on.
        module Field
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::NewAmountDiscount::Filter::Field)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(
              :price_id,
              Orb::NewAmountDiscount::Filter::Field::TaggedSymbol
            )
          ITEM_ID =
            T.let(:item_id, Orb::NewAmountDiscount::Filter::Field::TaggedSymbol)
          PRICE_TYPE =
            T.let(
              :price_type,
              Orb::NewAmountDiscount::Filter::Field::TaggedSymbol
            )
          CURRENCY =
            T.let(
              :currency,
              Orb::NewAmountDiscount::Filter::Field::TaggedSymbol
            )
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::NewAmountDiscount::Filter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::NewAmountDiscount::Filter::Field::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Should prices that match the filter be included or excluded.
        module Operator
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Orb::NewAmountDiscount::Filter::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(
              :includes,
              Orb::NewAmountDiscount::Filter::Operator::TaggedSymbol
            )
          EXCLUDES =
            T.let(
              :excludes,
              Orb::NewAmountDiscount::Filter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::NewAmountDiscount::Filter::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # If set, only prices of the specified type will have the adjustment applied.
      module PriceType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::NewAmountDiscount::PriceType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USAGE = T.let(:usage, Orb::NewAmountDiscount::PriceType::TaggedSymbol)
        FIXED_IN_ADVANCE =
          T.let(
            :fixed_in_advance,
            Orb::NewAmountDiscount::PriceType::TaggedSymbol
          )
        FIXED_IN_ARREARS =
          T.let(
            :fixed_in_arrears,
            Orb::NewAmountDiscount::PriceType::TaggedSymbol
          )
        FIXED = T.let(:fixed, Orb::NewAmountDiscount::PriceType::TaggedSymbol)
        IN_ARREARS =
          T.let(:in_arrears, Orb::NewAmountDiscount::PriceType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::NewAmountDiscount::PriceType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
