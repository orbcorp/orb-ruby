# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Licenses#create
    class LicenseCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute external_license_id
      #   The external identifier for the license.
      #
      #   @return [String]
      required :external_license_id, String

      # @!attribute license_type_id
      #
      #   @return [String]
      required :license_type_id, String

      # @!attribute subscription_id
      #
      #   @return [String]
      required :subscription_id, String

      # @!attribute end_date
      #   The end date of the license. If not provided, the license will remain active
      #   until deactivated.
      #
      #   @return [Date, nil]
      optional :end_date, Date, nil?: true

      # @!attribute start_date
      #   The start date of the license. If not provided, defaults to start of day today
      #   in the customer's timezone.
      #
      #   @return [Date, nil]
      optional :start_date, Date, nil?: true

      # @!method initialize(external_license_id:, license_type_id:, subscription_id:, end_date: nil, start_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::LicenseCreateParams} for more details.
      #
      #   @param external_license_id [String] The external identifier for the license.
      #
      #   @param license_type_id [String]
      #
      #   @param subscription_id [String]
      #
      #   @param end_date [Date, nil] The end date of the license. If not provided, the license will remain active unt
      #
      #   @param start_date [Date, nil] The start date of the license. If not provided, defaults to start of day today i
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
