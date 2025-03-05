# frozen_string_literal: true

module Orb
  module Models
    class AlertUpdateParams < Orb::BaseModel
      # @!parse
      #   extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute thresholds
      #   The thresholds that define the values at which the alert will be triggered.
      #
      #   @return [Array<Orb::Models::ThresholdModel>]
      required :thresholds, -> { Orb::ArrayOf[Orb::Models::ThresholdModel] }

      # @!parse
      #   # @param thresholds [Array<Orb::Models::ThresholdModel>]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(thresholds:, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
