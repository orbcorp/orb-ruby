# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class LedgerCreateEntryParams < Orb::BaseModel
          extend Orb::RequestParameters::Converter
          include Orb::RequestParameters

          sig do
            returns(
              T.any(
                Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams,
                Orb::Models::AddCreditLedgerEntryRequest::AddDecrementCreditLedgerEntryRequestParams,
                Orb::Models::AddCreditLedgerEntryRequest::AddExpirationChangeCreditLedgerEntryRequestParams,
                Orb::Models::AddCreditLedgerEntryRequest::AddVoidCreditLedgerEntryRequestParams,
                Orb::Models::AddCreditLedgerEntryRequest::AddAmendmentCreditLedgerEntryRequestParams
              )
            )
          end
          def add_credit_ledger_entry_request
          end

          sig do
            params(
              _: T.any(
                Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams,
                Orb::Models::AddCreditLedgerEntryRequest::AddDecrementCreditLedgerEntryRequestParams,
                Orb::Models::AddCreditLedgerEntryRequest::AddExpirationChangeCreditLedgerEntryRequestParams,
                Orb::Models::AddCreditLedgerEntryRequest::AddVoidCreditLedgerEntryRequestParams,
                Orb::Models::AddCreditLedgerEntryRequest::AddAmendmentCreditLedgerEntryRequestParams
              )
            )
              .returns(
                T.any(
                  Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams,
                  Orb::Models::AddCreditLedgerEntryRequest::AddDecrementCreditLedgerEntryRequestParams,
                  Orb::Models::AddCreditLedgerEntryRequest::AddExpirationChangeCreditLedgerEntryRequestParams,
                  Orb::Models::AddCreditLedgerEntryRequest::AddVoidCreditLedgerEntryRequestParams,
                  Orb::Models::AddCreditLedgerEntryRequest::AddAmendmentCreditLedgerEntryRequestParams
                )
              )
          end
          def add_credit_ledger_entry_request=(_)
          end

          sig do
            params(
              add_credit_ledger_entry_request: T.any(
                Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams,
                Orb::Models::AddCreditLedgerEntryRequest::AddDecrementCreditLedgerEntryRequestParams,
                Orb::Models::AddCreditLedgerEntryRequest::AddExpirationChangeCreditLedgerEntryRequestParams,
                Orb::Models::AddCreditLedgerEntryRequest::AddVoidCreditLedgerEntryRequestParams,
                Orb::Models::AddCreditLedgerEntryRequest::AddAmendmentCreditLedgerEntryRequestParams
              ),
              request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(add_credit_ledger_entry_request:, request_options: {})
          end

          sig do
            override
              .returns(
                {
                  add_credit_ledger_entry_request: T.any(
                    Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams,
                    Orb::Models::AddCreditLedgerEntryRequest::AddDecrementCreditLedgerEntryRequestParams,
                    Orb::Models::AddCreditLedgerEntryRequest::AddExpirationChangeCreditLedgerEntryRequestParams,
                    Orb::Models::AddCreditLedgerEntryRequest::AddVoidCreditLedgerEntryRequestParams,
                    Orb::Models::AddCreditLedgerEntryRequest::AddAmendmentCreditLedgerEntryRequestParams
                  ),
                  request_options: Orb::RequestOptions
                }
              )
          end
          def to_hash
          end
        end
      end
    end
  end
end
