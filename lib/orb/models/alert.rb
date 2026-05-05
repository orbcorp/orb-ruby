# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Alerts#retrieve
    class Alert < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   Also referred to as alert_id in this documentation.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The creation time of the resource in Orb.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   The name of the currency the credit balance or invoice cost is denominated in.
      #
      #   @return [String, nil]
      required :currency, String, nil?: true

      # @!attribute customer
      #   The customer the alert applies to.
      #
      #   @return [Orb::Models::CustomerMinified, nil]
      required :customer, -> { Orb::CustomerMinified }, nil?: true

      # @!attribute enabled
      #   Whether the alert is enabled or disabled.
      #
      #   @return [Boolean]
      required :enabled, Orb::Internal::Type::Boolean

      # @!attribute metric
      #   The metric the alert applies to.
      #
      #   @return [Orb::Models::Alert::Metric, nil]
      required :metric, -> { Orb::Alert::Metric }, nil?: true

      # @!attribute plan
      #   The plan the alert applies to.
      #
      #   @return [Orb::Models::Alert::Plan, nil]
      required :plan, -> { Orb::Alert::Plan }, nil?: true

      # @!attribute subscription
      #   The subscription the alert applies to.
      #
      #   @return [Orb::Models::SubscriptionMinified, nil]
      required :subscription, -> { Orb::SubscriptionMinified }, nil?: true

      # @!attribute thresholds
      #   The thresholds that define the conditions under which the alert will be
      #   triggered.
      #
      #   @return [Array<Orb::Models::Threshold>, nil]
      required :thresholds, -> { Orb::Internal::Type::ArrayOf[Orb::Threshold] }, nil?: true

      # @!attribute type
      #   The type of alert. This must be a valid alert type.
      #
      #   @return [Symbol, Orb::Models::Alert::Type]
      required :type, enum: -> { Orb::Alert::Type }

      # @!attribute balance_alert_status
      #   The current status of the alert. This field is only present for credit balance
      #   alerts.
      #
      #   @return [Array<Orb::Models::Alert::BalanceAlertStatus>, nil]
      optional :balance_alert_status,
               -> { Orb::Internal::Type::ArrayOf[Orb::Alert::BalanceAlertStatus] },
               nil?: true

      # @!attribute grouping_keys
      #   The property keys to group cost alerts by. Only present for cost alerts with
      #   grouping enabled.
      #
      #   @return [Array<String>, nil]
      optional :grouping_keys, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute license_type
      #   Minified license type for alert serialization.
      #
      #   @return [Orb::Models::Alert::LicenseType, nil]
      optional :license_type, -> { Orb::Alert::LicenseType }, nil?: true

      # @!attribute price_filters
      #   Filters scoping which prices are included in grouped cost alert evaluation.
      #
      #   @return [Array<Orb::Models::Alert::PriceFilter>, nil]
      optional :price_filters, -> { Orb::Internal::Type::ArrayOf[Orb::Alert::PriceFilter] }, nil?: true

      # @!attribute threshold_overrides
      #   Per-group threshold overrides. Each override maps a specific combination of
      #   grouping_keys values to a replacement threshold list. Only present for grouped
      #   cost alerts that have at least one override.
      #
      #   @return [Array<Orb::Models::Alert::ThresholdOverride>, nil]
      optional :threshold_overrides,
               -> { Orb::Internal::Type::ArrayOf[Orb::Alert::ThresholdOverride] },
               nil?: true

      # @!method initialize(id:, created_at:, currency:, customer:, enabled:, metric:, plan:, subscription:, thresholds:, type:, balance_alert_status: nil, grouping_keys: nil, license_type: nil, price_filters: nil, threshold_overrides: nil)
      #   Some parameter documentations has been truncated, see {Orb::Models::Alert} for
      #   more details.
      #
      #   [Alerts within Orb](/product-catalog/configuring-alerts) monitor spending,
      #   usage, or credit balance and trigger webhooks when a threshold is exceeded.
      #
      #   Alerts created through the API can be scoped to either customers or
      #   subscriptions.
      #
      #   @param id [String] Also referred to as alert_id in this documentation.
      #
      #   @param created_at [Time] The creation time of the resource in Orb.
      #
      #   @param currency [String, nil] The name of the currency the credit balance or invoice cost is denominated in.
      #
      #   @param customer [Orb::Models::CustomerMinified, nil] The customer the alert applies to.
      #
      #   @param enabled [Boolean] Whether the alert is enabled or disabled.
      #
      #   @param metric [Orb::Models::Alert::Metric, nil] The metric the alert applies to.
      #
      #   @param plan [Orb::Models::Alert::Plan, nil] The plan the alert applies to.
      #
      #   @param subscription [Orb::Models::SubscriptionMinified, nil] The subscription the alert applies to.
      #
      #   @param thresholds [Array<Orb::Models::Threshold>, nil] The thresholds that define the conditions under which the alert will be triggere
      #
      #   @param type [Symbol, Orb::Models::Alert::Type] The type of alert. This must be a valid alert type.
      #
      #   @param balance_alert_status [Array<Orb::Models::Alert::BalanceAlertStatus>, nil] The current status of the alert. This field is only present for credit balance a
      #
      #   @param grouping_keys [Array<String>, nil] The property keys to group cost alerts by. Only present for cost alerts with gro
      #
      #   @param license_type [Orb::Models::Alert::LicenseType, nil] Minified license type for alert serialization.
      #
      #   @param price_filters [Array<Orb::Models::Alert::PriceFilter>, nil] Filters scoping which prices are included in grouped cost alert evaluation.
      #
      #   @param threshold_overrides [Array<Orb::Models::Alert::ThresholdOverride>, nil] Per-group threshold overrides. Each override maps a specific combination of grou

      # @see Orb::Models::Alert#metric
      class Metric < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The metric the alert applies to.
        #
        #   @param id [String]
      end

      # @see Orb::Models::Alert#plan
      class Plan < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        required :id, String, nil?: true

        # @!attribute external_plan_id
        #   An optional user-defined ID for this plan resource, used throughout the system
        #   as an alias for this Plan. Use this field to identify a plan by an existing
        #   identifier in your system.
        #
        #   @return [String, nil]
        required :external_plan_id, String, nil?: true

        # @!attribute name
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute plan_version
        #
        #   @return [String]
        required :plan_version, String

        # @!method initialize(id:, external_plan_id:, name:, plan_version:)
        #   Some parameter documentations has been truncated, see {Orb::Models::Alert::Plan}
        #   for more details.
        #
        #   The plan the alert applies to.
        #
        #   @param id [String, nil]
        #
        #   @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
        #
        #   @param name [String, nil]
        #
        #   @param plan_version [String]
      end

      # The type of alert. This must be a valid alert type.
      #
      # @see Orb::Models::Alert#type
      module Type
        extend Orb::Internal::Type::Enum

        CREDIT_BALANCE_DEPLETED = :credit_balance_depleted
        CREDIT_BALANCE_DROPPED = :credit_balance_dropped
        CREDIT_BALANCE_RECOVERED = :credit_balance_recovered
        USAGE_EXCEEDED = :usage_exceeded
        COST_EXCEEDED = :cost_exceeded
        LICENSE_BALANCE_THRESHOLD_REACHED = :license_balance_threshold_reached

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class BalanceAlertStatus < Orb::Internal::Type::BaseModel
        # @!attribute in_alert
        #   Whether the alert is currently in-alert or not.
        #
        #   @return [Boolean]
        required :in_alert, Orb::Internal::Type::Boolean

        # @!attribute threshold_value
        #   The value of the threshold that defines the alert status.
        #
        #   @return [Float]
        required :threshold_value, Float

        # @!method initialize(in_alert:, threshold_value:)
        #   Alert status is used to determine if an alert is currently in-alert or not.
        #
        #   @param in_alert [Boolean] Whether the alert is currently in-alert or not.
        #
        #   @param threshold_value [Float] The value of the threshold that defines the alert status.
      end

      # @see Orb::Models::Alert#license_type
      class LicenseType < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   Minified license type for alert serialization.
        #
        #   @param id [String]
      end

      class PriceFilter < Orb::Internal::Type::BaseModel
        # @!attribute field
        #   The property of the price to filter on.
        #
        #   @return [Symbol, Orb::Models::Alert::PriceFilter::Field]
        required :field, enum: -> { Orb::Alert::PriceFilter::Field }

        # @!attribute operator
        #   Should prices that match the filter be included or excluded.
        #
        #   @return [Symbol, Orb::Models::Alert::PriceFilter::Operator]
        required :operator, enum: -> { Orb::Alert::PriceFilter::Operator }

        # @!attribute values
        #   The IDs or values that match this filter.
        #
        #   @return [Array<String>]
        required :values, Orb::Internal::Type::ArrayOf[String]

        # @!method initialize(field:, operator:, values:)
        #   @param field [Symbol, Orb::Models::Alert::PriceFilter::Field] The property of the price to filter on.
        #
        #   @param operator [Symbol, Orb::Models::Alert::PriceFilter::Operator] Should prices that match the filter be included or excluded.
        #
        #   @param values [Array<String>] The IDs or values that match this filter.

        # The property of the price to filter on.
        #
        # @see Orb::Models::Alert::PriceFilter#field
        module Field
          extend Orb::Internal::Type::Enum

          PRICE_ID = :price_id
          ITEM_ID = :item_id
          PRICE_TYPE = :price_type
          CURRENCY = :currency
          PRICING_UNIT_ID = :pricing_unit_id

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Should prices that match the filter be included or excluded.
        #
        # @see Orb::Models::Alert::PriceFilter#operator
        module Operator
          extend Orb::Internal::Type::Enum

          INCLUDES = :includes
          EXCLUDES = :excludes

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class ThresholdOverride < Orb::Internal::Type::BaseModel
        # @!attribute group_values
        #   The values of the grouping keys that identify this group. The list length
        #   matches the alert's grouping_keys.
        #
        #   @return [Array<String>]
        required :group_values, Orb::Internal::Type::ArrayOf[String]

        # @!attribute thresholds
        #   The thresholds applied to this group. An empty list means the group is silenced.
        #
        #   @return [Array<Orb::Models::Threshold>]
        required :thresholds, -> { Orb::Internal::Type::ArrayOf[Orb::Threshold] }

        # @!method initialize(group_values:, thresholds:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Alert::ThresholdOverride} for more details.
        #
        #   A per-group threshold override on a grouped cost alert.
        #
        #   An empty `thresholds` list means the group is silenced (never fires). A
        #   non-empty list fully replaces the default thresholds for that group.
        #
        #   @param group_values [Array<String>] The values of the grouping keys that identify this group. The list length matche
        #
        #   @param thresholds [Array<Orb::Models::Threshold>] The thresholds applied to this group. An empty list means the group is silenced.
      end
    end
  end
end
