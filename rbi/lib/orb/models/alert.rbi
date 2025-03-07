# typed: strong

module Orb
  module Models
    class Alert < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def currency
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_)
      end

      sig { returns(T.nilable(Orb::Models::Alert::Customer)) }
      def customer
      end

      sig { params(_: T.nilable(Orb::Models::Alert::Customer)).returns(T.nilable(Orb::Models::Alert::Customer)) }
      def customer=(_)
      end

      sig { returns(T::Boolean) }
      def enabled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def enabled=(_)
      end

      sig { returns(T.nilable(Orb::Models::Alert::Metric)) }
      def metric
      end

      sig { params(_: T.nilable(Orb::Models::Alert::Metric)).returns(T.nilable(Orb::Models::Alert::Metric)) }
      def metric=(_)
      end

      sig { returns(T.nilable(Orb::Models::Alert::Plan)) }
      def plan
      end

      sig { params(_: T.nilable(Orb::Models::Alert::Plan)).returns(T.nilable(Orb::Models::Alert::Plan)) }
      def plan=(_)
      end

      sig { returns(T.nilable(Orb::Models::Alert::Subscription)) }
      def subscription
      end

      sig do
        params(_: T.nilable(Orb::Models::Alert::Subscription)).returns(T.nilable(Orb::Models::Alert::Subscription))
      end
      def subscription=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::Alert::Threshold])) }
      def thresholds
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::Alert::Threshold]))
          .returns(T.nilable(T::Array[Orb::Models::Alert::Threshold]))
      end
      def thresholds=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig do
        params(
          id: String,
          created_at: Time,
          currency: T.nilable(String),
          customer: T.nilable(Orb::Models::Alert::Customer),
          enabled: T::Boolean,
          metric: T.nilable(Orb::Models::Alert::Metric),
          plan: T.nilable(Orb::Models::Alert::Plan),
          subscription: T.nilable(Orb::Models::Alert::Subscription),
          thresholds: T.nilable(T::Array[Orb::Models::Alert::Threshold]),
          type: Symbol
        )
          .void
      end
      def initialize(
        id:,
        created_at:,
        currency:,
        customer:,
        enabled:,
        metric:,
        plan:,
        subscription:,
        thresholds:,
        type:
      )
      end

      sig do
        override
          .returns(
            {
              id: String,
              created_at: Time,
              currency: T.nilable(String),
              customer: T.nilable(Orb::Models::Alert::Customer),
              enabled: T::Boolean,
              metric: T.nilable(Orb::Models::Alert::Metric),
              plan: T.nilable(Orb::Models::Alert::Plan),
              subscription: T.nilable(Orb::Models::Alert::Subscription),
              thresholds: T.nilable(T::Array[Orb::Models::Alert::Threshold]),
              type: Symbol
            }
          )
      end
      def to_hash
      end

      class Customer < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { returns(T.nilable(String)) }
        def external_customer_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_customer_id=(_)
        end

        sig { params(id: String, external_customer_id: T.nilable(String)).void }
        def initialize(id:, external_customer_id:)
        end

        sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
        def to_hash
        end
      end

      class Metric < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { params(id: String).void }
        def initialize(id:)
        end

        sig { override.returns({id: String}) }
        def to_hash
        end
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

        sig { returns(String) }
        def plan_version
        end

        sig { params(_: String).returns(String) }
        def plan_version=(_)
        end

        sig do
          params(
            id: T.nilable(String),
            external_plan_id: T.nilable(String),
            name: T.nilable(String),
            plan_version: String
          )
            .void
        end
        def initialize(id:, external_plan_id:, name:, plan_version:)
        end

        sig do
          override
            .returns(
              {
                id: T.nilable(String),
                external_plan_id: T.nilable(String),
                name: T.nilable(String),
                plan_version: String
              }
            )
        end
        def to_hash
        end
      end

      class Subscription < Orb::BaseModel
        sig { returns(String) }
        def id
        end

        sig { params(_: String).returns(String) }
        def id=(_)
        end

        sig { params(id: String).void }
        def initialize(id:)
        end

        sig { override.returns({id: String}) }
        def to_hash
        end
      end

      class Threshold < Orb::BaseModel
        sig { returns(Float) }
        def value
        end

        sig { params(_: Float).returns(Float) }
        def value=(_)
        end

        sig { params(value: Float).void }
        def initialize(value:)
        end

        sig { override.returns({value: Float}) }
        def to_hash
        end
      end

      class Type < Orb::Enum
        abstract!

        CREDIT_BALANCE_DEPLETED = :credit_balance_depleted
        CREDIT_BALANCE_DROPPED = :credit_balance_dropped
        CREDIT_BALANCE_RECOVERED = :credit_balance_recovered
        USAGE_EXCEEDED = :usage_exceeded
        COST_EXCEEDED = :cost_exceeded

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
