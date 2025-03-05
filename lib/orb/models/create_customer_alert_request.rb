# frozen_string_literal: true

module Orb
  module Models
    class CreateCustomerAlertRequest < Orb::BaseModel
      # @!attribute currency
      #   The case sensitive currency or custom pricing unit to use for this alert.
      #
      #   @return [String]
      required :currency, String

      # @!attribute type
      #   The type of alert to create. This must be a valid alert type.
      #
      #   @return [Symbol, Orb::Models::CreateCustomerAlertRequest::Type]
      required :type, enum: -> { Orb::Models::CreateCustomerAlertRequest::Type }

      # @!attribute thresholds
      #   The thresholds that define the values at which the alert will be triggered.
      #
      #   @return [Array<Orb::Models::ThresholdModel>, nil]
      optional :thresholds, -> { Orb::ArrayOf[Orb::Models::ThresholdModel] }, nil?: true

      # @!parse
      #   # @param currency [String]
      #   # @param type [Symbol, Orb::Models::CreateCustomerAlertRequest::Type]
      #   # @param thresholds [Array<Orb::Models::ThresholdModel>, nil]
      #   #
      #   def initialize(currency:, type:, thresholds: nil, **) = super

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
