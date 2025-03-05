# typed: strong

module Orb
  module Models
    class AddSubscriptionAdjustmentParams < Orb::BaseModel
      sig do
        returns(
          T.any(
            Orb::Models::NewAdjustmentModel::NewPercentageDiscount,
            Orb::Models::NewAdjustmentModel::NewUsageDiscount,
            Orb::Models::NewAdjustmentModel::NewAmountDiscount,
            Orb::Models::NewAdjustmentModel::NewMinimum,
            Orb::Models::NewAdjustmentModel::NewMaximum
          )
        )
      end
      def adjustment
      end

      sig do
        params(
          _: T.any(
            Orb::Models::NewAdjustmentModel::NewPercentageDiscount,
            Orb::Models::NewAdjustmentModel::NewUsageDiscount,
            Orb::Models::NewAdjustmentModel::NewAmountDiscount,
            Orb::Models::NewAdjustmentModel::NewMinimum,
            Orb::Models::NewAdjustmentModel::NewMaximum
          )
        )
          .returns(
            T.any(
              Orb::Models::NewAdjustmentModel::NewPercentageDiscount,
              Orb::Models::NewAdjustmentModel::NewUsageDiscount,
              Orb::Models::NewAdjustmentModel::NewAmountDiscount,
              Orb::Models::NewAdjustmentModel::NewMinimum,
              Orb::Models::NewAdjustmentModel::NewMaximum
            )
          )
      end
      def adjustment=(_)
      end

      sig { returns(T.nilable(Time)) }
      def end_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def end_date=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def plan_phase_order
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def plan_phase_order=(_)
      end

      sig { returns(T.nilable(Time)) }
      def start_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def start_date=(_)
      end

      sig do
        params(
          adjustment: T.any(
            Orb::Models::NewAdjustmentModel::NewPercentageDiscount,
            Orb::Models::NewAdjustmentModel::NewUsageDiscount,
            Orb::Models::NewAdjustmentModel::NewAmountDiscount,
            Orb::Models::NewAdjustmentModel::NewMinimum,
            Orb::Models::NewAdjustmentModel::NewMaximum
          ),
          end_date: T.nilable(Time),
          plan_phase_order: T.nilable(Integer),
          start_date: T.nilable(Time)
        )
          .void
      end
      def initialize(adjustment:, end_date: nil, plan_phase_order: nil, start_date: nil)
      end

      sig do
        override
          .returns(
            {
              adjustment: T.any(
                Orb::Models::NewAdjustmentModel::NewPercentageDiscount,
                Orb::Models::NewAdjustmentModel::NewUsageDiscount,
                Orb::Models::NewAdjustmentModel::NewAmountDiscount,
                Orb::Models::NewAdjustmentModel::NewMinimum,
                Orb::Models::NewAdjustmentModel::NewMaximum
              ),
              end_date: T.nilable(Time),
              plan_phase_order: T.nilable(Integer),
              start_date: T.nilable(Time)
            }
          )
      end
      def to_hash
      end
    end
  end
end
