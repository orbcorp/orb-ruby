# typed: strong

module Orb
  module Models
    class AdjustmentIntervalModel < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig do
        returns(
          T.any(
            Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment
          )
        )
      end
      def adjustment
      end

      sig do
        params(
          _: T.any(
            Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment
          )
        )
          .returns(
            T.any(
              Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment,
              Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment,
              Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment,
              Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment,
              Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment
            )
          )
      end
      def adjustment=(_)
      end

      sig { returns(T::Array[String]) }
      def applies_to_price_interval_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def applies_to_price_interval_ids=(_)
      end

      sig { returns(T.nilable(Time)) }
      def end_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def end_date=(_)
      end

      sig { returns(Time) }
      def start_date
      end

      sig { params(_: Time).returns(Time) }
      def start_date=(_)
      end

      sig do
        params(
          id: String,
          adjustment: T.any(
            Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment,
            Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment
          ),
          applies_to_price_interval_ids: T::Array[String],
          end_date: T.nilable(Time),
          start_date: Time
        )
          .void
      end
      def initialize(id:, adjustment:, applies_to_price_interval_ids:, end_date:, start_date:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              adjustment: T.any(
                Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment,
                Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment,
                Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment,
                Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment,
                Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment
              ),
              applies_to_price_interval_ids: T::Array[String],
              end_date: T.nilable(Time),
              start_date: Time
            }
          )
      end
      def to_hash
      end
    end
  end
end
