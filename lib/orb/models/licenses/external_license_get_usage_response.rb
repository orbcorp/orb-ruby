# frozen_string_literal: true

module Orb
  module Models
    module Licenses
      # @see Orb::Resources::Licenses::ExternalLicenses#get_usage
      class ExternalLicenseGetUsageResponse < Orb::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Orb::Models::Licenses::ExternalLicenseGetUsageResponse::Data>]
        required :data,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Models::Licenses::ExternalLicenseGetUsageResponse::Data] }

        # @!attribute pagination_metadata
        #
        #   @return [Orb::Models::PaginationMetadata]
        required :pagination_metadata, -> { Orb::PaginationMetadata }

        # @!method initialize(data:, pagination_metadata:)
        #   @param data [Array<Orb::Models::Licenses::ExternalLicenseGetUsageResponse::Data>]
        #   @param pagination_metadata [Orb::Models::PaginationMetadata]

        class Data < Orb::Internal::Type::BaseModel
          # @!attribute allocated_credits
          #   The total credits allocated to this license for the period.
          #
          #   @return [Float]
          required :allocated_credits, Float

          # @!attribute consumed_credits
          #   The credits consumed by this license for the period.
          #
          #   @return [Float]
          required :consumed_credits, Float

          # @!attribute end_date
          #   The end date of the usage period.
          #
          #   @return [Date]
          required :end_date, Date

          # @!attribute license_type_id
          #   The unique identifier for the license type.
          #
          #   @return [String]
          required :license_type_id, String

          # @!attribute pricing_unit
          #   The pricing unit for the credits (e.g., 'credits').
          #
          #   @return [String]
          required :pricing_unit, String

          # @!attribute remaining_credits
          #   The remaining credits available for this license (allocated - consumed).
          #
          #   @return [Float]
          required :remaining_credits, Float

          # @!attribute start_date
          #   The start date of the usage period.
          #
          #   @return [Date]
          required :start_date, Date

          # @!attribute subscription_id
          #   The unique identifier for the subscription.
          #
          #   @return [String]
          required :subscription_id, String

          # @!attribute allocation_eligible_credits
          #   Credits consumed while the license was active (eligible for individual
          #   allocation deduction).
          #
          #   @return [Float, nil]
          optional :allocation_eligible_credits, Float, nil?: true

          # @!attribute external_license_id
          #   The external identifier for the license. Null when grouped by day only.
          #
          #   @return [String, nil]
          optional :external_license_id, String, nil?: true

          # @!attribute license_id
          #   The unique identifier for the license. Null when grouped by day only.
          #
          #   @return [String, nil]
          optional :license_id, String, nil?: true

          # @!attribute shared_pool_credits
          #   Credits consumed while the license was inactive (draws from shared pool, not
          #   individual allocation).
          #
          #   @return [Float, nil]
          optional :shared_pool_credits, Float, nil?: true

          # @!method initialize(allocated_credits:, consumed_credits:, end_date:, license_type_id:, pricing_unit:, remaining_credits:, start_date:, subscription_id:, allocation_eligible_credits: nil, external_license_id: nil, license_id: nil, shared_pool_credits: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Licenses::ExternalLicenseGetUsageResponse::Data} for more details.
          #
          #   The LicenseUsage resource represents usage and remaining credits for a license
          #   over a date range.
          #
          #   When grouped by 'day' only, license_id and external_license_id will be null as
          #   the data is aggregated across all licenses.
          #
          #   @param allocated_credits [Float] The total credits allocated to this license for the period.
          #
          #   @param consumed_credits [Float] The credits consumed by this license for the period.
          #
          #   @param end_date [Date] The end date of the usage period.
          #
          #   @param license_type_id [String] The unique identifier for the license type.
          #
          #   @param pricing_unit [String] The pricing unit for the credits (e.g., 'credits').
          #
          #   @param remaining_credits [Float] The remaining credits available for this license (allocated - consumed).
          #
          #   @param start_date [Date] The start date of the usage period.
          #
          #   @param subscription_id [String] The unique identifier for the subscription.
          #
          #   @param allocation_eligible_credits [Float, nil] Credits consumed while the license was active (eligible for individual allocatio
          #
          #   @param external_license_id [String, nil] The external identifier for the license. Null when grouped by day only.
          #
          #   @param license_id [String, nil] The unique identifier for the license. Null when grouped by day only.
          #
          #   @param shared_pool_credits [Float, nil] Credits consumed while the license was inactive (draws from shared pool, not ind
        end
      end
    end
  end
end
