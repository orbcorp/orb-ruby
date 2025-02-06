# frozen_string_literal: true

module Orb
  module Models
    class AlertEnableParams < Orb::BaseModel
      # @!parse
      #   extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute subscription_id
      #   Used to update the status of a plan alert scoped to this subscription_id
      #
      #   @return [String, nil]
      optional :subscription_id, String, nil?: true

      # @!parse
      #   # @param subscription_id [String, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(subscription_id: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
