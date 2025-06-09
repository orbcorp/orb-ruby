# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Alerts#update
    class AlertUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute thresholds
      #   The thresholds that define the values at which the alert will be triggered.
      #
      #   @return [Array<Orb::Models::Threshold>]
      required :thresholds, -> { Orb::Internal::Type::ArrayOf[Orb::Threshold] }

      # @!method initialize(thresholds:, request_options: {})
      #   @param thresholds [Array<Orb::Models::Threshold>] The thresholds that define the values at which the alert will be triggered.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
