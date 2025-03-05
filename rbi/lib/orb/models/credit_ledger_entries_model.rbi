# typed: strong

module Orb
  module Models
    class CreditLedgerEntriesModel < Orb::BaseModel
      sig do
        returns(
          T::Array[
          T.any(
            Orb::Models::CreditLedgerEntryModel::IncrementLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::DecrementLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::ExpirationChangeLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::CreditBlockExpiryLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::VoidLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::VoidInitiatedLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::AmendmentLedgerEntry
          )
          ]
        )
      end
      def data
      end

      sig do
        params(
          _: T::Array[
          T.any(
            Orb::Models::CreditLedgerEntryModel::IncrementLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::DecrementLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::ExpirationChangeLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::CreditBlockExpiryLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::VoidLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::VoidInitiatedLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::AmendmentLedgerEntry
          )
          ]
        )
          .returns(
            T::Array[
            T.any(
              Orb::Models::CreditLedgerEntryModel::IncrementLedgerEntry,
              Orb::Models::CreditLedgerEntryModel::DecrementLedgerEntry,
              Orb::Models::CreditLedgerEntryModel::ExpirationChangeLedgerEntry,
              Orb::Models::CreditLedgerEntryModel::CreditBlockExpiryLedgerEntry,
              Orb::Models::CreditLedgerEntryModel::VoidLedgerEntry,
              Orb::Models::CreditLedgerEntryModel::VoidInitiatedLedgerEntry,
              Orb::Models::CreditLedgerEntryModel::AmendmentLedgerEntry
            )
            ]
          )
      end
      def data=(_)
      end

      sig { returns(Orb::Models::PaginationMetadata) }
      def pagination_metadata
      end

      sig { params(_: Orb::Models::PaginationMetadata).returns(Orb::Models::PaginationMetadata) }
      def pagination_metadata=(_)
      end

      sig do
        params(
          data: T::Array[
          T.any(
            Orb::Models::CreditLedgerEntryModel::IncrementLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::DecrementLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::ExpirationChangeLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::CreditBlockExpiryLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::VoidLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::VoidInitiatedLedgerEntry,
            Orb::Models::CreditLedgerEntryModel::AmendmentLedgerEntry
          )
          ],
          pagination_metadata: Orb::Models::PaginationMetadata
        )
          .void
      end
      def initialize(data:, pagination_metadata:)
      end

      sig do
        override
          .returns(
            {
              data: T::Array[
              T.any(
                Orb::Models::CreditLedgerEntryModel::IncrementLedgerEntry,
                Orb::Models::CreditLedgerEntryModel::DecrementLedgerEntry,
                Orb::Models::CreditLedgerEntryModel::ExpirationChangeLedgerEntry,
                Orb::Models::CreditLedgerEntryModel::CreditBlockExpiryLedgerEntry,
                Orb::Models::CreditLedgerEntryModel::VoidLedgerEntry,
                Orb::Models::CreditLedgerEntryModel::VoidInitiatedLedgerEntry,
                Orb::Models::CreditLedgerEntryModel::AmendmentLedgerEntry
              )
              ],
              pagination_metadata: Orb::Models::PaginationMetadata
            }
          )
      end
      def to_hash
      end
    end
  end
end
