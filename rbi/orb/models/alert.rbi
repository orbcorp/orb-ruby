# typed: strong

module Orb
  module Models
    class Alert < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::Alert, Orb::Internal::AnyHash) }

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
      sig { returns(T.nilable(Orb::Alert::Customer)) }
      attr_reader :customer

      sig { params(customer: T.nilable(Orb::Alert::Customer::OrHash)).void }
      attr_writer :customer

      # Whether the alert is enabled or disabled.
      sig { returns(T::Boolean) }
      attr_accessor :enabled

      # The metric the alert applies to.
      sig { returns(T.nilable(Orb::Alert::Metric)) }
      attr_reader :metric

      sig { params(metric: T.nilable(Orb::Alert::Metric::OrHash)).void }
      attr_writer :metric

      # The plan the alert applies to.
      sig { returns(T.nilable(Orb::Alert::Plan)) }
      attr_reader :plan

      sig { params(plan: T.nilable(Orb::Alert::Plan::OrHash)).void }
      attr_writer :plan

      # The subscription the alert applies to.
      sig { returns(T.nilable(Orb::Alert::Subscription)) }
      attr_reader :subscription

      sig do
        params(subscription: T.nilable(Orb::Alert::Subscription::OrHash)).void
      end
      attr_writer :subscription

      # The thresholds that define the conditions under which the alert will be
      # triggered.
      sig { returns(T.nilable(T::Array[Orb::Alert::Threshold])) }
      attr_accessor :thresholds

      # The type of alert. This must be a valid alert type.
      sig { returns(Orb::Alert::Type::TaggedSymbol) }
      attr_accessor :type

      # The current status of the alert. This field is only present for credit balance
      # alerts.
      sig { returns(T.nilable(T::Array[Orb::Alert::BalanceAlertStatus])) }
      attr_accessor :balance_alert_status

      # [Alerts within Orb](/product-catalog/configuring-alerts) monitor spending,
      # usage, or credit balance and trigger webhooks when a threshold is exceeded.
      #
      # Alerts created through the API can be scoped to either customers or
      # subscriptions.
      sig do
        params(
          id: String,
          created_at: Time,
          currency: T.nilable(String),
          customer: T.nilable(Orb::Alert::Customer::OrHash),
          enabled: T::Boolean,
          metric: T.nilable(Orb::Alert::Metric::OrHash),
          plan: T.nilable(Orb::Alert::Plan::OrHash),
          subscription: T.nilable(Orb::Alert::Subscription::OrHash),
          thresholds: T.nilable(T::Array[Orb::Alert::Threshold::OrHash]),
          type: Orb::Alert::Type::OrSymbol,
          balance_alert_status:
            T.nilable(T::Array[Orb::Alert::BalanceAlertStatus::OrHash])
        ).returns(T.attached_class)
      end
      def self.new(
        # Also referred to as alert_id in this documentation.
        id:,
        # The creation time of the resource in Orb.
        created_at:,
        # The name of the currency the credit balance or invoice cost is denominated in.
        currency:,
        # The customer the alert applies to.
        customer:,
        # Whether the alert is enabled or disabled.
        enabled:,
        # The metric the alert applies to.
        metric:,
        # The plan the alert applies to.
        plan:,
        # The subscription the alert applies to.
        subscription:,
        # The thresholds that define the conditions under which the alert will be
        # triggered.
        thresholds:,
        # The type of alert. This must be a valid alert type.
        type:,
        # The current status of the alert. This field is only present for credit balance
        # alerts.
        balance_alert_status: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            currency: T.nilable(String),
            customer: T.nilable(Orb::Alert::Customer),
            enabled: T::Boolean,
            metric: T.nilable(Orb::Alert::Metric),
            plan: T.nilable(Orb::Alert::Plan),
            subscription: T.nilable(Orb::Alert::Subscription),
            thresholds: T.nilable(T::Array[Orb::Alert::Threshold]),
            type: Orb::Alert::Type::TaggedSymbol,
            balance_alert_status:
              T.nilable(T::Array[Orb::Alert::BalanceAlertStatus])
          }
        )
      end
      def to_hash
      end

      class Customer < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Alert::Customer, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T.nilable(String)) }
        attr_accessor :external_customer_id

        # The customer the alert applies to.
        sig do
          params(id: String, external_customer_id: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(id:, external_customer_id:)
        end

        sig do
          override.returns(
            { id: String, external_customer_id: T.nilable(String) }
          )
        end
        def to_hash
        end
      end

      class Metric < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Alert::Metric, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :id

        # The metric the alert applies to.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(id:)
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class Plan < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Alert::Plan, Orb::Internal::AnyHash) }

        sig { returns(T.nilable(String)) }
        attr_accessor :id

        # An optional user-defined ID for this plan resource, used throughout the system
        # as an alias for this Plan. Use this field to identify a plan by an existing
        # identifier in your system.
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
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # An optional user-defined ID for this plan resource, used throughout the system
          # as an alias for this Plan. Use this field to identify a plan by an existing
          # identifier in your system.
          external_plan_id:,
          name:,
          plan_version:
        )
        end

        sig do
          override.returns(
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

      class Subscription < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Alert::Subscription, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        # The subscription the alert applies to.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(id:)
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class Threshold < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Alert::Threshold, Orb::Internal::AnyHash) }

        # The value at which an alert will fire. For credit balance alerts, the alert will
        # fire at or below this value. For usage and cost alerts, the alert will fire at
        # or above this value.
        sig { returns(Float) }
        attr_accessor :value

        # Thresholds are used to define the conditions under which an alert will be
        # triggered.
        sig { params(value: Float).returns(T.attached_class) }
        def self.new(
          # The value at which an alert will fire. For credit balance alerts, the alert will
          # fire at or below this value. For usage and cost alerts, the alert will fire at
          # or above this value.
          value:
        )
        end

        sig { override.returns({ value: Float }) }
        def to_hash
        end
      end

      # The type of alert. This must be a valid alert type.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Alert::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT_BALANCE_DEPLETED =
          T.let(:credit_balance_depleted, Orb::Alert::Type::TaggedSymbol)
        CREDIT_BALANCE_DROPPED =
          T.let(:credit_balance_dropped, Orb::Alert::Type::TaggedSymbol)
        CREDIT_BALANCE_RECOVERED =
          T.let(:credit_balance_recovered, Orb::Alert::Type::TaggedSymbol)
        USAGE_EXCEEDED = T.let(:usage_exceeded, Orb::Alert::Type::TaggedSymbol)
        COST_EXCEEDED = T.let(:cost_exceeded, Orb::Alert::Type::TaggedSymbol)

        sig { override.returns(T::Array[Orb::Alert::Type::TaggedSymbol]) }
        def self.values
        end
      end

      class BalanceAlertStatus < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Alert::BalanceAlertStatus, Orb::Internal::AnyHash)
          end

        # Whether the alert is currently in-alert or not.
        sig { returns(T::Boolean) }
        attr_accessor :in_alert

        # The value of the threshold that defines the alert status.
        sig { returns(Float) }
        attr_accessor :threshold_value

        # Alert status is used to determine if an alert is currently in-alert or not.
        sig do
          params(in_alert: T::Boolean, threshold_value: Float).returns(
            T.attached_class
          )
        end
        def self.new(
          # Whether the alert is currently in-alert or not.
          in_alert:,
          # The value of the threshold that defines the alert status.
          threshold_value:
        )
        end

        sig do
          override.returns({ in_alert: T::Boolean, threshold_value: Float })
        end
        def to_hash
        end
      end
    end
  end
end
