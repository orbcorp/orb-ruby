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
      #   @return [Orb::Models::Alert::Customer, nil]
      required :customer, -> { Orb::Alert::Customer }, nil?: true

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
      #   @return [Orb::Models::Alert::Subscription, nil]
      required :subscription, -> { Orb::Alert::Subscription }, nil?: true

      # @!attribute thresholds
      #   The thresholds that define the conditions under which the alert will be
      #   triggered.
      #
      #   @return [Array<Orb::Models::Alert::Threshold>, nil]
      required :thresholds, -> { Orb::Internal::Type::ArrayOf[Orb::Alert::Threshold] }, nil?: true

      # @!attribute type
      #   The type of alert. This must be a valid alert type.
      #
      #   @return [Symbol, Orb::Models::Alert::Type]
      required :type, enum: -> { Orb::Alert::Type }

      # @!method initialize(id:, created_at:, currency:, customer:, enabled:, metric:, plan:, subscription:, thresholds:, type:)
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
      #   @param customer [Orb::Models::Alert::Customer, nil] The customer the alert applies to.
      #
      #   @param enabled [Boolean] Whether the alert is enabled or disabled.
      #
      #   @param metric [Orb::Models::Alert::Metric, nil] The metric the alert applies to.
      #
      #   @param plan [Orb::Models::Alert::Plan, nil] The plan the alert applies to.
      #
      #   @param subscription [Orb::Models::Alert::Subscription, nil] The subscription the alert applies to.
      #
      #   @param thresholds [Array<Orb::Models::Alert::Threshold>, nil] The thresholds that define the conditions under which the alert will be triggere
      #
      #   @param type [Symbol, Orb::Models::Alert::Type] The type of alert. This must be a valid alert type.

      # @see Orb::Models::Alert#customer
      class Customer < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute external_customer_id
        #
        #   @return [String, nil]
        required :external_customer_id, String, nil?: true

        # @!method initialize(id:, external_customer_id:)
        #   The customer the alert applies to.
        #
        #   @param id [String]
        #   @param external_customer_id [String, nil]
      end

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

      # @see Orb::Models::Alert#subscription
      class Subscription < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   The subscription the alert applies to.
        #
        #   @param id [String]
      end

      class Threshold < Orb::Internal::Type::BaseModel
        # @!attribute value
        #   The value at which an alert will fire. For credit balance alerts, the alert will
        #   fire at or below this value. For usage and cost alerts, the alert will fire at
        #   or above this value.
        #
        #   @return [Float]
        required :value, Float

        # @!method initialize(value:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Alert::Threshold} for more details.
        #
        #   Thresholds are used to define the conditions under which an alert will be
        #   triggered.
        #
        #   @param value [Float] The value at which an alert will fire. For credit balance alerts, the alert will
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

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
