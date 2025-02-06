# typed: strong

module Orb
  module Models
    class Alert < Orb::BaseModel
      Shape = T.type_alias do
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
      end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      sig { returns(T.nilable(Orb::Models::Alert::Customer)) }
      attr_accessor :customer

      sig { returns(T::Boolean) }
      attr_accessor :enabled

      sig { returns(T.nilable(Orb::Models::Alert::Metric)) }
      attr_accessor :metric

      sig { returns(T.nilable(Orb::Models::Alert::Plan)) }
      attr_accessor :plan

      sig { returns(T.nilable(Orb::Models::Alert::Subscription)) }
      attr_accessor :subscription

      sig { returns(T.nilable(T::Array[Orb::Models::Alert::Threshold])) }
      attr_accessor :thresholds

      sig { returns(Symbol) }
      attr_accessor :type

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
        ).void
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

      sig { returns(Orb::Models::Alert::Shape) }
      def to_h; end

      class Customer < Orb::BaseModel
        Shape = T.type_alias { {id: String, external_customer_id: T.nilable(String)} }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :external_customer_id

        sig { params(id: String, external_customer_id: T.nilable(String)).void }
        def initialize(id:, external_customer_id:); end

        sig { returns(Orb::Models::Alert::Customer::Shape) }
        def to_h; end
      end

      class Metric < Orb::BaseModel
        Shape = T.type_alias { {id: String} }

        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).void }
        def initialize(id:); end

        sig { returns(Orb::Models::Alert::Metric::Shape) }
        def to_h; end
      end

      class Plan < Orb::BaseModel
        Shape = T.type_alias do
          {
            id: T.nilable(String),
            external_plan_id: T.nilable(String),
            name: T.nilable(String),
            plan_version: String
          }
        end

        sig { returns(T.nilable(String)) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :external_plan_id

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :plan_version

        sig do
          params(
            id: T.nilable(String),
            external_plan_id: T.nilable(String),
            name: T.nilable(String),
            plan_version: String
          ).void
        end
        def initialize(id:, external_plan_id:, name:, plan_version:); end

        sig { returns(Orb::Models::Alert::Plan::Shape) }
        def to_h; end
      end

      class Subscription < Orb::BaseModel
        Shape = T.type_alias { {id: String} }

        sig { returns(String) }
        attr_accessor :id

        sig { params(id: String).void }
        def initialize(id:); end

        sig { returns(Orb::Models::Alert::Subscription::Shape) }
        def to_h; end
      end

      class Threshold < Orb::BaseModel
        Shape = T.type_alias { {value: Float} }

        sig { returns(Float) }
        attr_accessor :value

        sig { params(value: Float).void }
        def initialize(value:); end

        sig { returns(Orb::Models::Alert::Threshold::Shape) }
        def to_h; end
      end

      class Type < Orb::Enum
        abstract!

        USAGE_EXCEEDED = :usage_exceeded
        COST_EXCEEDED = :cost_exceeded
        CREDIT_BALANCE_DEPLETED = :credit_balance_depleted
        CREDIT_BALANCE_DROPPED = :credit_balance_dropped
        CREDIT_BALANCE_RECOVERED = :credit_balance_recovered

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end
    end
  end
end
