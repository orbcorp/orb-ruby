# frozen_string_literal: true

module Orb
  module Models
    class AlertModel < Orb::BaseModel
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
      #   @return [Orb::Models::CustomerMinifiedModel, nil]
      required :customer, -> { Orb::Models::CustomerMinifiedModel }, nil?: true

      # @!attribute enabled
      #   Whether the alert is enabled or disabled.
      #
      #   @return [Boolean]
      required :enabled, Orb::BooleanModel

      # @!attribute metric
      #   The metric the alert applies to.
      #
      #   @return [Orb::Models::AlertModel::Metric, nil]
      required :metric, -> { Orb::Models::AlertModel::Metric }, nil?: true

      # @!attribute plan
      #   The plan the alert applies to.
      #
      #   @return [Orb::Models::AlertModel::Plan, nil]
      required :plan, -> { Orb::Models::AlertModel::Plan }, nil?: true

      # @!attribute subscription
      #   The subscription the alert applies to.
      #
      #   @return [Orb::Models::SubscriptionMinifiedModel, nil]
      required :subscription, -> { Orb::Models::SubscriptionMinifiedModel }, nil?: true

      # @!attribute thresholds
      #   The thresholds that define the conditions under which the alert will be
      #     triggered.
      #
      #   @return [Array<Orb::Models::ThresholdModel>, nil]
      required :thresholds, -> { Orb::ArrayOf[Orb::Models::ThresholdModel] }, nil?: true

      # @!attribute type
      #   The type of alert. This must be a valid alert type.
      #
      #   @return [Symbol, Orb::Models::AlertModel::Type]
      required :type, enum: -> { Orb::Models::AlertModel::Type }

      # @!parse
      #   # [Alerts within Orb](/product-catalog/configuring-alerts) monitor spending,
      #   #   usage, or credit balance and trigger webhooks when a threshold is exceeded.
      #   #
      #   #   Alerts created through the API can be scoped to either customers or
      #   #   subscriptions.
      #   #
      #   # @param id [String]
      #   # @param created_at [Time]
      #   # @param currency [String, nil]
      #   # @param customer [Orb::Models::CustomerMinifiedModel, nil]
      #   # @param enabled [Boolean]
      #   # @param metric [Orb::Models::AlertModel::Metric, nil]
      #   # @param plan [Orb::Models::AlertModel::Plan, nil]
      #   # @param subscription [Orb::Models::SubscriptionMinifiedModel, nil]
      #   # @param thresholds [Array<Orb::Models::ThresholdModel>, nil]
      #   # @param type [Symbol, Orb::Models::AlertModel::Type]
      #   #
      #   def initialize(id:, created_at:, currency:, customer:, enabled:, metric:, plan:, subscription:, thresholds:, type:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      class Metric < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!parse
        #   # The metric the alert applies to.
        #   #
        #   # @param id [String]
        #   #
        #   def initialize(id:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      class Plan < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        required :id, String, nil?: true

        # @!attribute external_plan_id
        #   An optional user-defined ID for this plan resource, used throughout the system
        #     as an alias for this Plan. Use this field to identify a plan by an existing
        #     identifier in your system.
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

        # @!parse
        #   # The plan the alert applies to.
        #   #
        #   # @param id [String, nil]
        #   # @param external_plan_id [String, nil]
        #   # @param name [String, nil]
        #   # @param plan_version [String]
        #   #
        #   def initialize(id:, external_plan_id:, name:, plan_version:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      # @abstract
      #
      # The type of alert. This must be a valid alert type.
      #
      # @example
      # ```ruby
      # case type
      # in :usage_exceeded
      #   # ...
      # in :cost_exceeded
      #   # ...
      # in :credit_balance_depleted
      #   # ...
      # in :credit_balance_dropped
      #   # ...
      # in :credit_balance_recovered
      #   # ...
      # end
      # ```
      class Type < Orb::Enum
        USAGE_EXCEEDED = :usage_exceeded
        COST_EXCEEDED = :cost_exceeded
        CREDIT_BALANCE_DEPLETED = :credit_balance_depleted
        CREDIT_BALANCE_DROPPED = :credit_balance_dropped
        CREDIT_BALANCE_RECOVERED = :credit_balance_recovered

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
