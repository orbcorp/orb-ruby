# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::LicenseTypes#retrieve
    class LicenseTypeRetrieveParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute license_type_id
      #
      #   @return [String]
      required :license_type_id, String

      # @!method initialize(license_type_id:, request_options: {})
      #   @param license_type_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
