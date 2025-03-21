# typed: strong

module Orb
  module Models
    class SubscriptionFetchScheduleResponse < Orb::BaseModel
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      sig { returns(Orb::Models::SubscriptionFetchScheduleResponse::Plan) }
      attr_reader :plan

      sig { params(plan: T.any(Orb::Models::SubscriptionFetchScheduleResponse::Plan, Orb::Util::AnyHash)).void }
      attr_writer :plan

      sig { returns(Time) }
      attr_accessor :start_date

      sig do
        params(
          created_at: Time,
          end_date: T.nilable(Time),
          plan: T.any(Orb::Models::SubscriptionFetchScheduleResponse::Plan, Orb::Util::AnyHash),
          start_date: Time
        )
          .returns(T.attached_class)
      end
      def self.new(created_at:, end_date:, plan:, start_date:)
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
        attr_accessor :id

        # An optional user-defined ID for this plan resource, used throughout the system
        #   as an alias for this Plan. Use this field to identify a plan by an existing
        #   identifier in your system.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_plan_id

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig do
          params(id: T.nilable(String), external_plan_id: T.nilable(String), name: T.nilable(String))
            .returns(T.attached_class)
        end
        def self.new(id:, external_plan_id:, name:)
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
