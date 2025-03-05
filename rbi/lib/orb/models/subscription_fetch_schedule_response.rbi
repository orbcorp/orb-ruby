# typed: strong

module Orb
  module Models
    class SubscriptionFetchScheduleResponse < Orb::BaseModel
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Time)) }
      def end_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def end_date=(_)
      end

      sig { returns(Orb::Models::PlanMinifiedModel) }
      def plan
      end

      sig { params(_: Orb::Models::PlanMinifiedModel).returns(Orb::Models::PlanMinifiedModel) }
      def plan=(_)
      end

      sig { returns(Time) }
      def start_date
      end

      sig { params(_: Time).returns(Time) }
      def start_date=(_)
      end

      sig do
        params(
          created_at: Time,
          end_date: T.nilable(Time),
          plan: Orb::Models::PlanMinifiedModel,
          start_date: Time
        )
          .void
      end
      def initialize(created_at:, end_date:, plan:, start_date:)
      end

      sig do
        override
          .returns(
            {created_at: Time, end_date: T.nilable(Time), plan: Orb::Models::PlanMinifiedModel, start_date: Time}
          )
      end
      def to_hash
      end
    end
  end
end
