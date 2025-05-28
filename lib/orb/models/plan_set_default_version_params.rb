# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Plans#set_default_version
    class PlanSetDefaultVersionParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute version
      #   Plan version to set as the default.
      #
      #   @return [Integer]
      required :version, Integer

      # @!method initialize(version:, request_options: {})
      #   @param version [Integer] Plan version to set as the default.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
