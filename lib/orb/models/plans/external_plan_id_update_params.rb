# frozen_string_literal: true

module Orb
  module Models
    module Plans
      class ExternalPlanIDUpdateParams < Orb::Models::EditPlanModel
        # @!parse
        #   extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        # @!parse
        #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(request_options: {}, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
