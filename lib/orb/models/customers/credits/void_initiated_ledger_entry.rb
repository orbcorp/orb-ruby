# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        class VoidInitiatedLedgerEntry < Orb::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute amount
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute credit_block
          #
          #   @return [Orb::Models::Customers::Credits::AffectedBlock]
          required :credit_block, -> { Orb::Customers::Credits::AffectedBlock }

          # @!attribute currency
          #
          #   @return [String]
          required :currency, String

          # @!attribute customer
          #
          #   @return [Orb::Models::CustomerMinified]
          required :customer, -> { Orb::CustomerMinified }

          # @!attribute description
          #
          #   @return [String, nil]
          required :description, String, nil?: true

          # @!attribute ending_balance
          #
          #   @return [Float]
          required :ending_balance, Float

          # @!attribute entry_status
          #
          #   @return [Symbol, Orb::Models::Customers::Credits::VoidInitiatedLedgerEntry::EntryStatus]
          required :entry_status, enum: -> { Orb::Customers::Credits::VoidInitiatedLedgerEntry::EntryStatus }

          # @!attribute entry_type
          #
          #   @return [Symbol, Orb::Models::Customers::Credits::VoidInitiatedLedgerEntry::EntryType]
          required :entry_type, enum: -> { Orb::Customers::Credits::VoidInitiatedLedgerEntry::EntryType }

          # @!attribute ledger_sequence_number
          #
          #   @return [Integer]
          required :ledger_sequence_number, Integer

          # @!attribute metadata
          #   User specified key-value pairs for the resource. If not present, this defaults
          #   to an empty dictionary. Individual keys can be removed by setting the value to
          #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
          #   `null`.
          #
          #   @return [Hash{Symbol=>String}]
          required :metadata, Orb::Internal::Type::HashOf[String]

          # @!attribute new_block_expiry_date
          #
          #   @return [Time]
          required :new_block_expiry_date, Time

          # @!attribute starting_balance
          #
          #   @return [Float]
          required :starting_balance, Float

          # @!attribute void_amount
          #
          #   @return [Float]
          required :void_amount, Float

          # @!attribute void_reason
          #
          #   @return [String, nil]
          required :void_reason, String, nil?: true

          # @!method initialize(id:, amount:, created_at:, credit_block:, currency:, customer:, description:, ending_balance:, entry_status:, entry_type:, ledger_sequence_number:, metadata:, new_block_expiry_date:, starting_balance:, void_amount:, void_reason:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Customers::Credits::VoidInitiatedLedgerEntry} for more details.
          #
          #   @param id [String]
          #
          #   @param amount [Float]
          #
          #   @param created_at [Time]
          #
          #   @param credit_block [Orb::Models::Customers::Credits::AffectedBlock]
          #
          #   @param currency [String]
          #
          #   @param customer [Orb::Models::CustomerMinified]
          #
          #   @param description [String, nil]
          #
          #   @param ending_balance [Float]
          #
          #   @param entry_status [Symbol, Orb::Models::Customers::Credits::VoidInitiatedLedgerEntry::EntryStatus]
          #
          #   @param entry_type [Symbol, Orb::Models::Customers::Credits::VoidInitiatedLedgerEntry::EntryType]
          #
          #   @param ledger_sequence_number [Integer]
          #
          #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
          #
          #   @param new_block_expiry_date [Time]
          #
          #   @param starting_balance [Float]
          #
          #   @param void_amount [Float]
          #
          #   @param void_reason [String, nil]

          # @see Orb::Models::Customers::Credits::VoidInitiatedLedgerEntry#entry_status
          module EntryStatus
            extend Orb::Internal::Type::Enum

            COMMITTED = :committed
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Orb::Models::Customers::Credits::VoidInitiatedLedgerEntry#entry_type
          module EntryType
            extend Orb::Internal::Type::Enum

            VOID_INITIATED = :void_initiated

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
