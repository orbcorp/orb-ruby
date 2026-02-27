# frozen_string_literal: true

module Orb
  module Resources
    class LicenseTypes
      # Some parameter documentations has been truncated, see
      # {Orb::Models::LicenseTypeCreateParams} for more details.
      #
      # This endpoint is used to create a new license type.
      #
      # License types are used to group licenses and define billing behavior. Each
      # license type has a name and a grouping key that determines how metrics are
      # aggregated for billing purposes.
      #
      # @overload create(grouping_key:, name:, request_options: {})
      #
      # @param grouping_key [String] The key used for grouping licenses of this type. This is typically a user identi
      #
      # @param name [String] The name of the license type.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::LicenseTypeCreateResponse]
      #
      # @see Orb::Models::LicenseTypeCreateParams
      def create(params)
        parsed, options = Orb::LicenseTypeCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "license_types",
          body: parsed,
          model: Orb::Models::LicenseTypeCreateResponse,
          options: options
        )
      end

      # This endpoint returns a license type identified by its license_type_id.
      #
      # Use this endpoint to retrieve details about a specific license type, including
      # its name and grouping key.
      #
      # @overload retrieve(license_type_id, request_options: {})
      #
      # @param license_type_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::LicenseTypeRetrieveResponse]
      #
      # @see Orb::Models::LicenseTypeRetrieveParams
      def retrieve(license_type_id, params = {})
        @client.request(
          method: :get,
          path: ["license_types/%1$s", license_type_id],
          model: Orb::Models::LicenseTypeRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::LicenseTypeListParams} for more details.
      #
      # This endpoint returns a list of all license types configured for the account,
      # ordered in ascending order by creation time.
      #
      # License types are used to group licenses and define billing behavior. Each
      # license type has a name and a grouping key that determines how metrics are
      # aggregated for billing purposes.
      #
      # @overload list(cursor: nil, limit: nil, request_options: {})
      #
      # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #
      # @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Models::LicenseTypeListResponse>]
      #
      # @see Orb::Models::LicenseTypeListParams
      def list(params = {})
        parsed, options = Orb::LicenseTypeListParams.dump_request(params)
        query = Orb::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "license_types",
          query: query,
          page: Orb::Internal::Page,
          model: Orb::Models::LicenseTypeListResponse,
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
