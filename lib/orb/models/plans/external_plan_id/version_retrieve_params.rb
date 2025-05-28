# frozen_string_literal: true

module Orb
  module Models
    module Plans
      module ExternalPlanID
        # @see Orb::Resources::Plans::ExternalPlanID::Versions#retrieve
        class VersionRetrieveParams < Orb::Internal::Type::BaseModel
          extend Orb::Internal::Type::RequestParameters::Converter
          include Orb::Internal::Type::RequestParameters

          # @!attribute external_plan_id
          #
          #   @return [String]
          required :external_plan_id, String

          # @!method initialize(external_plan_id:, request_options: {})
          #   @param external_plan_id [String]
          #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
