# frozen_string_literal: true

module Orb
  module Models
    module Plans
      module ExternalPlanID
        # @see Orb::Resources::Plans::ExternalPlanID::Draft#publish
        class DraftPublishParams < Orb::Internal::Type::BaseModel
          extend Orb::Internal::Type::RequestParameters::Converter
          include Orb::Internal::Type::RequestParameters

          # @!attribute external_plan_id
          #
          #   @return [String]
          required :external_plan_id, String

          # @!attribute set_as_default
          #   Also make the new version the plan's default.
          #
          #   @return [Boolean, nil]
          optional :set_as_default, Orb::Internal::Type::Boolean

          # @!method initialize(external_plan_id:, set_as_default: nil, request_options: {})
          #   @param external_plan_id [String]
          #
          #   @param set_as_default [Boolean] Also make the new version the plan's default.
          #
          #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
