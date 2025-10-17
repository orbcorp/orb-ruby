# typed: strong

module Orb
  module Models
    class PlanPhasePercentageDiscountAdjustment < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::PlanPhasePercentageDiscountAdjustment,
            Orb::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig do
        returns(
          Orb::PlanPhasePercentageDiscountAdjustment::AdjustmentType::TaggedSymbol
        )
      end
      attr_accessor :adjustment_type

      # The price IDs that this adjustment applies to.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_ids

      # The filters that determine which prices to apply this adjustment to.
      sig do
        returns(T::Array[Orb::PlanPhasePercentageDiscountAdjustment::Filter])
      end
      attr_accessor :filters

      # True for adjustments that apply to an entire invoice, false for adjustments that
      # apply to only one price.
      sig { returns(T::Boolean) }
      attr_accessor :is_invoice_level

      # The percentage (as a value between 0 and 1) by which to discount the price
      # intervals this adjustment applies to in a given billing period.
      sig { returns(Float) }
      attr_accessor :percentage_discount

      # The plan phase in which this adjustment is active.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :plan_phase_order

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
            Orb::PlanPhasePercentageDiscountAdjustment::AdjustmentType::OrSymbol,
          applies_to_price_ids: T::Array[String],
          filters:
            T::Array[
              Orb::PlanPhasePercentageDiscountAdjustment::Filter::OrHash
            ],
          is_invoice_level: T::Boolean,
          percentage_discount: Float,
          plan_phase_order: T.nilable(Integer),
          reason: T.nilable(String),
          replaces_adjustment_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        adjustment_type:,
        # The price IDs that this adjustment applies to.
        applies_to_price_ids:,
        # The filters that determine which prices to apply this adjustment to.
        filters:,
        # True for adjustments that apply to an entire invoice, false for adjustments that
        # apply to only one price.
        is_invoice_level:,
        # The percentage (as a value between 0 and 1) by which to discount the price
        # intervals this adjustment applies to in a given billing period.
        percentage_discount:,
        # The plan phase in which this adjustment is active.
        plan_phase_order:,
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
              Orb::PlanPhasePercentageDiscountAdjustment::AdjustmentType::TaggedSymbol,
            applies_to_price_ids: T::Array[String],
            filters:
              T::Array[Orb::PlanPhasePercentageDiscountAdjustment::Filter],
            is_invoice_level: T::Boolean,
            percentage_discount: Float,
            plan_phase_order: T.nilable(Integer),
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
            T.all(
              Symbol,
              Orb::PlanPhasePercentageDiscountAdjustment::AdjustmentType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERCENTAGE_DISCOUNT =
          T.let(
            :percentage_discount,
            Orb::PlanPhasePercentageDiscountAdjustment::AdjustmentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::PlanPhasePercentageDiscountAdjustment::AdjustmentType::TaggedSymbol
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
              Orb::PlanPhasePercentageDiscountAdjustment::Filter,
              Orb::Internal::AnyHash
            )
          end

        # The property of the price to filter on.
        sig do
          returns(
            Orb::PlanPhasePercentageDiscountAdjustment::Filter::Field::TaggedSymbol
          )
        end
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig do
          returns(
            Orb::PlanPhasePercentageDiscountAdjustment::Filter::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field:
              Orb::PlanPhasePercentageDiscountAdjustment::Filter::Field::OrSymbol,
            operator:
              Orb::PlanPhasePercentageDiscountAdjustment::Filter::Operator::OrSymbol,
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
                Orb::PlanPhasePercentageDiscountAdjustment::Filter::Field::TaggedSymbol,
              operator:
                Orb::PlanPhasePercentageDiscountAdjustment::Filter::Operator::TaggedSymbol,
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
                Orb::PlanPhasePercentageDiscountAdjustment::Filter::Field
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(
              :price_id,
              Orb::PlanPhasePercentageDiscountAdjustment::Filter::Field::TaggedSymbol
            )
          ITEM_ID =
            T.let(
              :item_id,
              Orb::PlanPhasePercentageDiscountAdjustment::Filter::Field::TaggedSymbol
            )
          PRICE_TYPE =
            T.let(
              :price_type,
              Orb::PlanPhasePercentageDiscountAdjustment::Filter::Field::TaggedSymbol
            )
          CURRENCY =
            T.let(
              :currency,
              Orb::PlanPhasePercentageDiscountAdjustment::Filter::Field::TaggedSymbol
            )
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::PlanPhasePercentageDiscountAdjustment::Filter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::PlanPhasePercentageDiscountAdjustment::Filter::Field::TaggedSymbol
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
                Orb::PlanPhasePercentageDiscountAdjustment::Filter::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(
              :includes,
              Orb::PlanPhasePercentageDiscountAdjustment::Filter::Operator::TaggedSymbol
            )
          EXCLUDES =
            T.let(
              :excludes,
              Orb::PlanPhasePercentageDiscountAdjustment::Filter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::PlanPhasePercentageDiscountAdjustment::Filter::Operator::TaggedSymbol
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
