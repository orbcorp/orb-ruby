# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionUnscheduleFixedFeeQuantityUpdatesParams < Orb::BaseModel
      # @!parse
      #   extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute price_id
      #   Price for which the updates should be cleared. Must be a fixed fee.
      #
      #   @return [String]
      required :price_id, String

      # @!parse
      #   # @param price_id [String]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(price_id:, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
