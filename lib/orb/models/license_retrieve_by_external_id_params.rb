# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Licenses#retrieve_by_external_id
    class LicenseRetrieveByExternalIDParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute license_type_id
      #   The ID of the license type to fetch the license for.
      #
      #   @return [String]
      required :license_type_id, String

      # @!attribute subscription_id
      #   The ID of the subscription to fetch the license for.
      #
      #   @return [String]
      required :subscription_id, String

      # @!method initialize(license_type_id:, subscription_id:, request_options: {})
      #   @param license_type_id [String] The ID of the license type to fetch the license for.
      #
      #   @param subscription_id [String] The ID of the subscription to fetch the license for.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
