# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Licenses#list
    class LicenseListResponse < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute end_date
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute external_license_id
      #
      #   @return [String]
      required :external_license_id, String

      # @!attribute license_type_id
      #
      #   @return [String]
      required :license_type_id, String

      # @!attribute start_date
      #
      #   @return [Time]
      required :start_date, Time

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::LicenseListResponse::Status]
      required :status, enum: -> { Orb::Models::LicenseListResponse::Status }

      # @!attribute subscription_id
      #
      #   @return [String]
      required :subscription_id, String

      # @!method initialize(id:, end_date:, external_license_id:, license_type_id:, start_date:, status:, subscription_id:)
      #   @param id [String]
      #   @param end_date [Time, nil]
      #   @param external_license_id [String]
      #   @param license_type_id [String]
      #   @param start_date [Time]
      #   @param status [Symbol, Orb::Models::LicenseListResponse::Status]
      #   @param subscription_id [String]

      # @see Orb::Models::LicenseListResponse#status
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
