# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Licenses#deactivate
    class LicenseDeactivateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute license_id
      #
      #   @return [String]
      required :license_id, String

      # @!attribute end_date
      #   The date to deactivate the license. If not provided, defaults to end of day
      #   today in the customer's timezone.
      #
      #   @return [Date, nil]
      optional :end_date, Date, nil?: true

      # @!method initialize(license_id:, end_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::LicenseDeactivateParams} for more details.
      #
      #   @param license_id [String]
      #
      #   @param end_date [Date, nil] The date to deactivate the license. If not provided, defaults to end of day toda
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
