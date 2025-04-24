# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Alerts#create_for_external_customer
    class AlertCreateForExternalCustomerParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute currency
      #   The case sensitive currency or custom pricing unit to use for this alert.
      #
      #   @return [String]
      required :currency, String

      # @!attribute type
      #   The type of alert to create. This must be a valid alert type.
      #
      #   @return [Symbol, Orb::Models::AlertCreateForExternalCustomerParams::Type]
      required :type, enum: -> { Orb::Models::AlertCreateForExternalCustomerParams::Type }

      # @!attribute thresholds
      #   The thresholds that define the values at which the alert will be triggered.
      #
      #   @return [Array<Orb::Models::AlertCreateForExternalCustomerParams::Threshold>, nil]
      optional :thresholds,
               -> { Orb::Internal::Type::ArrayOf[Orb::Models::AlertCreateForExternalCustomerParams::Threshold] },
               nil?: true

      # @!method initialize(currency:, type:, thresholds: nil, request_options: {})
      #   @param currency [String] The case sensitive currency or custom pricing unit to use for this alert.
      #
      #   @param type [Symbol, Orb::Models::AlertCreateForExternalCustomerParams::Type] The type of alert to create. This must be a valid alert type.
      #
      #   @param thresholds [Array<Orb::Models::AlertCreateForExternalCustomerParams::Threshold>, nil] The thresholds that define the values at which the alert will be triggered.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      # The type of alert to create. This must be a valid alert type.
      module Type
        extend Orb::Internal::Type::Enum

        CREDIT_BALANCE_DEPLETED = :credit_balance_depleted
        CREDIT_BALANCE_DROPPED = :credit_balance_dropped
        CREDIT_BALANCE_RECOVERED = :credit_balance_recovered

        # @!method self.values
        #   @return [Array<Symbol>]
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
        #   {Orb::Models::AlertCreateForExternalCustomerParams::Threshold} for more details.
        #
        #   Thresholds are used to define the conditions under which an alert will be
        #   triggered.
        #
        #   @param value [Float] The value at which an alert will fire. For credit balance alerts, the alert will
        #   ...
      end
    end
  end
end
