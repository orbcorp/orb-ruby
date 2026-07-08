# typed: strong

module Orb
  module Resources
    class Licenses
      class ExternalLicenses
        # Returns usage and remaining credits for a license identified by its external
        # license ID.
        #
        # Date range defaults to the current billing period if not specified.
        sig do
          params(
            external_license_id: String,
            license_type_id: String,
            subscription_id: String,
            cursor: T.nilable(String),
            end_date: T.nilable(Date),
            group_by: T.nilable(String),
            limit: Integer,
            start_date: T.nilable(Date),
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Models::Licenses::ExternalLicenseGetUsageResponse)
        end
        def get_usage(
          external_license_id,
          # The license type ID to filter licenses by.
          license_type_id:,
          # The subscription ID to get license usage for.
          subscription_id:,
          # Pagination cursor from a previous request.
          cursor: nil,
          # End date for the usage period (YYYY-MM-DD). Defaults to end of current billing
          # period.
          end_date: nil,
          # How to group the results. Valid values: 'license', 'day'. Can be combined (e.g.,
          # 'license,day').
          group_by: nil,
          # Maximum number of rows in the response data (default 20, max 100).
          limit: nil,
          # Start date for the usage period (YYYY-MM-DD). Defaults to start of current
          # billing period.
          start_date: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
