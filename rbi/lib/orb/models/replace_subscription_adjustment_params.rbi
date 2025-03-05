# typed: strong

module Orb
  module Models
    class ReplaceSubscriptionAdjustmentParams < Orb::BaseModel
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

      sig { returns(String) }
      def replaces_adjustment_id
      end

      sig { params(_: String).returns(String) }
      def replaces_adjustment_id=(_)
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
          replaces_adjustment_id: String
        )
          .void
      end
      def initialize(adjustment:, replaces_adjustment_id:)
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
              replaces_adjustment_id: String
            }
          )
      end
      def to_hash
      end
    end
  end
end
