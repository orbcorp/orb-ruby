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

      # @!method initialize(amount:, cadence:, currency:, custom_expiration: nil, expires_at_end_of_cadence: nil)
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
    end
  end
end
