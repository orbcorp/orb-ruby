# typed: strong

module Orb
  module Models
    class Alert < Orb::BaseModel
      # Also referred to as alert_id in this documentation.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The creation time of the resource in Orb.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The name of the currency the credit balance or invoice cost is denominated in.
      sig { returns(T.nilable(String)) }
      def currency
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_)
      end

      # The customer the alert applies to.
      sig { returns(T.nilable(Orb::Models::Alert::Customer)) }
      def customer
      end

      sig { params(_: T.nilable(Orb::Models::Alert::Customer)).returns(T.nilable(Orb::Models::Alert::Customer)) }
      def customer=(_)
      end

      # Whether the alert is enabled or disabled.
      sig { returns(T::Boolean) }
      def enabled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def enabled=(_)
      end

      # The metric the alert applies to.
      sig { returns(T.nilable(Orb::Models::Alert::Metric)) }
      def metric
      end

      sig { params(_: T.nilable(Orb::Models::Alert::Metric)).returns(T.nilable(Orb::Models::Alert::Metric)) }
      def metric=(_)
      end

      # The plan the alert applies to.
      sig { returns(T.nilable(Orb::Models::Alert::Plan)) }
      def plan
      end

      sig { params(_: T.nilable(Orb::Models::Alert::Plan)).returns(T.nilable(Orb::Models::Alert::Plan)) }
      def plan=(_)
      end

      # The subscription the alert applies to.
      sig { returns(T.nilable(Orb::Models::Alert::Subscription)) }
      def subscription
      end

      sig do
        params(_: T.nilable(Orb::Models::Alert::Subscription)).returns(T.nilable(Orb::Models::Alert::Subscription))
      end
      def subscription=(_)
      end

      # The thresholds that define the conditions under which the alert will be
      #   triggered.
      sig { returns(T.nilable(T::Array[Orb::Models::Alert::Threshold])) }
      def thresholds
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::Alert::Threshold]))
          .returns(T.nilable(T::Array[Orb::Models::Alert::Threshold]))
      end
      def thresholds=(_)
      end

      # The type of alert. This must be a valid alert type.
      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      # [Alerts within Orb](/product-catalog/configuring-alerts) monitor spending,
      #   usage, or credit balance and trigger webhooks when a threshold is exceeded.
      #
      #   Alerts created through the API can be scoped to either customers or
      #   subscriptions.
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
          .returns(T.attached_class)
      end
      def self.new(id:, created_at:, currency:, customer:, enabled:, metric:, plan:, subscription:, thresholds:, type:)
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

        # The customer the alert applies to.
        sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
        def self.new(id:, external_customer_id:)
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

        # The metric the alert applies to.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(id:)
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

        # An optional user-defined ID for this plan resource, used throughout the system
        #   as an alias for this Plan. Use this field to identify a plan by an existing
        #   identifier in your system.
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

        # The plan the alert applies to.
        sig do
          params(
            id: T.nilable(String),
            external_plan_id: T.nilable(String),
            name: T.nilable(String),
            plan_version: String
          )
            .returns(T.attached_class)
        end
        def self.new(id:, external_plan_id:, name:, plan_version:)
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

        # The subscription the alert applies to.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(id:)
        end

        sig { override.returns({id: String}) }
        def to_hash
        end
      end

      class Threshold < Orb::BaseModel
        # The value at which an alert will fire. For credit balance alerts, the alert will
        #   fire at or below this value. For usage and cost alerts, the alert will fire at
        #   or above this value.
        sig { returns(Float) }
        def value
        end

        sig { params(_: Float).returns(Float) }
        def value=(_)
        end

        # Thresholds are used to define the conditions under which an alert will be
        #   triggered.
        sig { params(value: Float).returns(T.attached_class) }
        def self.new(value:)
        end

        sig { override.returns({value: Float}) }
        def to_hash
        end
      end

      # The type of alert. This must be a valid alert type.
      class Type < Orb::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        CREDIT_BALANCE_DEPLETED = :credit_balance_depleted
        CREDIT_BALANCE_DROPPED = :credit_balance_dropped
        CREDIT_BALANCE_RECOVERED = :credit_balance_recovered
        USAGE_EXCEEDED = :usage_exceeded
        COST_EXCEEDED = :cost_exceeded
      end
    end
  end
end
