# frozen_string_literal: true

module Orb
  module Models
    module Plans
      # @see Orb::Resources::Plans::Draft#publish
      class DraftPublishParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute plan_id
        #
        #   @return [String]
        required :plan_id, String

        # @!attribute set_as_default
        #   Also make the new version the plan's default.
        #
        #   @return [Boolean, nil]
        optional :set_as_default, Orb::Internal::Type::Boolean

        # @!method initialize(plan_id:, set_as_default: nil, request_options: {})
        #   @param plan_id [String]
        #
        #   @param set_as_default [Boolean] Also make the new version the plan's default.
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
