# frozen_string_literal: true

module Orb
  module Resources
    class Licenses
      # @return [Orb::Resources::Licenses::ExternalLicenses]
      attr_reader :external_licenses

      # @return [Orb::Resources::Licenses::Usage]
      attr_reader :usage

      # Some parameter documentations has been truncated, see
      # {Orb::Models::LicenseCreateParams} for more details.
      #
      # This endpoint is used to create a new license for a user.
      #
      # If a start date is provided, the license will be activated at the **start** of
      # the specified date in the customer's timezone. Otherwise, the activation time
      # will default to the **start** of the current day in the customer's timezone.
      #
      # @overload create(external_license_id:, license_type_id:, subscription_id:, end_date: nil, start_date: nil, request_options: {})
      #
      # @param external_license_id [String] The external identifier for the license.
      #
      # @param license_type_id [String]
      #
      # @param subscription_id [String]
      #
      # @param end_date [Date, nil] The end date of the license. If not provided, the license will remain active unt
      #
      # @param start_date [Date, nil] The start date of the license. If not provided, defaults to start of day today i
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::LicenseCreateResponse]
      #
      # @see Orb::Models::LicenseCreateParams
      def create(params)
        parsed, options = Orb::LicenseCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "licenses",
          body: parsed,
          model: Orb::Models::LicenseCreateResponse,
          options: options
        )
      end

      # This endpoint is used to fetch a license given an identifier.
      #
      # @overload retrieve(license_id, request_options: {})
      #
      # @param license_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::LicenseRetrieveResponse]
      #
      # @see Orb::Models::LicenseRetrieveParams
      def retrieve(license_id, params = {})
        @client.request(
          method: :get,
          path: ["licenses/%1$s", license_id],
          model: Orb::Models::LicenseRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::LicenseListParams} for more details.
      #
      # This endpoint returns a list of all licenses for a subscription.
      #
      # @overload list(subscription_id:, cursor: nil, external_license_id: nil, license_type_id: nil, limit: nil, status: nil, request_options: {})
      #
      # @param subscription_id [String]
      #
      # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #
      # @param external_license_id [String, nil]
      #
      # @param license_type_id [String, nil]
      #
      # @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      # @param status [Symbol, Orb::Models::LicenseListParams::Status, nil]
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Models::LicenseListResponse>]
      #
      # @see Orb::Models::LicenseListParams
      def list(params)
        parsed, options = Orb::LicenseListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "licenses",
          query: parsed,
          page: Orb::Internal::Page,
          model: Orb::Models::LicenseListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::LicenseDeactivateParams} for more details.
      #
      # This endpoint is used to deactivate an existing license.
      #
      # If an end date is provided, the license will be deactivated at the **start** of
      # the specified date in the customer's timezone. Otherwise, the deactivation time
      # will default to the **end** of the current day in the customer's timezone.
      #
      # @overload deactivate(license_id, end_date: nil, request_options: {})
      #
      # @param license_id [String]
      #
      # @param end_date [Date, nil] The date to deactivate the license. If not provided, defaults to end of day toda
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::LicenseDeactivateResponse]
      #
      # @see Orb::Models::LicenseDeactivateParams
      def deactivate(license_id, params = {})
        parsed, options = Orb::LicenseDeactivateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["licenses/%1$s/deactivate", license_id],
          body: parsed,
          model: Orb::Models::LicenseDeactivateResponse,
          options: options
        )
      end

      # This endpoint is used to fetch a license given an external license identifier.
      #
      # @overload retrieve_by_external_id(external_license_id, license_type_id:, subscription_id:, request_options: {})
      #
      # @param external_license_id [String]
      #
      # @param license_type_id [String] The ID of the license type to fetch the license for.
      #
      # @param subscription_id [String] The ID of the subscription to fetch the license for.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::LicenseRetrieveByExternalIDResponse]
      #
      # @see Orb::Models::LicenseRetrieveByExternalIDParams
      def retrieve_by_external_id(external_license_id, params)
        parsed, options = Orb::LicenseRetrieveByExternalIDParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["licenses/external_license_id/%1$s", external_license_id],
          query: parsed,
          model: Orb::Models::LicenseRetrieveByExternalIDResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
        @external_licenses = Orb::Resources::Licenses::ExternalLicenses.new(client: client)
        @usage = Orb::Resources::Licenses::Usage.new(client: client)
      end
    end
  end
end
