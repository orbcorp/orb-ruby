# frozen_string_literal: true

module Orb
  module Models
    class CustomerCreditBalanceDroppedWebhookEvent < Orb::Internal::Type::BaseModel
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

      # @!attribute customer
      #   A customer is a buyer of your products, and the other party to the billing
      #   relationship.
      #
      #   In Orb, customers are assigned system generated identifiers automatically, but
      #   it's often desirable to have these match existing identifiers in your system. To
      #   avoid having to denormalize Orb ID information, you can pass in an
      #   `external_customer_id` with your own identifier. See
      #   [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
      #   information about how these aliases work in Orb.
      #
      #   In addition to having an identifier in your system, a customer may exist in a
      #   payment provider solution like Stripe. Use the `payment_provider_id` and the
      #   `payment_provider` enum field to express this mapping.
      #
      #   A customer also has a timezone (from the standard
      #   [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
      #   your account's timezone. See [Timezone localization](/essentials/timezones) for
      #   information on what this timezone parameter influences within Orb.
      #
      #   @return [Orb::Models::Customer]
      required :customer, -> { Orb::Customer }

      # @!attribute properties
      #
      #   @return [Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties]
      required :properties, -> { Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Type]
      required :type, enum: -> { Orb::CustomerCreditBalanceDroppedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, customer:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::CustomerCreditBalanceDroppedWebhookEvent} for more details.
      #
      #   Issued when a customer's prepaid credits balance is depleted to a configured
      #   threshold.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param customer [Orb::Models::Customer] A customer is a buyer of your products, and the other party to the billing relat
      #
      #   @param properties [Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::CustomerCreditBalanceDroppedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute alert_configuration
        #   [Alerts within Orb](/product-catalog/configuring-alerts) monitor spending,
        #   usage, or credit balance and trigger webhooks when a threshold is exceeded.
        #
        #   Alerts created through the API can be scoped to either customers or
        #   subscriptions.
        #
        #   @return [Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration]
        required :alert_configuration,
                 -> { Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration }

        # @!attribute balance_threshold
        #
        #   @return [String]
        required :balance_threshold, String

        # @!attribute pricing_unit
        #   A currency or custom credit unit, as embedded in webhook payloads.
        #
        #   @return [Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::PricingUnit, nil]
        required :pricing_unit,
                 -> { Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::PricingUnit },
                 nil?: true

        # @!method initialize(alert_configuration:, balance_threshold:, pricing_unit:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties} for more
        #   details.
        #
        #   @param alert_configuration [Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration] [Alerts within Orb](/product-catalog/configuring-alerts) monitor spending,
        #
        #   @param balance_threshold [String]
        #
        #   @param pricing_unit [Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::PricingUnit, nil] A currency or custom credit unit, as embedded in webhook payloads.

        # @see Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties#alert_configuration
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
          #   @return [Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Metric, nil]
          required :metric,
                   -> {
                     Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Metric
                   },
                   nil?: true

          # @!attribute plan
          #   The plan the alert applies to.
          #
          #   @return [Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Plan, nil]
          required :plan,
                   -> { Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Plan },
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
          #   @return [Array<Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Threshold>, nil]
          required :thresholds,
                   -> {
                     Orb::Internal::Type::ArrayOf[Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Threshold]
                   },
                   nil?: true

          # @!attribute type
          #   The type of alert. This must be a valid alert type.
          #
          #   @return [Symbol, Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Type]
          required :type,
                   enum: -> { Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Type }

          # @!attribute balance_alert_status
          #   The current status of the alert. This field is only present for credit balance
          #   alerts.
          #
          #   @return [Array<Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::BalanceAlertStatus>, nil]
          optional :balance_alert_status,
                   -> {
                     Orb::Internal::Type::ArrayOf[Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::BalanceAlertStatus]
                   },
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
          #   @return [Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::LicenseType, nil]
          optional :license_type,
                   -> {
                     Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::LicenseType
                   },
                   nil?: true

          # @!attribute price_filters
          #   Filters scoping which prices are included in spend and grouped cost alert
          #   evaluation. Alerts use the price_id, item_id, and price_type fields only; the
          #   alert's pricing unit is reported by currency.
          #
          #   @return [Array<Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter>, nil]
          optional :price_filters,
                   -> {
                     Orb::Internal::Type::ArrayOf[Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter]
                   },
                   nil?: true

          # @!attribute threshold_overrides
          #   Per-group threshold overrides. Each override maps a specific combination of
          #   grouping_keys values to a replacement threshold list. Only present for grouped
          #   cost alerts that have at least one override.
          #
          #   @return [Array<Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride>, nil]
          optional :threshold_overrides,
                   -> {
                     Orb::Internal::Type::ArrayOf[Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride]
                   },
                   nil?: true

          # @!method initialize(id:, created_at:, currency:, customer:, enabled:, metric:, plan:, subscription:, thresholds:, type:, balance_alert_status: nil, grouping_keys: nil, license_type: nil, price_filters: nil, threshold_overrides: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration}
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
          #   @param metric [Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Metric, nil] The metric the alert applies to.
          #
          #   @param plan [Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Plan, nil] The plan the alert applies to.
          #
          #   @param subscription [Orb::Models::SubscriptionMinified, nil] The subscription the alert applies to.
          #
          #   @param thresholds [Array<Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Threshold>, nil] The thresholds that define the conditions under which the alert will be triggere
          #
          #   @param type [Symbol, Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Type] The type of alert. This must be a valid alert type.
          #
          #   @param balance_alert_status [Array<Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::BalanceAlertStatus>, nil] The current status of the alert. This field is only present for credit balance a
          #
          #   @param grouping_keys [Array<String>, nil] The property keys to group cost alerts by. Only present for cost alerts with gro
          #
          #   @param license_type [Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::LicenseType, nil] Minified license type for alert serialization.
          #
          #   @param price_filters [Array<Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter>, nil] Filters scoping which prices are included in spend and grouped cost alert evalua
          #
          #   @param threshold_overrides [Array<Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride>, nil] Per-group threshold overrides. Each override maps a specific combination of grou

          # @see Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration#metric
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

          # @see Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration#plan
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
            #   {Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Plan}
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
            #   {Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::Threshold}
            #   for more details.
            #
            #   Thresholds are used to define the conditions under which an alert will be
            #   triggered.
            #
            #   @param value [String] The value at which an alert will fire. For credit balance alerts, the alert will
          end

          # The type of alert. This must be a valid alert type.
          #
          # @see Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration#type
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

          # @see Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration#license_type
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
            #   @return [Symbol, Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Field]
            required :field,
                     enum: -> { Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Field }

            # @!attribute operator
            #   Should prices that match the filter be included or excluded.
            #
            #   @return [Symbol, Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Operator]
            required :operator,
                     enum: -> { Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Operator }

            # @!attribute values
            #   The IDs or values that match this filter.
            #
            #   @return [Array<String>]
            required :values, Orb::Internal::Type::ArrayOf[String]

            # @!method initialize(field:, operator:, values:)
            #   @param field [Symbol, Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Field] The property of the price to filter on.
            #
            #   @param operator [Symbol, Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter::Operator] Should prices that match the filter be included or excluded.
            #
            #   @param values [Array<String>] The IDs or values that match this filter.

            # The property of the price to filter on.
            #
            # @see Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter#field
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
            # @see Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::PriceFilter#operator
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
            #   @return [Array<Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride::Threshold>]
            required :thresholds,
                     -> do
                       Orb::Internal::Type::ArrayOf[
                         Orb::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride::Threshold
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
            #   {Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride}
            #   for more details.
            #
            #   A per-group threshold override on a grouped cost alert.
            #
            #   An empty `thresholds` list means the group is silenced (never fires). A
            #   non-empty list fully replaces the default thresholds for that group.
            #
            #   @param group_values [Array<String>] The values identifying this group, ordered to match group_keys when set and the
            #
            #   @param thresholds [Array<Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride::Threshold>] The thresholds applied to this group. An empty list means the group is silenced.
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
              #   {Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties::AlertConfiguration::ThresholdOverride::Threshold}
              #   for more details.
              #
              #   Thresholds are used to define the conditions under which an alert will be
              #   triggered.
              #
              #   @param value [String] The value at which an alert will fire. For credit balance alerts, the alert will
            end
          end
        end

        # @see Orb::Models::CustomerCreditBalanceDroppedWebhookEvent::Properties#pricing_unit
        class PricingUnit < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute display_name
          #
          #   @return [String, nil]
          required :display_name, String, nil?: true

          # @!attribute name
          #
          #   @return [String]
          required :name, String

          # @!attribute symbol
          #
          #   @return [String, nil]
          required :symbol, String, nil?: true

          # @!method initialize(id:, display_name:, name:, symbol:)
          #   A currency or custom credit unit, as embedded in webhook payloads.
          #
          #   @param id [String]
          #   @param display_name [String, nil]
          #   @param name [String]
          #   @param symbol [String, nil]
        end
      end

      # The event this payload describes.
      #
      # @see Orb::Models::CustomerCreditBalanceDroppedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        CUSTOMER_CREDIT_BALANCE_DROPPED = :"customer.credit_balance_dropped"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
