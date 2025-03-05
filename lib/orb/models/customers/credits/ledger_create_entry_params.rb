# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        class LedgerCreateEntryParams < Orb::BaseModel
          # @!parse
          #   extend Orb::RequestParameters::Converter
          include Orb::RequestParameters

          # @!attribute add_credit_ledger_entry_request
          #
          #   @return [Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams, Orb::Models::AddCreditLedgerEntryRequest::AddDecrementCreditLedgerEntryRequestParams, Orb::Models::AddCreditLedgerEntryRequest::AddExpirationChangeCreditLedgerEntryRequestParams, Orb::Models::AddCreditLedgerEntryRequest::AddVoidCreditLedgerEntryRequestParams, Orb::Models::AddCreditLedgerEntryRequest::AddAmendmentCreditLedgerEntryRequestParams]
          required :add_credit_ledger_entry_request, union: -> { Orb::Models::AddCreditLedgerEntryRequest }

          # @!parse
          #   # @param add_credit_ledger_entry_request [Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams, Orb::Models::AddCreditLedgerEntryRequest::AddDecrementCreditLedgerEntryRequestParams, Orb::Models::AddCreditLedgerEntryRequest::AddExpirationChangeCreditLedgerEntryRequestParams, Orb::Models::AddCreditLedgerEntryRequest::AddVoidCreditLedgerEntryRequestParams, Orb::Models::AddCreditLedgerEntryRequest::AddAmendmentCreditLedgerEntryRequestParams]
          #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(add_credit_ledger_entry_request:, request_options: {}, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end
    end
  end
end
