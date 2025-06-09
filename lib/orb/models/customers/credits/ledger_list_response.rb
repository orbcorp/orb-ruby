# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        # The [Credit Ledger Entry resource](/product-catalog/prepurchase) models prepaid
        # credits within Orb.
        #
        # @see Orb::Resources::Customers::Credits::Ledger#list
        module LedgerListResponse
          extend Orb::Internal::Type::Union

          discriminator :entry_type

          variant :increment, -> { Orb::Customers::Credits::IncrementLedgerEntry }

          variant :decrement, -> { Orb::Customers::Credits::DecrementLedgerEntry }

          variant :expiration_change, -> { Orb::Customers::Credits::ExpirationChangeLedgerEntry }

          variant :credit_block_expiry, -> { Orb::Customers::Credits::CreditBlockExpiryLedgerEntry }

          variant :void, -> { Orb::Customers::Credits::VoidLedgerEntry }

          variant :void_initiated, -> { Orb::Customers::Credits::VoidInitiatedLedgerEntry }

          variant :amendment, -> { Orb::Customers::Credits::AmendmentLedgerEntry }

          # @!method self.variants
          #   @return [Array(Orb::Models::Customers::Credits::IncrementLedgerEntry, Orb::Models::Customers::Credits::DecrementLedgerEntry, Orb::Models::Customers::Credits::ExpirationChangeLedgerEntry, Orb::Models::Customers::Credits::CreditBlockExpiryLedgerEntry, Orb::Models::Customers::Credits::VoidLedgerEntry, Orb::Models::Customers::Credits::VoidInitiatedLedgerEntry, Orb::Models::Customers::Credits::AmendmentLedgerEntry)]
        end
      end
    end
  end
end
