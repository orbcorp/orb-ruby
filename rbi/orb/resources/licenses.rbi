# typed: strong

module Orb
  module Resources
    class Licenses
      sig { returns(Orb::Resources::Licenses::ExternalLicenses) }
      attr_reader :external_licenses

      sig { returns(Orb::Resources::Licenses::Usage) }
      attr_reader :usage

      # This endpoint is used to create a new license for a user.
      #
      # If a start date is provided, the license will be activated at the **start** of
      # the specified date in the customer's timezone. Otherwise, the activation time
      # will default to the **start** of the current day in the customer's timezone.
      sig do
        params(
          external_license_id: String,
          license_type_id: String,
          subscription_id: String,
          end_date: T.nilable(Date),
          start_date: T.nilable(Date),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::LicenseCreateResponse)
      end
      def create(
        # The external identifier for the license.
        external_license_id:,
        license_type_id:,
        subscription_id:,
        # The end date of the license. If not provided, the license will remain active
        # until deactivated.
        end_date: nil,
        # The start date of the license. If not provided, defaults to start of day today
        # in the customer's timezone.
        start_date: nil,
        request_options: {}
      )
      end

      # This endpoint is used to fetch a license given an identifier.
      sig do
        params(
          license_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::LicenseRetrieveResponse)
      end
      def retrieve(license_id, request_options: {})
      end

      # This endpoint returns a list of all licenses for a subscription.
      sig do
        params(
          subscription_id: String,
          cursor: T.nilable(String),
          external_license_id: T.nilable(String),
          license_type_id: T.nilable(String),
          limit: Integer,
          status: T.nilable(Orb::LicenseListParams::Status::OrSymbol),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Internal::Page[Orb::Models::LicenseListResponse])
      end
      def list(
        subscription_id:,
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        external_license_id: nil,
        license_type_id: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      # This endpoint is used to deactivate an existing license.
      #
      # If an end date is provided, the license will be deactivated at the **start** of
      # the specified date in the customer's timezone. Otherwise, the deactivation time
      # will default to the **end** of the current day in the customer's timezone.
      sig do
        params(
          license_id: String,
          end_date: T.nilable(Date),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::LicenseDeactivateResponse)
      end
      def deactivate(
        license_id,
        # The date to deactivate the license. If not provided, defaults to end of day
        # today in the customer's timezone.
        end_date: nil,
        request_options: {}
      )
      end

      # This endpoint is used to fetch a license given an external license identifier.
      sig do
        params(
          external_license_id: String,
          license_type_id: String,
          subscription_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::LicenseRetrieveByExternalIDResponse)
      end
      def retrieve_by_external_id(
        external_license_id,
        # The ID of the license type to fetch the license for.
        license_type_id:,
        # The ID of the subscription to fetch the license for.
        subscription_id:,
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
