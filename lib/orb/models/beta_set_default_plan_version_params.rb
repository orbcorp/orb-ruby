# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Beta#set_default_plan_version
    class BetaSetDefaultPlanVersionParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute plan_id
      #
      #   @return [String]
      required :plan_id, String

      # @!attribute version
      #   Plan version to set as the default.
      #
      #   @return [Integer]
      required :version, Integer

      # @!method initialize(plan_id:, version:, request_options: {})
      #   @param plan_id [String]
      #
      #   @param version [Integer] Plan version to set as the default.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
