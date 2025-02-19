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

      sig { returns(Orb::Models::SubscriptionFetchScheduleResponse::Plan) }
      def plan
      end

      sig do
        params(_: Orb::Models::SubscriptionFetchScheduleResponse::Plan)
          .returns(Orb::Models::SubscriptionFetchScheduleResponse::Plan)
      end
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
          plan: Orb::Models::SubscriptionFetchScheduleResponse::Plan,
          start_date: Time
        )
          .void
      end
      def initialize(created_at:, end_date:, plan:, start_date:)
      end

      sig do
        override
          .returns(
            {
              created_at: Time,
              end_date: T.nilable(Time),
              plan: Orb::Models::SubscriptionFetchScheduleResponse::Plan,
              start_date: Time
            }
          )
      end
      def to_hash
      end

      class Plan < Orb::BaseModel
        sig { returns(T.nilable(String)) }
        def id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def id=(_)
        end

        sig { returns(T.nilable(String)) }
        def external_plan_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_plan_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def name
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_)
        end

        sig do
          params(id: T.nilable(String), external_plan_id: T.nilable(String), name: T.nilable(String)).void
        end
        def initialize(id:, external_plan_id:, name:)
        end

        sig do
          override.returns(
            {
              id: T.nilable(String),
              external_plan_id: T.nilable(String),
              name: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
