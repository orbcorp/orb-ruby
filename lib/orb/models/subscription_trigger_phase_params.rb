# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionTriggerPhaseParams < Orb::BaseModel
      # @!parse
      #   extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute effective_date
      #   The date on which the phase change should take effect. If not provided, defaults
      #     to today in the customer's timezone.
      #
      #   @return [Date, nil]
      optional :effective_date, Date, nil?: true

      # @!parse
      #   # @param effective_date [Date, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(effective_date: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
