# frozen_string_literal: true

module Orb
  module Models
    module Licenses
      # @see Orb::Resources::Licenses::Usage#get_all_usage
      class UsageGetAllUsageParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute license_type_id
        #   The license type ID to filter licenses by.
        #
        #   @return [String]
        required :license_type_id, String

        # @!attribute subscription_id
        #   The subscription ID to get license usage for.
        #
        #   @return [String]
        required :subscription_id, String

        # @!attribute cursor
        #   Pagination cursor from a previous request.
        #
        #   @return [String, nil]
        optional :cursor, String, nil?: true

        # @!attribute end_date
        #   End date for the usage period (YYYY-MM-DD). Defaults to end of current billing
        #   period.
        #
        #   @return [Date, nil]
        optional :end_date, Date, nil?: true

        # @!attribute group_by
        #   How to group the results. Valid values: 'license', 'day'. Can be combined (e.g.,
        #   'license,day').
        #
        #   @return [String, nil]
        optional :group_by, String, nil?: true

        # @!attribute limit
        #   Maximum number of rows in the response data (default 20, max 100).
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute start_date
        #   Start date for the usage period (YYYY-MM-DD). Defaults to start of current
        #   billing period.
        #
        #   @return [Date, nil]
        optional :start_date, Date, nil?: true

        # @!method initialize(license_type_id:, subscription_id:, cursor: nil, end_date: nil, group_by: nil, limit: nil, start_date: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Licenses::UsageGetAllUsageParams} for more details.
        #
        #   @param license_type_id [String] The license type ID to filter licenses by.
        #
        #   @param subscription_id [String] The subscription ID to get license usage for.
        #
        #   @param cursor [String, nil] Pagination cursor from a previous request.
        #
        #   @param end_date [Date, nil] End date for the usage period (YYYY-MM-DD). Defaults to end of current billing p
        #
        #   @param group_by [String, nil] How to group the results. Valid values: 'license', 'day'. Can be combined (e.g.,
        #
        #   @param limit [Integer] Maximum number of rows in the response data (default 20, max 100).
        #
        #   @param start_date [Date, nil] Start date for the usage period (YYYY-MM-DD). Defaults to start of current billi
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
