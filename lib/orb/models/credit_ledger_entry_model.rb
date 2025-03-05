# frozen_string_literal: true

module Orb
  module Models
    # @abstract
    #
    # The [Credit Ledger Entry resource](/product-catalog/prepurchase) models prepaid
    #   credits within Orb.
    #
    # @example
    # ```ruby
    # case credit_ledger_entry_model
    # in {entry_type: "increment", id: String, amount: Float, created_at: Time}
    #   # Orb::Models::CreditLedgerEntryModel::IncrementLedgerEntry ...
    # in {entry_type: "decrement", id: String, amount: Float, created_at: Time}
    #   # Orb::Models::CreditLedgerEntryModel::DecrementLedgerEntry ...
    # in {entry_type: "expiration_change", id: String, amount: Float, created_at: Time}
    #   # Orb::Models::CreditLedgerEntryModel::ExpirationChangeLedgerEntry ...
    # in {entry_type: "credit_block_expiry", id: String, amount: Float, created_at: Time}
    #   # Orb::Models::CreditLedgerEntryModel::CreditBlockExpiryLedgerEntry ...
    # in {entry_type: "void", id: String, amount: Float, created_at: Time}
    #   # Orb::Models::CreditLedgerEntryModel::VoidLedgerEntry ...
    # in {entry_type: "void_initiated", id: String, amount: Float, created_at: Time}
    #   # Orb::Models::CreditLedgerEntryModel::VoidInitiatedLedgerEntry ...
    # in {entry_type: "amendment", id: String, amount: Float, created_at: Time}
    #   # Orb::Models::CreditLedgerEntryModel::AmendmentLedgerEntry ...
    # end
    # ```
    #
    # @example
    # ```ruby
    # case credit_ledger_entry_model
    # in Orb::Models::CreditLedgerEntryModel::IncrementLedgerEntry
    #   # ...
    # in Orb::Models::CreditLedgerEntryModel::DecrementLedgerEntry
    #   # ...
    # in Orb::Models::CreditLedgerEntryModel::ExpirationChangeLedgerEntry
    #   # ...
    # in Orb::Models::CreditLedgerEntryModel::CreditBlockExpiryLedgerEntry
    #   # ...
    # in Orb::Models::CreditLedgerEntryModel::VoidLedgerEntry
    #   # ...
    # in Orb::Models::CreditLedgerEntryModel::VoidInitiatedLedgerEntry
    #   # ...
    # in Orb::Models::CreditLedgerEntryModel::AmendmentLedgerEntry
    #   # ...
    # end
    # ```
    class CreditLedgerEntryModel < Orb::Union
      discriminator :entry_type

      variant :increment, -> { Orb::Models::CreditLedgerEntryModel::IncrementLedgerEntry }

      variant :decrement, -> { Orb::Models::CreditLedgerEntryModel::DecrementLedgerEntry }

      variant :expiration_change, -> { Orb::Models::CreditLedgerEntryModel::ExpirationChangeLedgerEntry }

      variant :credit_block_expiry, -> { Orb::Models::CreditLedgerEntryModel::CreditBlockExpiryLedgerEntry }

      variant :void, -> { Orb::Models::CreditLedgerEntryModel::VoidLedgerEntry }

      variant :void_initiated, -> { Orb::Models::CreditLedgerEntryModel::VoidInitiatedLedgerEntry }

      variant :amendment, -> { Orb::Models::CreditLedgerEntryModel::AmendmentLedgerEntry }

      class IncrementLedgerEntry < Orb::BaseModel
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
        #   @return [Orb::Models::AffectedBlockModel]
        required :credit_block, -> { Orb::Models::AffectedBlockModel }

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute customer
        #
        #   @return [Orb::Models::CustomerMinifiedModel]
        required :customer, -> { Orb::Models::CustomerMinifiedModel }

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
        #   @return [Symbol, Orb::Models::CreditLedgerEntryModel::IncrementLedgerEntry::EntryStatus]
        required :entry_status,
                 enum: -> { Orb::Models::CreditLedgerEntryModel::IncrementLedgerEntry::EntryStatus }

        # @!attribute entry_type
        #
        #   @return [Symbol, :increment]
        required :entry_type, const: :increment

        # @!attribute ledger_sequence_number
        #
        #   @return [Integer]
        required :ledger_sequence_number, Integer

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute starting_balance
        #
        #   @return [Float]
        required :starting_balance, Float

        # @!parse
        #   # @param id [String]
        #   # @param amount [Float]
        #   # @param created_at [Time]
        #   # @param credit_block [Orb::Models::AffectedBlockModel]
        #   # @param currency [String]
        #   # @param customer [Orb::Models::CustomerMinifiedModel]
        #   # @param description [String, nil]
        #   # @param ending_balance [Float]
        #   # @param entry_status [Symbol, Orb::Models::CreditLedgerEntryModel::IncrementLedgerEntry::EntryStatus]
        #   # @param ledger_sequence_number [Integer]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param starting_balance [Float]
        #   # @param entry_type [Symbol, :increment]
        #   #
        #   def initialize(
        #     id:,
        #     amount:,
        #     created_at:,
        #     credit_block:,
        #     currency:,
        #     customer:,
        #     description:,
        #     ending_balance:,
        #     entry_status:,
        #     ledger_sequence_number:,
        #     metadata:,
        #     starting_balance:,
        #     entry_type: :increment,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case entry_status
        # in :committed
        #   # ...
        # in :pending
        #   # ...
        # end
        # ```
        class EntryStatus < Orb::Enum
          COMMITTED = :committed
          PENDING = :pending

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class DecrementLedgerEntry < Orb::BaseModel
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
        #   @return [Orb::Models::AffectedBlockModel]
        required :credit_block, -> { Orb::Models::AffectedBlockModel }

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute customer
        #
        #   @return [Orb::Models::CustomerMinifiedModel]
        required :customer, -> { Orb::Models::CustomerMinifiedModel }

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
        #   @return [Symbol, Orb::Models::CreditLedgerEntryModel::DecrementLedgerEntry::EntryStatus]
        required :entry_status,
                 enum: -> { Orb::Models::CreditLedgerEntryModel::DecrementLedgerEntry::EntryStatus }

        # @!attribute entry_type
        #
        #   @return [Symbol, :decrement]
        required :entry_type, const: :decrement

        # @!attribute ledger_sequence_number
        #
        #   @return [Integer]
        required :ledger_sequence_number, Integer

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

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

        # @!parse
        #   # @param id [String]
        #   # @param amount [Float]
        #   # @param created_at [Time]
        #   # @param credit_block [Orb::Models::AffectedBlockModel]
        #   # @param currency [String]
        #   # @param customer [Orb::Models::CustomerMinifiedModel]
        #   # @param description [String, nil]
        #   # @param ending_balance [Float]
        #   # @param entry_status [Symbol, Orb::Models::CreditLedgerEntryModel::DecrementLedgerEntry::EntryStatus]
        #   # @param ledger_sequence_number [Integer]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param starting_balance [Float]
        #   # @param event_id [String, nil]
        #   # @param invoice_id [String, nil]
        #   # @param price_id [String, nil]
        #   # @param entry_type [Symbol, :decrement]
        #   #
        #   def initialize(
        #     id:,
        #     amount:,
        #     created_at:,
        #     credit_block:,
        #     currency:,
        #     customer:,
        #     description:,
        #     ending_balance:,
        #     entry_status:,
        #     ledger_sequence_number:,
        #     metadata:,
        #     starting_balance:,
        #     event_id: nil,
        #     invoice_id: nil,
        #     price_id: nil,
        #     entry_type: :decrement,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case entry_status
        # in :committed
        #   # ...
        # in :pending
        #   # ...
        # end
        # ```
        class EntryStatus < Orb::Enum
          COMMITTED = :committed
          PENDING = :pending

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class ExpirationChangeLedgerEntry < Orb::BaseModel
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
        #   @return [Orb::Models::AffectedBlockModel]
        required :credit_block, -> { Orb::Models::AffectedBlockModel }

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute customer
        #
        #   @return [Orb::Models::CustomerMinifiedModel]
        required :customer, -> { Orb::Models::CustomerMinifiedModel }

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
        #   @return [Symbol, Orb::Models::CreditLedgerEntryModel::ExpirationChangeLedgerEntry::EntryStatus]
        required :entry_status,
                 enum: -> { Orb::Models::CreditLedgerEntryModel::ExpirationChangeLedgerEntry::EntryStatus }

        # @!attribute entry_type
        #
        #   @return [Symbol, :expiration_change]
        required :entry_type, const: :expiration_change

        # @!attribute ledger_sequence_number
        #
        #   @return [Integer]
        required :ledger_sequence_number, Integer

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute new_block_expiry_date
        #
        #   @return [Time, nil]
        required :new_block_expiry_date, Time, nil?: true

        # @!attribute starting_balance
        #
        #   @return [Float]
        required :starting_balance, Float

        # @!parse
        #   # @param id [String]
        #   # @param amount [Float]
        #   # @param created_at [Time]
        #   # @param credit_block [Orb::Models::AffectedBlockModel]
        #   # @param currency [String]
        #   # @param customer [Orb::Models::CustomerMinifiedModel]
        #   # @param description [String, nil]
        #   # @param ending_balance [Float]
        #   # @param entry_status [Symbol, Orb::Models::CreditLedgerEntryModel::ExpirationChangeLedgerEntry::EntryStatus]
        #   # @param ledger_sequence_number [Integer]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param new_block_expiry_date [Time, nil]
        #   # @param starting_balance [Float]
        #   # @param entry_type [Symbol, :expiration_change]
        #   #
        #   def initialize(
        #     id:,
        #     amount:,
        #     created_at:,
        #     credit_block:,
        #     currency:,
        #     customer:,
        #     description:,
        #     ending_balance:,
        #     entry_status:,
        #     ledger_sequence_number:,
        #     metadata:,
        #     new_block_expiry_date:,
        #     starting_balance:,
        #     entry_type: :expiration_change,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case entry_status
        # in :committed
        #   # ...
        # in :pending
        #   # ...
        # end
        # ```
        class EntryStatus < Orb::Enum
          COMMITTED = :committed
          PENDING = :pending

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class CreditBlockExpiryLedgerEntry < Orb::BaseModel
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
        #   @return [Orb::Models::AffectedBlockModel]
        required :credit_block, -> { Orb::Models::AffectedBlockModel }

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute customer
        #
        #   @return [Orb::Models::CustomerMinifiedModel]
        required :customer, -> { Orb::Models::CustomerMinifiedModel }

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
        #   @return [Symbol, Orb::Models::CreditLedgerEntryModel::CreditBlockExpiryLedgerEntry::EntryStatus]
        required :entry_status,
                 enum: -> { Orb::Models::CreditLedgerEntryModel::CreditBlockExpiryLedgerEntry::EntryStatus }

        # @!attribute entry_type
        #
        #   @return [Symbol, :credit_block_expiry]
        required :entry_type, const: :credit_block_expiry

        # @!attribute ledger_sequence_number
        #
        #   @return [Integer]
        required :ledger_sequence_number, Integer

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute starting_balance
        #
        #   @return [Float]
        required :starting_balance, Float

        # @!parse
        #   # @param id [String]
        #   # @param amount [Float]
        #   # @param created_at [Time]
        #   # @param credit_block [Orb::Models::AffectedBlockModel]
        #   # @param currency [String]
        #   # @param customer [Orb::Models::CustomerMinifiedModel]
        #   # @param description [String, nil]
        #   # @param ending_balance [Float]
        #   # @param entry_status [Symbol, Orb::Models::CreditLedgerEntryModel::CreditBlockExpiryLedgerEntry::EntryStatus]
        #   # @param ledger_sequence_number [Integer]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param starting_balance [Float]
        #   # @param entry_type [Symbol, :credit_block_expiry]
        #   #
        #   def initialize(
        #     id:,
        #     amount:,
        #     created_at:,
        #     credit_block:,
        #     currency:,
        #     customer:,
        #     description:,
        #     ending_balance:,
        #     entry_status:,
        #     ledger_sequence_number:,
        #     metadata:,
        #     starting_balance:,
        #     entry_type: :credit_block_expiry,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case entry_status
        # in :committed
        #   # ...
        # in :pending
        #   # ...
        # end
        # ```
        class EntryStatus < Orb::Enum
          COMMITTED = :committed
          PENDING = :pending

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class VoidLedgerEntry < Orb::BaseModel
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
        #   @return [Orb::Models::AffectedBlockModel]
        required :credit_block, -> { Orb::Models::AffectedBlockModel }

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute customer
        #
        #   @return [Orb::Models::CustomerMinifiedModel]
        required :customer, -> { Orb::Models::CustomerMinifiedModel }

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
        #   @return [Symbol, Orb::Models::CreditLedgerEntryModel::VoidLedgerEntry::EntryStatus]
        required :entry_status, enum: -> { Orb::Models::CreditLedgerEntryModel::VoidLedgerEntry::EntryStatus }

        # @!attribute entry_type
        #
        #   @return [Symbol, :void]
        required :entry_type, const: :void

        # @!attribute ledger_sequence_number
        #
        #   @return [Integer]
        required :ledger_sequence_number, Integer

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

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

        # @!parse
        #   # @param id [String]
        #   # @param amount [Float]
        #   # @param created_at [Time]
        #   # @param credit_block [Orb::Models::AffectedBlockModel]
        #   # @param currency [String]
        #   # @param customer [Orb::Models::CustomerMinifiedModel]
        #   # @param description [String, nil]
        #   # @param ending_balance [Float]
        #   # @param entry_status [Symbol, Orb::Models::CreditLedgerEntryModel::VoidLedgerEntry::EntryStatus]
        #   # @param ledger_sequence_number [Integer]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param starting_balance [Float]
        #   # @param void_amount [Float]
        #   # @param void_reason [String, nil]
        #   # @param entry_type [Symbol, :void]
        #   #
        #   def initialize(
        #     id:,
        #     amount:,
        #     created_at:,
        #     credit_block:,
        #     currency:,
        #     customer:,
        #     description:,
        #     ending_balance:,
        #     entry_status:,
        #     ledger_sequence_number:,
        #     metadata:,
        #     starting_balance:,
        #     void_amount:,
        #     void_reason:,
        #     entry_type: :void,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case entry_status
        # in :committed
        #   # ...
        # in :pending
        #   # ...
        # end
        # ```
        class EntryStatus < Orb::Enum
          COMMITTED = :committed
          PENDING = :pending

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class VoidInitiatedLedgerEntry < Orb::BaseModel
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
        #   @return [Orb::Models::AffectedBlockModel]
        required :credit_block, -> { Orb::Models::AffectedBlockModel }

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute customer
        #
        #   @return [Orb::Models::CustomerMinifiedModel]
        required :customer, -> { Orb::Models::CustomerMinifiedModel }

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
        #   @return [Symbol, Orb::Models::CreditLedgerEntryModel::VoidInitiatedLedgerEntry::EntryStatus]
        required :entry_status,
                 enum: -> { Orb::Models::CreditLedgerEntryModel::VoidInitiatedLedgerEntry::EntryStatus }

        # @!attribute entry_type
        #
        #   @return [Symbol, :void_initiated]
        required :entry_type, const: :void_initiated

        # @!attribute ledger_sequence_number
        #
        #   @return [Integer]
        required :ledger_sequence_number, Integer

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

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

        # @!parse
        #   # @param id [String]
        #   # @param amount [Float]
        #   # @param created_at [Time]
        #   # @param credit_block [Orb::Models::AffectedBlockModel]
        #   # @param currency [String]
        #   # @param customer [Orb::Models::CustomerMinifiedModel]
        #   # @param description [String, nil]
        #   # @param ending_balance [Float]
        #   # @param entry_status [Symbol, Orb::Models::CreditLedgerEntryModel::VoidInitiatedLedgerEntry::EntryStatus]
        #   # @param ledger_sequence_number [Integer]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param new_block_expiry_date [Time]
        #   # @param starting_balance [Float]
        #   # @param void_amount [Float]
        #   # @param void_reason [String, nil]
        #   # @param entry_type [Symbol, :void_initiated]
        #   #
        #   def initialize(
        #     id:,
        #     amount:,
        #     created_at:,
        #     credit_block:,
        #     currency:,
        #     customer:,
        #     description:,
        #     ending_balance:,
        #     entry_status:,
        #     ledger_sequence_number:,
        #     metadata:,
        #     new_block_expiry_date:,
        #     starting_balance:,
        #     void_amount:,
        #     void_reason:,
        #     entry_type: :void_initiated,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case entry_status
        # in :committed
        #   # ...
        # in :pending
        #   # ...
        # end
        # ```
        class EntryStatus < Orb::Enum
          COMMITTED = :committed
          PENDING = :pending

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class AmendmentLedgerEntry < Orb::BaseModel
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
        #   @return [Orb::Models::AffectedBlockModel]
        required :credit_block, -> { Orb::Models::AffectedBlockModel }

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute customer
        #
        #   @return [Orb::Models::CustomerMinifiedModel]
        required :customer, -> { Orb::Models::CustomerMinifiedModel }

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
        #   @return [Symbol, Orb::Models::CreditLedgerEntryModel::AmendmentLedgerEntry::EntryStatus]
        required :entry_status,
                 enum: -> { Orb::Models::CreditLedgerEntryModel::AmendmentLedgerEntry::EntryStatus }

        # @!attribute entry_type
        #
        #   @return [Symbol, :amendment]
        required :entry_type, const: :amendment

        # @!attribute ledger_sequence_number
        #
        #   @return [Integer]
        required :ledger_sequence_number, Integer

        # @!attribute metadata
        #   User specified key-value pairs for the resource. If not present, this defaults
        #     to an empty dictionary. Individual keys can be removed by setting the value to
        #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
        #     `null`.
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, Orb::HashOf[String]

        # @!attribute starting_balance
        #
        #   @return [Float]
        required :starting_balance, Float

        # @!parse
        #   # @param id [String]
        #   # @param amount [Float]
        #   # @param created_at [Time]
        #   # @param credit_block [Orb::Models::AffectedBlockModel]
        #   # @param currency [String]
        #   # @param customer [Orb::Models::CustomerMinifiedModel]
        #   # @param description [String, nil]
        #   # @param ending_balance [Float]
        #   # @param entry_status [Symbol, Orb::Models::CreditLedgerEntryModel::AmendmentLedgerEntry::EntryStatus]
        #   # @param ledger_sequence_number [Integer]
        #   # @param metadata [Hash{Symbol=>String}]
        #   # @param starting_balance [Float]
        #   # @param entry_type [Symbol, :amendment]
        #   #
        #   def initialize(
        #     id:,
        #     amount:,
        #     created_at:,
        #     credit_block:,
        #     currency:,
        #     customer:,
        #     description:,
        #     ending_balance:,
        #     entry_status:,
        #     ledger_sequence_number:,
        #     metadata:,
        #     starting_balance:,
        #     entry_type: :amendment,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case entry_status
        # in :committed
        #   # ...
        # in :pending
        #   # ...
        # end
        # ```
        class EntryStatus < Orb::Enum
          COMMITTED = :committed
          PENDING = :pending

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
