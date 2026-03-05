# frozen_string_literal: true

module Orb
  module Models
    module Beta
      # @see Orb::Resources::Beta::ExternalPlanID#set_default_plan_version
      class ExternalPlanIDSetDefaultPlanVersionParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute external_plan_id
        #
        #   @return [String]
        required :external_plan_id, String

        # @!attribute version
        #   Plan version to set as the default.
        #
        #   @return [Integer]
        required :version, Integer

        # @!method initialize(external_plan_id:, version:, request_options: {})
        #   @param external_plan_id [String]
        #
        #   @param version [Integer] Plan version to set as the default.
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
