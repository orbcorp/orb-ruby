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
      sig { returns(T.nilable(Orb::CustomerMinified)) }
      attr_reader :customer

      sig { params(customer: T.nilable(Orb::CustomerMinified::OrHash)).void }
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
      sig { returns(T.nilable(Orb::SubscriptionMinified)) }
      attr_reader :subscription

      sig do
        params(subscription: T.nilable(Orb::SubscriptionMinified::OrHash)).void
      end
      attr_writer :subscription

      # The thresholds that define the conditions under which the alert will be
      # triggered.
      sig { returns(T.nilable(T::Array[Orb::Threshold])) }
      attr_accessor :thresholds

      # The type of alert. This must be a valid alert type.
      sig { returns(Orb::Alert::Type::TaggedSymbol) }
      attr_accessor :type

      # The current status of the alert. This field is only present for credit balance
      # alerts.
      sig { returns(T.nilable(T::Array[Orb::Alert::BalanceAlertStatus])) }
      attr_accessor :balance_alert_status

      # The property keys to group cost alerts by. Only present for cost alerts with
      # grouping enabled.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :grouping_keys

      # Minified license type for alert serialization.
      sig { returns(T.nilable(Orb::Alert::LicenseType)) }
      attr_reader :license_type

      sig do
        params(license_type: T.nilable(Orb::Alert::LicenseType::OrHash)).void
      end
      attr_writer :license_type

      # Filters scoping which prices are included in grouped cost alert evaluation.
      sig { returns(T.nilable(T::Array[Orb::Alert::PriceFilter])) }
      attr_accessor :price_filters

      # Per-group threshold overrides. Each override maps a specific combination of
      # grouping_keys values to a replacement threshold list. Only present for grouped
      # cost alerts that have at least one override.
      sig { returns(T.nilable(T::Array[Orb::Alert::ThresholdOverride])) }
      attr_accessor :threshold_overrides

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
          customer: T.nilable(Orb::CustomerMinified::OrHash),
          enabled: T::Boolean,
          metric: T.nilable(Orb::Alert::Metric::OrHash),
          plan: T.nilable(Orb::Alert::Plan::OrHash),
          subscription: T.nilable(Orb::SubscriptionMinified::OrHash),
          thresholds: T.nilable(T::Array[Orb::Threshold::OrHash]),
          type: Orb::Alert::Type::OrSymbol,
          balance_alert_status:
            T.nilable(T::Array[Orb::Alert::BalanceAlertStatus::OrHash]),
          grouping_keys: T.nilable(T::Array[String]),
          license_type: T.nilable(Orb::Alert::LicenseType::OrHash),
          price_filters: T.nilable(T::Array[Orb::Alert::PriceFilter::OrHash]),
          threshold_overrides:
            T.nilable(T::Array[Orb::Alert::ThresholdOverride::OrHash])
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
        balance_alert_status: nil,
        # The property keys to group cost alerts by. Only present for cost alerts with
        # grouping enabled.
        grouping_keys: nil,
        # Minified license type for alert serialization.
        license_type: nil,
        # Filters scoping which prices are included in grouped cost alert evaluation.
        price_filters: nil,
        # Per-group threshold overrides. Each override maps a specific combination of
        # grouping_keys values to a replacement threshold list. Only present for grouped
        # cost alerts that have at least one override.
        threshold_overrides: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            currency: T.nilable(String),
            customer: T.nilable(Orb::CustomerMinified),
            enabled: T::Boolean,
            metric: T.nilable(Orb::Alert::Metric),
            plan: T.nilable(Orb::Alert::Plan),
            subscription: T.nilable(Orb::SubscriptionMinified),
            thresholds: T.nilable(T::Array[Orb::Threshold]),
            type: Orb::Alert::Type::TaggedSymbol,
            balance_alert_status:
              T.nilable(T::Array[Orb::Alert::BalanceAlertStatus]),
            grouping_keys: T.nilable(T::Array[String]),
            license_type: T.nilable(Orb::Alert::LicenseType),
            price_filters: T.nilable(T::Array[Orb::Alert::PriceFilter]),
            threshold_overrides:
              T.nilable(T::Array[Orb::Alert::ThresholdOverride])
          }
        )
      end
      def to_hash
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
        LICENSE_BALANCE_THRESHOLD_REACHED =
          T.let(
            :license_balance_threshold_reached,
            Orb::Alert::Type::TaggedSymbol
          )

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

      class LicenseType < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Alert::LicenseType, Orb::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        # Minified license type for alert serialization.
        sig { params(id: String).returns(T.attached_class) }
        def self.new(id:)
        end

        sig { override.returns({ id: String }) }
        def to_hash
        end
      end

      class PriceFilter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Alert::PriceFilter, Orb::Internal::AnyHash)
          end

        # The property of the price to filter on.
        sig { returns(Orb::Alert::PriceFilter::Field::TaggedSymbol) }
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig { returns(Orb::Alert::PriceFilter::Operator::TaggedSymbol) }
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field: Orb::Alert::PriceFilter::Field::OrSymbol,
            operator: Orb::Alert::PriceFilter::Operator::OrSymbol,
            values: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The property of the price to filter on.
          field:,
          # Should prices that match the filter be included or excluded.
          operator:,
          # The IDs or values that match this filter.
          values:
        )
        end

        sig do
          override.returns(
            {
              field: Orb::Alert::PriceFilter::Field::TaggedSymbol,
              operator: Orb::Alert::PriceFilter::Operator::TaggedSymbol,
              values: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # The property of the price to filter on.
        module Field
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Alert::PriceFilter::Field) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(:price_id, Orb::Alert::PriceFilter::Field::TaggedSymbol)
          ITEM_ID =
            T.let(:item_id, Orb::Alert::PriceFilter::Field::TaggedSymbol)
          PRICE_TYPE =
            T.let(:price_type, Orb::Alert::PriceFilter::Field::TaggedSymbol)
          CURRENCY =
            T.let(:currency, Orb::Alert::PriceFilter::Field::TaggedSymbol)
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::Alert::PriceFilter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::Alert::PriceFilter::Field::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Should prices that match the filter be included or excluded.
        module Operator
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Alert::PriceFilter::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(:includes, Orb::Alert::PriceFilter::Operator::TaggedSymbol)
          EXCLUDES =
            T.let(:excludes, Orb::Alert::PriceFilter::Operator::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Alert::PriceFilter::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class ThresholdOverride < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Alert::ThresholdOverride, Orb::Internal::AnyHash)
          end

        # The values of the grouping keys that identify this group. The list length
        # matches the alert's grouping_keys.
        sig { returns(T::Array[String]) }
        attr_accessor :group_values

        # The thresholds applied to this group. An empty list means the group is silenced.
        sig { returns(T::Array[Orb::Threshold]) }
        attr_accessor :thresholds

        # A per-group threshold override on a grouped cost alert.
        #
        # An empty `thresholds` list means the group is silenced (never fires). A
        # non-empty list fully replaces the default thresholds for that group.
        sig do
          params(
            group_values: T::Array[String],
            thresholds: T::Array[Orb::Threshold::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The values of the grouping keys that identify this group. The list length
          # matches the alert's grouping_keys.
          group_values:,
          # The thresholds applied to this group. An empty list means the group is silenced.
          thresholds:
        )
        end

        sig do
          override.returns(
            {
              group_values: T::Array[String],
              thresholds: T::Array[Orb::Threshold]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
