# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Licenses#list
    class LicenseListParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute subscription_id
      #
      #   @return [String]
      required :subscription_id, String

      # @!attribute cursor
      #   Cursor for pagination. This can be populated by the `next_cursor` value returned
      #   from the initial request.
      #
      #   @return [String, nil]
      optional :cursor, String, nil?: true

      # @!attribute external_license_id
      #
      #   @return [String, nil]
      optional :external_license_id, String, nil?: true

      # @!attribute license_type_id
      #
      #   @return [String, nil]
      optional :license_type_id, String, nil?: true

      # @!attribute limit
      #   The number of items to fetch. Defaults to 20.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::LicenseListParams::Status, nil]
      optional :status, enum: -> { Orb::LicenseListParams::Status }, nil?: true

      # @!method initialize(subscription_id:, cursor: nil, external_license_id: nil, license_type_id: nil, limit: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::LicenseListParams} for more details.
      #
      #   @param subscription_id [String]
      #
      #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #
      #   @param external_license_id [String, nil]
      #
      #   @param license_type_id [String, nil]
      #
      #   @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      #   @param status [Symbol, Orb::Models::LicenseListParams::Status, nil]
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      module Status
        extend Orb::Internal::Type::Enum

        ACTIVE = :active
        INACTIVE = :inactive

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
