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
      #   @return [Array<Orb::Models::AlertCreateForSubscriptionParams::Threshold>]
      required :thresholds, -> { Orb::ArrayOf[Orb::Models::AlertCreateForSubscriptionParams::Threshold] }

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
      #   # @param thresholds [Array<Orb::Models::AlertCreateForSubscriptionParams::Threshold>]
      #   # @param type [Symbol, Orb::Models::AlertCreateForSubscriptionParams::Type]
      #   # @param metric_id [String, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(thresholds:, type:, metric_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      class Threshold < Orb::BaseModel
        # @!attribute value
        #   The value at which an alert will fire. For credit balance alerts, the alert will
        #     fire at or below this value. For usage and cost alerts, the alert will fire at
        #     or above this value.
        #
        #   @return [Float]
        required :value, Float

        # @!parse
        #   # Thresholds are used to define the conditions under which an alert will be
        #   #   triggered.
        #   #
        #   # @param value [Float]
        #   #
        #   def initialize(value:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      # @abstract
      #
      # The type of alert to create. This must be a valid alert type.
      class Type < Orb::Enum
        USAGE_EXCEEDED = :usage_exceeded
        COST_EXCEEDED = :cost_exceeded

        finalize!
      end
    end
  end
end
