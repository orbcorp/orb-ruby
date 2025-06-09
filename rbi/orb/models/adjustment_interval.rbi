# typed: strong

module Orb
  module Models
    class AdjustmentInterval < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::AdjustmentInterval, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Orb::AdjustmentInterval::Adjustment::Variants) }
      attr_accessor :adjustment

      # The price interval IDs that this adjustment applies to.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_interval_ids

      # The end date of the adjustment interval.
      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      # The start date of the adjustment interval.
      sig { returns(Time) }
      attr_accessor :start_date

      sig do
        params(
          id: String,
          adjustment:
            T.any(
              Orb::PlanPhaseUsageDiscountAdjustment::OrHash,
              Orb::PlanPhaseAmountDiscountAdjustment::OrHash,
              Orb::PlanPhasePercentageDiscountAdjustment::OrHash,
              Orb::PlanPhaseMinimumAdjustment::OrHash,
              Orb::PlanPhaseMaximumAdjustment::OrHash
            ),
          applies_to_price_interval_ids: T::Array[String],
          end_date: T.nilable(Time),
          start_date: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        adjustment:,
        # The price interval IDs that this adjustment applies to.
        applies_to_price_interval_ids:,
        # The end date of the adjustment interval.
        end_date:,
        # The start date of the adjustment interval.
        start_date:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            adjustment: Orb::AdjustmentInterval::Adjustment::Variants,
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            start_date: Time
          }
        )
      end
      def to_hash
      end

      module Adjustment
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Orb::PlanPhaseUsageDiscountAdjustment,
              Orb::PlanPhaseAmountDiscountAdjustment,
              Orb::PlanPhasePercentageDiscountAdjustment,
              Orb::PlanPhaseMinimumAdjustment,
              Orb::PlanPhaseMaximumAdjustment
            )
          end

        sig do
          override.returns(
            T::Array[Orb::AdjustmentInterval::Adjustment::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
