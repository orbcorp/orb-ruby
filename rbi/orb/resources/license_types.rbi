# typed: strong

module Orb
  module Resources
    class LicenseTypes
      # This endpoint is used to create a new license type.
      #
      # License types are used to group licenses and define billing behavior. Each
      # license type has a name and a grouping key that determines how metrics are
      # aggregated for billing purposes.
      sig do
        params(
          grouping_key: String,
          name: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::LicenseTypeCreateResponse)
      end
      def create(
        # The key used for grouping licenses of this type. This is typically a user
        # identifier field.
        grouping_key:,
        # The name of the license type.
        name:,
        request_options: {}
      )
      end

      # This endpoint returns a license type identified by its license_type_id.
      #
      # Use this endpoint to retrieve details about a specific license type, including
      # its name and grouping key.
      sig do
        params(
          license_type_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::LicenseTypeRetrieveResponse)
      end
      def retrieve(license_type_id, request_options: {})
      end

      # This endpoint returns a list of all license types configured for the account,
      # ordered in ascending order by creation time.
      #
      # License types are used to group licenses and define billing behavior. Each
      # license type has a name and a grouping key that determines how metrics are
      # aggregated for billing purposes.
      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Internal::Page[Orb::Models::LicenseTypeListResponse])
      end
      def list(
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
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
