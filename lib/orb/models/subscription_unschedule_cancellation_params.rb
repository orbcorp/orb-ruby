# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#unschedule_cancellation
    class SubscriptionUnscheduleCancellationParams < Orb::BaseModel
      # @!parse
      #   extend Orb::Type::RequestParameters::Converter
      include Orb::RequestParameters

      # @!parse
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
