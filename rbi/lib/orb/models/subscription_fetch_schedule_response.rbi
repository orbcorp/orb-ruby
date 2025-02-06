# typed: strong

module Orb
  module Models
    class SubscriptionFetchScheduleResponse < Orb::BaseModel
      Shape = T.type_alias do
        {
          created_at: Time,
          end_date: T.nilable(Time),
          plan: Orb::Models::SubscriptionFetchScheduleResponse::Plan,
          start_date: Time
        }
      end

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      sig { returns(Orb::Models::SubscriptionFetchScheduleResponse::Plan) }
      attr_accessor :plan

      sig { returns(Time) }
      attr_accessor :start_date

      sig do
        params(
          created_at: Time,
          end_date: T.nilable(Time),
          plan: Orb::Models::SubscriptionFetchScheduleResponse::Plan,
          start_date: Time
        ).void
      end
      def initialize(created_at:, end_date:, plan:, start_date:); end

      sig { returns(Orb::Models::SubscriptionFetchScheduleResponse::Shape) }
      def to_h; end

      class Plan < Orb::BaseModel
        Shape = T.type_alias do
          {id: T.nilable(String), external_plan_id: T.nilable(String), name: T.nilable(String)}
        end

        sig { returns(T.nilable(String)) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :external_plan_id

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig do
          params(id: T.nilable(String), external_plan_id: T.nilable(String), name: T.nilable(String)).void
        end
        def initialize(id:, external_plan_id:, name:); end

        sig { returns(Orb::Models::SubscriptionFetchScheduleResponse::Plan::Shape) }
        def to_h; end
      end
    end
  end
end
