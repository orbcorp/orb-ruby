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
      sig { returns(T::Array[Orb::TransformPriceFilter]) }
      attr_accessor :filters

      # True for adjustments that apply to an entire invocice, false for adjustments
      # that apply to only one price.
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
          filters: T::Array[Orb::TransformPriceFilter::OrHash],
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
        # True for adjustments that apply to an entire invocice, false for adjustments
        # that apply to only one price.
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
            filters: T::Array[Orb::TransformPriceFilter],
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
    end
  end
end
