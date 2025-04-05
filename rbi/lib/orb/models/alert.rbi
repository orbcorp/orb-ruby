# typed: strong

module Orb
  module Models
    class Alert < Orb::Internal::Type::BaseModel
      # Also referred to as alert_id in this documentation.
      sig { returns(String) }
      attr_accessor :id

      # The creation time of the resource in Orb.
      sig { returns(Time) }
      attr_accessor :created_at

      # The name of the currency the credit balance or invoice cost is denominated in.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      # The customer the alert applies to.
      sig { returns(T.nilable(Orb::Models::Alert::Customer)) }
      attr_reader :customer

      sig { params(customer: T.nilable(T.any(Orb::Models::Alert::Customer, Orb::Internal::AnyHash))).void }
      attr_writer :customer

      # Whether the alert is enabled or disabled.
      sig { returns(T::Boolean) }
      attr_accessor :enabled

      # The metric the alert applies to.
      sig { returns(T.nilable(Orb::Models::Alert::Metric)) }
      attr_reader :metric

      sig { params(metric: T.nilable(T.any(Orb::Models::Alert::Metric, Orb::Internal::AnyHash))).void }
      attr_writer :metric

      # The plan the alert applies to.
      sig { returns(T.nilable(Orb::Models::Alert::Plan)) }
      attr_reader :plan

      sig { params(plan: T.nilable(T.any(Orb::Models::Alert::Plan, Orb::Internal::AnyHash))).void }
      attr_writer :plan

      # The subscription the alert applies to.
      sig { returns(T.nilable(Orb::Models::Alert::Subscription)) }
      attr_reader :subscription

      sig { params(subscription: T.nilable(T.any(Orb::Models::Alert::Subscription, Orb::Internal::AnyHash))).void }
      attr_writer :subscription

      # The thresholds that define the conditions under which the alert will be
      #   triggered.
      sig { returns(T.nilable(T::Array[Orb::Models::Alert::Threshold])) }
      attr_accessor :thresholds

      # The type of alert. This must be a valid alert type.
      sig { returns(Orb::Models::Alert::Type::TaggedSymbol) }
      attr_accessor :type

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
          customer: T.nilable(T.any(Orb::Models::Alert::Customer, Orb::Internal::AnyHash)),
          enabled: T::Boolean,
          metric: T.nilable(T.any(Orb::Models::Alert::Metric, Orb::Internal::AnyHash)),
          plan: T.nilable(T.any(Orb::Models::Alert::Plan, Orb::Internal::AnyHash)),
          subscription: T.nilable(T.any(Orb::Models::Alert::Subscription, Orb::Internal::AnyHash)),
          thresholds: T.nilable(T::Array[T.any(Orb::Models::Alert::Threshold, Orb::Internal::AnyHash)]),
          type: Orb::Models::Alert::Type::OrSymbol
        )
          .returns(T.attached_class)
      end
      def self.new(
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
              type: Orb::Models::Alert::Type::TaggedSymbol
            }
          )
      end
      def to_hash; end

      class Customer < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :external_customer_id

        # The customer the alert applies to.
        sig { params(id: String, external_customer_id: T.nilable(String)).returns(T.attached_class) }
        def self.new(id:, external_customer_id:); end

        sig { override.returns({id: String, external_customer_id: T.nilable(String)}) }
        def to_hash; end
      end

      class Metric < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        # The metric the alert applies to.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(id:); end

        sig { override.returns({id: String}) }
        def to_hash; end
      end

      class Plan < Orb::Internal::Type::BaseModel
        sig { returns(T.nilable(String)) }
        attr_accessor :id

        # An optional user-defined ID for this plan resource, used throughout the system
        #   as an alias for this Plan. Use this field to identify a plan by an existing
        #   identifier in your system.
        sig { returns(T.nilable(String)) }
        attr_accessor :external_plan_id

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :plan_version

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
        def self.new(id:, external_plan_id:, name:, plan_version:); end

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
        def to_hash; end
      end

      class Subscription < Orb::Internal::Type::BaseModel
        sig { returns(String) }
        attr_accessor :id

        # The subscription the alert applies to.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(id:); end

        sig { override.returns({id: String}) }
        def to_hash; end
      end

      class Threshold < Orb::Internal::Type::BaseModel
        # The value at which an alert will fire. For credit balance alerts, the alert will
        #   fire at or below this value. For usage and cost alerts, the alert will fire at
        #   or above this value.
        sig { returns(Float) }
        attr_accessor :value

        # Thresholds are used to define the conditions under which an alert will be
        #   triggered.
        sig { params(value: Float).returns(T.attached_class) }
        def self.new(value:); end

        sig { override.returns({value: Float}) }
        def to_hash; end
      end

      # The type of alert. This must be a valid alert type.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::Alert::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String, Orb::Models::Alert::Type::TaggedSymbol) }

        CREDIT_BALANCE_DEPLETED = T.let(:credit_balance_depleted, Orb::Models::Alert::Type::TaggedSymbol)
        CREDIT_BALANCE_DROPPED = T.let(:credit_balance_dropped, Orb::Models::Alert::Type::TaggedSymbol)
        CREDIT_BALANCE_RECOVERED = T.let(:credit_balance_recovered, Orb::Models::Alert::Type::TaggedSymbol)
        USAGE_EXCEEDED = T.let(:usage_exceeded, Orb::Models::Alert::Type::TaggedSymbol)
        COST_EXCEEDED = T.let(:cost_exceeded, Orb::Models::Alert::Type::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Models::Alert::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
