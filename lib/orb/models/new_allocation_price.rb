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

      # @!method initialize(amount:, cadence:, currency:, custom_expiration: nil, expires_at_end_of_cadence: nil, filters: nil)
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
