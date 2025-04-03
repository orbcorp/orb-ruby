# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Alerts#update
    class AlertUpdateParams < Orb::Internal::Type::BaseModel
      # @!parse
      #   extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute thresholds
      #   The thresholds that define the values at which the alert will be triggered.
      #
      #   @return [Array<Orb::Models::AlertUpdateParams::Threshold>]
      required :thresholds, -> { Orb::Internal::Type::ArrayOf[Orb::Models::AlertUpdateParams::Threshold] }

      # @!parse
      #   # @param thresholds [Array<Orb::Models::AlertUpdateParams::Threshold>]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(thresholds:, request_options: {}, **) = super

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

      class Threshold < Orb::Internal::Type::BaseModel
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

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
      end
    end
  end
end
