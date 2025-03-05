# frozen_string_literal: true

module Orb
  module Models
    class AlertCreateForSubscriptionParams < Orb::BaseModel
      # @!parse
      #   extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute thresholds
      #   The thresholds that define the values at which the alert will be triggered.
      #
      #   @return [Array<Orb::Models::ThresholdModel>]
      required :thresholds, -> { Orb::ArrayOf[Orb::Models::ThresholdModel] }

      # @!attribute type
      #   The type of alert to create. This must be a valid alert type.
      #
      #   @return [Symbol, Orb::Models::AlertCreateForSubscriptionParams::Type]
      required :type, enum: -> { Orb::Models::AlertCreateForSubscriptionParams::Type }

      # @!attribute metric_id
      #   The metric to track usage for.
      #
      #   @return [String, nil]
      optional :metric_id, String, nil?: true

      # @!parse
      #   # @param thresholds [Array<Orb::Models::ThresholdModel>]
      #   # @param type [Symbol, Orb::Models::AlertCreateForSubscriptionParams::Type]
      #   # @param metric_id [String, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(thresholds:, type:, metric_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      #
      # The type of alert to create. This must be a valid alert type.
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
