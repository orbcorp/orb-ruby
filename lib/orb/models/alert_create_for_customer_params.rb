# frozen_string_literal: true

module Orb
  module Models
    class AlertCreateForCustomerParams < Orb::BaseModel
      # @!parse
      #   extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute currency
      #   The case sensitive currency or custom pricing unit to use for this alert.
      #
      #   @return [String]
      required :currency, String

      # @!attribute type
      #   The type of alert to create. This must be a valid alert type.
      #
      #   @return [Symbol, Orb::Models::AlertCreateForCustomerParams::Type]
      required :type, enum: -> { Orb::Models::AlertCreateForCustomerParams::Type }

      # @!attribute thresholds
      #   The thresholds that define the values at which the alert will be triggered.
      #
      #   @return [Array<Orb::Models::AlertCreateForCustomerParams::Threshold>, nil]
      optional :thresholds,
               -> { Orb::ArrayOf[Orb::Models::AlertCreateForCustomerParams::Threshold] },
               nil?: true

      # @!parse
      #   # @param currency [String]
      #   # @param type [Symbol, Orb::Models::AlertCreateForCustomerParams::Type]
      #   # @param thresholds [Array<Orb::Models::AlertCreateForCustomerParams::Threshold>, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(currency:, type:, thresholds: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # The type of alert to create. This must be a valid alert type.
      module Type
        extend Orb::Enum

        CREDIT_BALANCE_DEPLETED = :credit_balance_depleted
        CREDIT_BALANCE_DROPPED = :credit_balance_dropped
        CREDIT_BALANCE_RECOVERED = :credit_balance_recovered

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end

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
    end
  end
end
