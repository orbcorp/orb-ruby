# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        # The [Credit Ledger Entry resource](/product-catalog/prepurchase) models prepaid
        # credits within Orb.
        module LedgerListResponse
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::Customers::Credits::IncrementLedgerEntry,
                Orb::Customers::Credits::DecrementLedgerEntry,
                Orb::Customers::Credits::ExpirationChangeLedgerEntry,
                Orb::Customers::Credits::CreditBlockExpiryLedgerEntry,
                Orb::Customers::Credits::VoidLedgerEntry,
                Orb::Customers::Credits::VoidInitiatedLedgerEntry,
                Orb::Customers::Credits::AmendmentLedgerEntry
              )
            end

          sig do
            override.returns(
              T::Array[
                Orb::Models::Customers::Credits::LedgerListResponse::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
