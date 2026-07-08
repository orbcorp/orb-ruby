# frozen_string_literal: true

module Orb
  module Resources
    class Licenses
      class ExternalLicenses
        # Some parameter documentations has been truncated, see
        # {Orb::Models::Licenses::ExternalLicenseGetUsageParams} for more details.
        #
        # Returns usage and remaining credits for a license identified by its external
        # license ID.
        #
        # Date range defaults to the current billing period if not specified.
        #
        # @overload get_usage(external_license_id, license_type_id:, subscription_id:, cursor: nil, end_date: nil, group_by: nil, limit: nil, start_date: nil, request_options: {})
        #
        # @param external_license_id [String]
        #
        # @param license_type_id [String] The license type ID to filter licenses by.
        #
        # @param subscription_id [String] The subscription ID to get license usage for.
        #
        # @param cursor [String, nil] Pagination cursor from a previous request.
        #
        # @param end_date [Date, nil] End date for the usage period (YYYY-MM-DD). Defaults to end of current billing p
        #
        # @param group_by [String, nil] How to group the results. Valid values: 'license', 'day'. Can be combined (e.g.,
        #
        # @param limit [Integer] Maximum number of rows in the response data (default 20, max 100).
        #
        # @param start_date [Date, nil] Start date for the usage period (YYYY-MM-DD). Defaults to start of current billi
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Licenses::ExternalLicenseGetUsageResponse]
        #
        # @see Orb::Models::Licenses::ExternalLicenseGetUsageParams
        def get_usage(external_license_id, params)
          parsed, options = Orb::Licenses::ExternalLicenseGetUsageParams.dump_request(params)
          query = Orb::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["licenses/external_licenses/%1$s/usage", external_license_id],
            query: query,
            model: Orb::Models::Licenses::ExternalLicenseGetUsageResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Orb::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
