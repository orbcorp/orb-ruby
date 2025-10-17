# typed: strong

module Orb
  module Models
    class MonetaryAmountDiscountAdjustment < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::MonetaryAmountDiscountAdjustment, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig do
        returns(
          Orb::MonetaryAmountDiscountAdjustment::AdjustmentType::TaggedSymbol
        )
      end
      attr_accessor :adjustment_type

      # The value applied by an adjustment.
      sig { returns(String) }
      attr_accessor :amount

      # The amount by which to discount the prices this adjustment applies to in a given
      # billing period.
      sig { returns(String) }
      attr_accessor :amount_discount

      # The price IDs that this adjustment applies to.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_ids

      # The filters that determine which prices to apply this adjustment to.
      sig { returns(T::Array[Orb::MonetaryAmountDiscountAdjustment::Filter]) }
      attr_accessor :filters

      # True for adjustments that apply to an entire invoice, false for adjustments that
      # apply to only one price.
      sig { returns(T::Boolean) }
      attr_accessor :is_invoice_level

      # The reason for the adjustment.
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      # The adjustment id this adjustment replaces. This adjustment will take the place
      # of the replaced adjustment in plan version migrations.
      sig { returns(T.nilable(String)) }
      attr_accessor :replaces_adjustment_id

      sig do
        params(
          id: String,
          adjustment_type:
            Orb::MonetaryAmountDiscountAdjustment::AdjustmentType::OrSymbol,
          amount: String,
          amount_discount: String,
          applies_to_price_ids: T::Array[String],
          filters:
            T::Array[Orb::MonetaryAmountDiscountAdjustment::Filter::OrHash],
          is_invoice_level: T::Boolean,
          reason: T.nilable(String),
          replaces_adjustment_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        adjustment_type:,
        # The value applied by an adjustment.
        amount:,
        # The amount by which to discount the prices this adjustment applies to in a given
        # billing period.
        amount_discount:,
        # The price IDs that this adjustment applies to.
        applies_to_price_ids:,
        # The filters that determine which prices to apply this adjustment to.
        filters:,
        # True for adjustments that apply to an entire invoice, false for adjustments that
        # apply to only one price.
        is_invoice_level:,
        # The reason for the adjustment.
        reason:,
        # The adjustment id this adjustment replaces. This adjustment will take the place
        # of the replaced adjustment in plan version migrations.
        replaces_adjustment_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            adjustment_type:
              Orb::MonetaryAmountDiscountAdjustment::AdjustmentType::TaggedSymbol,
            amount: String,
            amount_discount: String,
            applies_to_price_ids: T::Array[String],
            filters: T::Array[Orb::MonetaryAmountDiscountAdjustment::Filter],
            is_invoice_level: T::Boolean,
            reason: T.nilable(String),
            replaces_adjustment_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module AdjustmentType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::MonetaryAmountDiscountAdjustment::AdjustmentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMOUNT_DISCOUNT =
          T.let(
            :amount_discount,
            Orb::MonetaryAmountDiscountAdjustment::AdjustmentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::MonetaryAmountDiscountAdjustment::AdjustmentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Filter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::MonetaryAmountDiscountAdjustment::Filter,
              Orb::Internal::AnyHash
            )
          end

        # The property of the price to filter on.
        sig do
          returns(
            Orb::MonetaryAmountDiscountAdjustment::Filter::Field::TaggedSymbol
          )
        end
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig do
          returns(
            Orb::MonetaryAmountDiscountAdjustment::Filter::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field:
              Orb::MonetaryAmountDiscountAdjustment::Filter::Field::OrSymbol,
            operator:
              Orb::MonetaryAmountDiscountAdjustment::Filter::Operator::OrSymbol,
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
              field:
                Orb::MonetaryAmountDiscountAdjustment::Filter::Field::TaggedSymbol,
              operator:
                Orb::MonetaryAmountDiscountAdjustment::Filter::Operator::TaggedSymbol,
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
              T.all(
                Symbol,
                Orb::MonetaryAmountDiscountAdjustment::Filter::Field
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(
              :price_id,
              Orb::MonetaryAmountDiscountAdjustment::Filter::Field::TaggedSymbol
            )
          ITEM_ID =
            T.let(
              :item_id,
              Orb::MonetaryAmountDiscountAdjustment::Filter::Field::TaggedSymbol
            )
          PRICE_TYPE =
            T.let(
              :price_type,
              Orb::MonetaryAmountDiscountAdjustment::Filter::Field::TaggedSymbol
            )
          CURRENCY =
            T.let(
              :currency,
              Orb::MonetaryAmountDiscountAdjustment::Filter::Field::TaggedSymbol
            )
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::MonetaryAmountDiscountAdjustment::Filter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::MonetaryAmountDiscountAdjustment::Filter::Field::TaggedSymbol
              ]
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
              T.all(
                Symbol,
                Orb::MonetaryAmountDiscountAdjustment::Filter::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(
              :includes,
              Orb::MonetaryAmountDiscountAdjustment::Filter::Operator::TaggedSymbol
            )
          EXCLUDES =
            T.let(
              :excludes,
              Orb::MonetaryAmountDiscountAdjustment::Filter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::MonetaryAmountDiscountAdjustment::Filter::Operator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
