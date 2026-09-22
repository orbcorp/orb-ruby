# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionLicenseBalanceThresholdReachedWebhookEvent < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of this webhook event.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The time at which this event was created, to the second.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute properties
      #   Every license that crossed a threshold for one alert, batched into a single
      #   message. For account-wide alerts the licenses may span several license types.
      #
      #   @return [Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties]
      required :properties, -> { Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties }

      # @!attribute subscription
      #   A lightweight subscription representation for webhook payloads.
      #
      #   This avoids the expensive to_subscription_params() call required for full
      #   serialization.
      #
      #   @return [Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Subscription]
      required :subscription, -> { Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Subscription }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Type]
      required :type, enum: -> { Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, properties:, subscription:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent} for more
      #   details.
      #
      #   Issued when a license balance threshold is reached.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param properties [Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties] Every license that crossed a threshold for one alert, batched into a single mess
      #
      #   @param subscription [Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Subscription] A lightweight subscription representation for webhook payloads.
      #
      #   @param type [Symbol, Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute alert_configuration
        #   [Alerts within Orb](/product-catalog/configuring-alerts) monitor spending,
        #   usage, or credit balance and trigger webhooks when a threshold is exceeded.
        #
        #   Alerts created through the API can be scoped to either customers or
        #   subscriptions.
        #
        #   @return [Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration]
        required :alert_configuration,
                 -> { Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration }

        # @!attribute licenses
        #
        #   @return [Array<Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::License>]
        required :licenses,
                 -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::License] }

        # @!attribute timeframe_end
        #
        #   @return [Time]
        required :timeframe_end, Time

        # @!attribute timeframe_start
        #
        #   @return [Time]
        required :timeframe_start, Time

        # @!method initialize(alert_configuration:, licenses:, timeframe_end:, timeframe_start:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties}
        #   for more details.
        #
        #   Every license that crossed a threshold for one alert, batched into a single
        #   message. For account-wide alerts the licenses may span several license types.
        #
        #   @param alert_configuration [Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration] [Alerts within Orb](/product-catalog/configuring-alerts) monitor spending,
        #
        #   @param licenses [Array<Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::License>]
        #
        #   @param timeframe_end [Time]
        #
        #   @param timeframe_start [Time]

        # @see Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties#alert_configuration
        class AlertConfiguration < Orb::Internal::Type::BaseModel
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
          #   @return [Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::Metric, nil]
          required :metric,
                   -> {
                     Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::Metric
                   },
                   nil?: true

          # @!attribute plan
          #   The plan the alert applies to.
          #
          #   @return [Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::Plan, nil]
          required :plan,
                   -> {
                     Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::Plan
                   },
                   nil?: true

          # @!attribute subscription
          #   The subscription the alert applies to.
          #
          #   @return [Orb::Models::SubscriptionMinified, nil]
          required :subscription, -> { Orb::SubscriptionMinified }, nil?: true

          # @!attribute thresholds
          #   The thresholds that define the conditions under which the alert will be
          #   triggered.
          #
          #   @return [Array<Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::Threshold>, nil]
          required :thresholds,
                   -> {
                     Orb::Internal::Type::ArrayOf[Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::Threshold]
                   },
                   nil?: true

          # @!attribute type
          #   The type of alert. This must be a valid alert type.
          #
          #   @return [Symbol, Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::Type]
          required :type,
                   enum: -> { Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::Type }

          # @!attribute balance_alert_status
          #   The current status of the alert. This field is only present for credit balance
          #   alerts.
          #
          #   @return [Array<Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::BalanceAlertStatus>, nil]
          optional :balance_alert_status,
                   -> do
                     Orb::Internal::Type::ArrayOf[
                       Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::BalanceAlertStatus
                     ]
                   end,
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
          #   @return [Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::LicenseType, nil]
          optional :license_type,
                   -> {
                     Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::LicenseType
                   },
                   nil?: true

          # @!attribute price_filters
          #   Filters scoping which prices are included in spend and grouped cost alert
          #   evaluation. Alerts use the price_id, item_id, and price_type fields only; the
          #   alert's pricing unit is reported by currency.
          #
          #   @return [Array<Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::PriceFilter>, nil]
          optional :price_filters,
                   -> {
                     Orb::Internal::Type::ArrayOf[Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::PriceFilter]
                   },
                   nil?: true

          # @!attribute threshold_overrides
          #   Per-group threshold overrides. Each override maps a specific combination of
          #   grouping_keys values to a replacement threshold list. Only present for grouped
          #   cost alerts that have at least one override.
          #
          #   @return [Array<Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride>, nil]
          optional :threshold_overrides,
                   -> do
                     Orb::Internal::Type::ArrayOf[
                       Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride
                     ]
                   end,
                   nil?: true

          # @!method initialize(id:, created_at:, currency:, customer:, enabled:, metric:, plan:, subscription:, thresholds:, type:, balance_alert_status: nil, grouping_keys: nil, license_type: nil, price_filters: nil, threshold_overrides: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration}
          #   for more details.
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
          #   @param metric [Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::Metric, nil] The metric the alert applies to.
          #
          #   @param plan [Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::Plan, nil] The plan the alert applies to.
          #
          #   @param subscription [Orb::Models::SubscriptionMinified, nil] The subscription the alert applies to.
          #
          #   @param thresholds [Array<Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::Threshold>, nil] The thresholds that define the conditions under which the alert will be triggere
          #
          #   @param type [Symbol, Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::Type] The type of alert. This must be a valid alert type.
          #
          #   @param balance_alert_status [Array<Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::BalanceAlertStatus>, nil] The current status of the alert. This field is only present for credit balance a
          #
          #   @param grouping_keys [Array<String>, nil] The property keys to group cost alerts by. Only present for cost alerts with gro
          #
          #   @param license_type [Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::LicenseType, nil] Minified license type for alert serialization.
          #
          #   @param price_filters [Array<Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::PriceFilter>, nil] Filters scoping which prices are included in spend and grouped cost alert evalua
          #
          #   @param threshold_overrides [Array<Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride>, nil] Per-group threshold overrides. Each override maps a specific combination of grou

          # @see Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration#metric
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

          # @see Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration#plan
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
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::Plan}
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

          class Threshold < Orb::Internal::Type::BaseModel
            # @!attribute value
            #   The value at which an alert will fire. For credit balance alerts, the alert will
            #   fire at or below this value. For usage and cost alerts, the alert will fire at
            #   or above this value.
            #
            #   @return [String]
            required :value, String

            # @!method initialize(value:)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::Threshold}
            #   for more details.
            #
            #   Thresholds are used to define the conditions under which an alert will be
            #   triggered.
            #
            #   @param value [String] The value at which an alert will fire. For credit balance alerts, the alert will
          end

          # The type of alert. This must be a valid alert type.
          #
          # @see Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration#type
          module Type
            extend Orb::Internal::Type::Enum

            CREDIT_BALANCE_DEPLETED = :credit_balance_depleted
            CREDIT_BALANCE_DROPPED = :credit_balance_dropped
            CREDIT_BALANCE_RECOVERED = :credit_balance_recovered
            USAGE_EXCEEDED = :usage_exceeded
            COST_EXCEEDED = :cost_exceeded
            SPEND_EXCEEDED = :spend_exceeded
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
            #   @return [String]
            required :threshold_value, String

            # @!method initialize(in_alert:, threshold_value:)
            #   Alert status is used to determine if an alert is currently in-alert or not.
            #
            #   @param in_alert [Boolean] Whether the alert is currently in-alert or not.
            #
            #   @param threshold_value [String] The value of the threshold that defines the alert status.
          end

          # @see Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration#license_type
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
            #   @return [Symbol, Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Field]
            required :field,
                     enum: -> { Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Field }

            # @!attribute operator
            #   Should prices that match the filter be included or excluded.
            #
            #   @return [Symbol, Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Operator]
            required :operator,
                     enum: -> { Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Operator }

            # @!attribute values
            #   The IDs or values that match this filter.
            #
            #   @return [Array<String>]
            required :values, Orb::Internal::Type::ArrayOf[String]

            # @!method initialize(field:, operator:, values:)
            #   @param field [Symbol, Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Field] The property of the price to filter on.
            #
            #   @param operator [Symbol, Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Operator] Should prices that match the filter be included or excluded.
            #
            #   @param values [Array<String>] The IDs or values that match this filter.

            # The property of the price to filter on.
            #
            # @see Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::PriceFilter#field
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
            # @see Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::PriceFilter#operator
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
            #   The values identifying this group, ordered to match group_keys when set and the
            #   alert's grouping_keys otherwise.
            #
            #   @return [Array<String>]
            required :group_values, Orb::Internal::Type::ArrayOf[String]

            # @!attribute thresholds
            #   The thresholds applied to this group. An empty list means the group is silenced.
            #
            #   @return [Array<Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride::Threshold>]
            required :thresholds,
                     -> do
                       Orb::Internal::Type::ArrayOf[
                         Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride::Threshold
                       ]
                     end

            # @!attribute group_keys
            #   The subset of the alert's grouping_keys this override binds. Null when the
            #   override targets one exact group across every grouping key.
            #
            #   @return [Array<String>, nil]
            optional :group_keys, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!method initialize(group_values:, thresholds:, group_keys: nil)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride}
            #   for more details.
            #
            #   A per-group threshold override on a grouped cost alert.
            #
            #   An empty `thresholds` list means the group is silenced (never fires). A
            #   non-empty list fully replaces the default thresholds for that group.
            #
            #   @param group_values [Array<String>] The values identifying this group, ordered to match group_keys when set and the
            #
            #   @param thresholds [Array<Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride::Threshold>] The thresholds applied to this group. An empty list means the group is silenced.
            #
            #   @param group_keys [Array<String>, nil] The subset of the alert's grouping_keys this override binds. Null when the overr

            class Threshold < Orb::Internal::Type::BaseModel
              # @!attribute value
              #   The value at which an alert will fire. For credit balance alerts, the alert will
              #   fire at or below this value. For usage and cost alerts, the alert will fire at
              #   or above this value.
              #
              #   @return [String]
              required :value, String

              # @!method initialize(value:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride::Threshold}
              #   for more details.
              #
              #   Thresholds are used to define the conditions under which an alert will be
              #   triggered.
              #
              #   @param value [String] The value at which an alert will fire. For credit balance alerts, the alert will
            end
          end
        end

        class License < Orb::Internal::Type::BaseModel
          # @!attribute external_license_id
          #
          #   @return [String]
          required :external_license_id, String

          # @!attribute license_type_id
          #
          #   @return [String]
          required :license_type_id, String

          # @!attribute threshold_percentage
          #
          #   @return [String]
          required :threshold_percentage, String

          # @!method initialize(external_license_id:, license_type_id:, threshold_percentage:)
          #   @param external_license_id [String]
          #   @param license_type_id [String]
          #   @param threshold_percentage [String]
        end
      end

      # @see Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent#subscription
      class Subscription < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute customer
        #
        #   @return [Orb::Models::CustomerMinified]
        required :customer, -> { Orb::CustomerMinified }

        # @!attribute end_date
        #
        #   @return [Time, nil]
        required :end_date, Time, nil?: true

        # @!attribute plan
        #
        #   @return [Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Subscription::Plan, nil]
        required :plan,
                 -> { Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Subscription::Plan },
                 nil?: true

        # @!attribute start_date
        #
        #   @return [Time]
        required :start_date, Time

        # @!attribute status
        #
        #   @return [Symbol, Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Subscription::Status]
        required :status,
                 enum: -> { Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Subscription::Status }

        # @!method initialize(id:, customer:, end_date:, plan:, start_date:, status:)
        #   A lightweight subscription representation for webhook payloads.
        #
        #   This avoids the expensive to_subscription_params() call required for full
        #   serialization.
        #
        #   @param id [String]
        #   @param customer [Orb::Models::CustomerMinified]
        #   @param end_date [Time, nil]
        #   @param plan [Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Subscription::Plan, nil]
        #   @param start_date [Time]
        #   @param status [Symbol, Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Subscription::Status]

        # @see Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Subscription#plan
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

          # @!method initialize(id:, external_plan_id:, name:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Subscription::Plan}
          #   for more details.
          #
          #   @param id [String, nil]
          #
          #   @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
          #
          #   @param name [String, nil]
        end

        # @see Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent::Subscription#status
        module Status
          extend Orb::Internal::Type::Enum

          ACTIVE = :active
          ENDED = :ended
          UPCOMING = :upcoming

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The event this payload describes.
      #
      # @see Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        SUBSCRIPTION_LICENSE_BALANCE_THRESHOLD_REACHED = :"subscription.license_balance_threshold_reached"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
