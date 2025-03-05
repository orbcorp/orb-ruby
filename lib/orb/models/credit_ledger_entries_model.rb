# frozen_string_literal: true

module Orb
  module Models
    class CreditLedgerEntriesModel < Orb::BaseModel
      # @!attribute data
      #
      #   @return [Array<Orb::Models::CreditLedgerEntryModel::IncrementLedgerEntry, Orb::Models::CreditLedgerEntryModel::DecrementLedgerEntry, Orb::Models::CreditLedgerEntryModel::ExpirationChangeLedgerEntry, Orb::Models::CreditLedgerEntryModel::CreditBlockExpiryLedgerEntry, Orb::Models::CreditLedgerEntryModel::VoidLedgerEntry, Orb::Models::CreditLedgerEntryModel::VoidInitiatedLedgerEntry, Orb::Models::CreditLedgerEntryModel::AmendmentLedgerEntry>]
      required :data, -> { Orb::ArrayOf[union: Orb::Models::CreditLedgerEntryModel] }

      # @!attribute pagination_metadata
      #
      #   @return [Orb::Models::PaginationMetadata]
      required :pagination_metadata, -> { Orb::Models::PaginationMetadata }

      # @!parse
      #   # @param data [Array<Orb::Models::CreditLedgerEntryModel::IncrementLedgerEntry, Orb::Models::CreditLedgerEntryModel::DecrementLedgerEntry, Orb::Models::CreditLedgerEntryModel::ExpirationChangeLedgerEntry, Orb::Models::CreditLedgerEntryModel::CreditBlockExpiryLedgerEntry, Orb::Models::CreditLedgerEntryModel::VoidLedgerEntry, Orb::Models::CreditLedgerEntryModel::VoidInitiatedLedgerEntry, Orb::Models::CreditLedgerEntryModel::AmendmentLedgerEntry>]
      #   # @param pagination_metadata [Orb::Models::PaginationMetadata]
      #   #
      #   def initialize(data:, pagination_metadata:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
