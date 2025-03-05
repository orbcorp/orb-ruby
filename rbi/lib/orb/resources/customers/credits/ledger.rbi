# typed: strong

module Orb
  module Resources
    class Customers
      class Credits
        class Ledger
          sig do
            params(
              customer_id: String,
              created_at_gt: T.nilable(Time),
              created_at_gte: T.nilable(Time),
              created_at_lt: T.nilable(Time),
              created_at_lte: T.nilable(Time),
              currency: T.nilable(String),
              cursor: T.nilable(String),
              entry_status: T.nilable(Symbol),
              entry_type: T.nilable(Symbol),
              limit: Integer,
              minimum_amount: T.nilable(String),
              request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(
                Orb::Page[
                T.any(
                  Orb::Models::Customers::Credits::LedgerListResponse::IncrementLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerListResponse::DecrementLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerListResponse::ExpirationChangeLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerListResponse::CreditBlockExpiryLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerListResponse::VoidLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerListResponse::VoidInitiatedLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerListResponse::AmendmentLedgerEntry
                )
                ]
              )
          end
          def list(
            customer_id,
            created_at_gt: nil,
            created_at_gte: nil,
            created_at_lt: nil,
            created_at_lte: nil,
            currency: nil,
            cursor: nil,
            entry_status: nil,
            entry_type: nil,
            limit: nil,
            minimum_amount: nil,
            request_options: {}
          )
          end

          sig do
            params(
              customer_id: String,
              add_credit_ledger_entry_request: Orb::Models::AddCreditLedgerEntryRequest,
              request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(
                T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::IncrementLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::DecrementLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::ExpirationChangeLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::CreditBlockExpiryLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::VoidInitiatedLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryResponse::AmendmentLedgerEntry
                )
              )
          end
          def create_entry(customer_id, add_credit_ledger_entry_request:, request_options: {})
          end

          sig do
            params(
              external_customer_id: String,
              add_credit_ledger_entry_request: Orb::Models::AddCreditLedgerEntryRequest,
              request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(
                T.any(
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::IncrementLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::DecrementLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::ExpirationChangeLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::CreditBlockExpiryLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::VoidInitiatedLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::AmendmentLedgerEntry
                )
              )
          end
          def create_entry_by_external_id(
            external_customer_id,
            add_credit_ledger_entry_request:,
            request_options: {}
          )
          end

          sig do
            params(
              external_customer_id: String,
              created_at_gt: T.nilable(Time),
              created_at_gte: T.nilable(Time),
              created_at_lt: T.nilable(Time),
              created_at_lte: T.nilable(Time),
              currency: T.nilable(String),
              cursor: T.nilable(String),
              entry_status: T.nilable(Symbol),
              entry_type: T.nilable(Symbol),
              limit: Integer,
              minimum_amount: T.nilable(String),
              request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
            )
              .returns(
                Orb::Page[
                T.any(
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::IncrementLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::DecrementLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::ExpirationChangeLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::CreditBlockExpiryLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::VoidInitiatedLedgerEntry,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::AmendmentLedgerEntry
                )
                ]
              )
          end
          def list_by_external_id(
            external_customer_id,
            created_at_gt: nil,
            created_at_gte: nil,
            created_at_lt: nil,
            created_at_lte: nil,
            currency: nil,
            cursor: nil,
            entry_status: nil,
            entry_type: nil,
            limit: nil,
            minimum_amount: nil,
            request_options: {}
          )
          end

          sig { params(client: Orb::Client).void }
          def initialize(client:)
          end
        end
      end
    end
  end
end
