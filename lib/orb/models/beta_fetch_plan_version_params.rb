# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Beta#fetch_plan_version
    class BetaFetchPlanVersionParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute plan_id
      #
      #   @return [String]
      required :plan_id, String

      # @!attribute version
      #
      #   @return [String]
      required :version, String

      # @!method initialize(plan_id:, version:, request_options: {})
      #   @param plan_id [String]
      #   @param version [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
