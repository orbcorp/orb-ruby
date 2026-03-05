# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Licenses#retrieve
    class LicenseRetrieveParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute license_id
      #
      #   @return [String]
      required :license_id, String

      # @!method initialize(license_id:, request_options: {})
      #   @param license_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
