# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        class DecrementLedgerEntry < Orb::Internal::Type::BaseModel
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
          #   @return [Symbol, Orb::Models::Customers::Credits::DecrementLedgerEntry::EntryStatus]
          required :entry_status, enum: -> { Orb::Customers::Credits::DecrementLedgerEntry::EntryStatus }

          # @!attribute entry_type
          #
          #   @return [Symbol, Orb::Models::Customers::Credits::DecrementLedgerEntry::EntryType]
          required :entry_type, enum: -> { Orb::Customers::Credits::DecrementLedgerEntry::EntryType }

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

          # @!attribute starting_balance
          #
          #   @return [Float]
          required :starting_balance, Float

          # @!attribute event_id
          #
          #   @return [String, nil]
          optional :event_id, String, nil?: true

          # @!attribute invoice_id
          #
          #   @return [String, nil]
          optional :invoice_id, String, nil?: true

          # @!attribute price_id
          #
          #   @return [String, nil]
          optional :price_id, String, nil?: true

          # @!method initialize(id:, amount:, created_at:, credit_block:, currency:, customer:, description:, ending_balance:, entry_status:, entry_type:, ledger_sequence_number:, metadata:, starting_balance:, event_id: nil, invoice_id: nil, price_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Customers::Credits::DecrementLedgerEntry} for more details.
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
          #   @param entry_status [Symbol, Orb::Models::Customers::Credits::DecrementLedgerEntry::EntryStatus]
          #
          #   @param entry_type [Symbol, Orb::Models::Customers::Credits::DecrementLedgerEntry::EntryType]
          #
          #   @param ledger_sequence_number [Integer]
          #
          #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
          #
          #   @param starting_balance [Float]
          #
          #   @param event_id [String, nil]
          #
          #   @param invoice_id [String, nil]
          #
          #   @param price_id [String, nil]

          # @see Orb::Models::Customers::Credits::DecrementLedgerEntry#entry_status
          module EntryStatus
            extend Orb::Internal::Type::Enum

            COMMITTED = :committed
            PENDING = :pending

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Orb::Models::Customers::Credits::DecrementLedgerEntry#entry_type
          module EntryType
            extend Orb::Internal::Type::Enum

            DECREMENT = :decrement

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
