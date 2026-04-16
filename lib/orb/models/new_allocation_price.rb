# frozen_string_literal: true

module Orb
  module Models
    class NewAllocationPrice < Orb::Internal::Type::BaseModel
      # @!attribute amount
      #   An amount of the currency to allocate to the customer at the specified cadence.
      #
      #   @return [String]
      required :amount, String

      # @!attribute cadence
      #   The cadence at which to allocate the amount to the customer.
      #
      #   @return [Symbol, Orb::Models::NewAllocationPrice::Cadence]
      required :cadence, enum: -> { Orb::NewAllocationPrice::Cadence }

      # @!attribute currency
      #   An ISO 4217 currency string or a custom pricing unit identifier in which to bill
      #   this price.
      #
      #   @return [String]
      required :currency, String

      # @!attribute custom_expiration
      #   The custom expiration for the allocation.
      #
      #   @return [Orb::Models::CustomExpiration, nil]
      optional :custom_expiration, -> { Orb::CustomExpiration }, nil?: true

      # @!attribute expires_at_end_of_cadence
      #   Whether the allocated amount should expire at the end of the cadence or roll
      #   over to the next period. Set to null if using custom_expiration.
      #
      #   @return [Boolean, nil]
      optional :expires_at_end_of_cadence, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute filters
      #   The filters that determine which items the allocation applies to.
      #
      #   @return [Array<Orb::Models::NewAllocationPrice::Filter>, nil]
      optional :filters, -> { Orb::Internal::Type::ArrayOf[Orb::NewAllocationPrice::Filter] }, nil?: true

      # @!attribute item_id
      #   The item ID that line items representing charges for this allocation will be
      #   associated with. If not provided, the default allocation item for the currency
      #   will be used (e.g. 'Included Allocation (USD)').
      #
      #   @return [String, nil]
      optional :item_id, String, nil?: true

      # @!attribute license_type_id
      #   The license type ID to associate the price with license allocation.
      #
      #   @return [String, nil]
      optional :license_type_id, String, nil?: true

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!attribute per_unit_cost_basis
      #   The (per-unit) cost basis of each created block. If non-zero, a customer will be
      #   invoiced according to the quantity and per unit cost basis specified for the
      #   allocation each cadence.
      #
      #   @return [String, nil]
      optional :per_unit_cost_basis, String

      # @!method initialize(amount:, cadence:, currency:, custom_expiration: nil, expires_at_end_of_cadence: nil, filters: nil, item_id: nil, license_type_id: nil, metadata: nil, per_unit_cost_basis: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::NewAllocationPrice} for more details.
      #
      #   @param amount [String] An amount of the currency to allocate to the customer at the specified cadence.
      #
      #   @param cadence [Symbol, Orb::Models::NewAllocationPrice::Cadence] The cadence at which to allocate the amount to the customer.
      #
      #   @param currency [String] An ISO 4217 currency string or a custom pricing unit identifier in which to bill
      #
      #   @param custom_expiration [Orb::Models::CustomExpiration, nil] The custom expiration for the allocation.
      #
      #   @param expires_at_end_of_cadence [Boolean, nil] Whether the allocated amount should expire at the end of the cadence or roll ove
      #
      #   @param filters [Array<Orb::Models::NewAllocationPrice::Filter>, nil] The filters that determine which items the allocation applies to.
      #
      #   @param item_id [String, nil] The item ID that line items representing charges for this allocation will be ass
      #
      #   @param license_type_id [String, nil] The license type ID to associate the price with license allocation.
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      #   @param per_unit_cost_basis [String] The (per-unit) cost basis of each created block. If non-zero, a customer will be

      # The cadence at which to allocate the amount to the customer.
      #
      # @see Orb::Models::NewAllocationPrice#cadence
      module Cadence
        extend Orb::Internal::Type::Enum

        ONE_TIME = :one_time
        MONTHLY = :monthly
        QUARTERLY = :quarterly
        SEMI_ANNUAL = :semi_annual
        ANNUAL = :annual

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Filter < Orb::Internal::Type::BaseModel
        # @!attribute field
        #   The property of the price the block applies to. Only item_id is supported.
        #
        #   @return [Symbol, Orb::Models::NewAllocationPrice::Filter::Field]
        required :field, enum: -> { Orb::NewAllocationPrice::Filter::Field }

        # @!attribute operator
        #   Should prices that match the filter be included or excluded.
        #
        #   @return [Symbol, Orb::Models::NewAllocationPrice::Filter::Operator]
        required :operator, enum: -> { Orb::NewAllocationPrice::Filter::Operator }

        # @!attribute values
        #   The IDs or values that match this filter.
        #
        #   @return [Array<String>]
        required :values, Orb::Internal::Type::ArrayOf[String]

        # @!method initialize(field:, operator:, values:)
        #   A PriceFilter that only allows item_id field for block filters.
        #
        #   @param field [Symbol, Orb::Models::NewAllocationPrice::Filter::Field] The property of the price the block applies to. Only item_id is supported.
        #
        #   @param operator [Symbol, Orb::Models::NewAllocationPrice::Filter::Operator] Should prices that match the filter be included or excluded.
        #
        #   @param values [Array<String>] The IDs or values that match this filter.

        # The property of the price the block applies to. Only item_id is supported.
        #
        # @see Orb::Models::NewAllocationPrice::Filter#field
        module Field
          extend Orb::Internal::Type::Enum

          ITEM_ID = :item_id

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Should prices that match the filter be included or excluded.
        #
        # @see Orb::Models::NewAllocationPrice::Filter#operator
        module Operator
          extend Orb::Internal::Type::Enum

          INCLUDES = :includes
          EXCLUDES = :excludes

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
