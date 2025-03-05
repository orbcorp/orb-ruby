# frozen_string_literal: true

module Orb
  module Models
    # @abstract
    #
    # @example
    # ```ruby
    # case add_credit_ledger_entry_request
    # in {entry_type: "increment", amount: Float, currency: String, description: String}
    #   # Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams ...
    # in {entry_type: "decrement", amount: Float, currency: String, description: String}
    #   # Orb::Models::AddCreditLedgerEntryRequest::AddDecrementCreditLedgerEntryRequestParams ...
    # in {entry_type: "expiration_change", expiry_date: Time, target_expiry_date: Date, amount: Float}
    #   # Orb::Models::AddCreditLedgerEntryRequest::AddExpirationChangeCreditLedgerEntryRequestParams ...
    # in {entry_type: "void", amount: Float, block_id: String, currency: String}
    #   # Orb::Models::AddCreditLedgerEntryRequest::AddVoidCreditLedgerEntryRequestParams ...
    # in {entry_type: "amendment", amount: Float, block_id: String, currency: String}
    #   # Orb::Models::AddCreditLedgerEntryRequest::AddAmendmentCreditLedgerEntryRequestParams ...
    # end
    # ```
    #
    # @example
    # ```ruby
    # case add_credit_ledger_entry_request
    # in Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams
    #   # ...
    # in Orb::Models::AddCreditLedgerEntryRequest::AddDecrementCreditLedgerEntryRequestParams
    #   # ...
    # in Orb::Models::AddCreditLedgerEntryRequest::AddExpirationChangeCreditLedgerEntryRequestParams
    #   # ...
    # in Orb::Models::AddCreditLedgerEntryRequest::AddVoidCreditLedgerEntryRequestParams
    #   # ...
    # in Orb::Models::AddCreditLedgerEntryRequest::AddAmendmentCreditLedgerEntryRequestParams
    #   # ...
    # end
    # ```
    class AddCreditLedgerEntryRequest < Orb::Union
      discriminator :entry_type

      variant :increment,
              -> { Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams }

      variant :decrement,
              -> { Orb::Models::AddCreditLedgerEntryRequest::AddDecrementCreditLedgerEntryRequestParams }

      variant :expiration_change,
              -> { Orb::Models::AddCreditLedgerEntryRequest::AddExpirationChangeCreditLedgerEntryRequestParams }

      variant :void, -> { Orb::Models::AddCreditLedgerEntryRequest::AddVoidCreditLedgerEntryRequestParams }

      variant :amendment,
              -> { Orb::Models::AddCreditLedgerEntryRequest::AddAmendmentCreditLedgerEntryRequestParams }

      class AddIncrementCreditLedgerEntryRequestParams < Orb::BaseModel
        # @!attribute amount
        #   The number of credits to effect. Note that this is required for increment,
        #     decrement, void, or undo operations.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute entry_type
        #
        #   @return [Symbol, :increment]
        required :entry_type, const: :increment

        # @!attribute currency
        #   The currency or custom pricing unit to use for this ledger entry. If this is a
        #     real-world currency, it must match the customer's invoicing currency.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

        # @!attribute description
        #   Optional metadata that can be specified when adding ledger results via the API.
        #     For example, this can be used to note an increment refers to trial credits, or
        #     for noting corrections as a result of an incident, etc.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute effective_date
        #   An ISO 8601 format date that denotes when this credit balance should become
        #     available for use.
        #
        #   @return [Time, nil]
        optional :effective_date, Time, nil?: true

        # @!attribute expiry_date
        #   An ISO 8601 format date that denotes when this credit balance should expire.
        #
        #   @return [Time, nil]
        optional :expiry_date, Time, nil?: true

        # @!attribute invoice_settings
        #   Passing `invoice_settings` automatically generates an invoice for the newly
        #     added credits. If `invoice_settings` is passed, you must specify
        #     per_unit_cost_basis, as the calculation of the invoice total is done on that
        #     basis.
        #
        #   @return [Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams::InvoiceSettings, nil]
        optional :invoice_settings,
                 -> { Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams::InvoiceSettings },
                 nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!attribute per_unit_cost_basis
        #   Can only be specified when entry_type=increment. How much, in the customer's
        #     currency, a customer paid for a single credit in this block
        #
        #   @return [String, nil]
        optional :per_unit_cost_basis, String, nil?: true

        # @!parse
        #   # @param amount [Float]
        #   # @param currency [String, nil]
        #   # @param description [String, nil]
        #   # @param effective_date [Time, nil]
        #   # @param expiry_date [Time, nil]
        #   # @param invoice_settings [Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams::InvoiceSettings, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param per_unit_cost_basis [String, nil]
        #   # @param entry_type [Symbol, :increment]
        #   #
        #   def initialize(
        #     amount:,
        #     currency: nil,
        #     description: nil,
        #     effective_date: nil,
        #     expiry_date: nil,
        #     invoice_settings: nil,
        #     metadata: nil,
        #     per_unit_cost_basis: nil,
        #     entry_type: :increment,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        class InvoiceSettings < Orb::BaseModel
          # @!attribute auto_collection
          #   Whether the credits purchase invoice should auto collect with the customer's
          #     saved payment method.
          #
          #   @return [Boolean]
          required :auto_collection, Orb::BooleanModel

          # @!attribute net_terms
          #   The net terms determines the difference between the invoice date and the issue
          #     date for the invoice. If you intend the invoice to be due on issue, set this
          #     to 0.
          #
          #   @return [Integer]
          required :net_terms, Integer

          # @!attribute memo
          #   An optional memo to display on the invoice.
          #
          #   @return [String, nil]
          optional :memo, String, nil?: true

          # @!attribute [r] require_successful_payment
          #   If true, the new credit block will require that the corresponding invoice is
          #     paid before it can be drawn down from.
          #
          #   @return [Boolean, nil]
          optional :require_successful_payment, Orb::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :require_successful_payment

          # @!parse
          #   # Passing `invoice_settings` automatically generates an invoice for the newly
          #   #   added credits. If `invoice_settings` is passed, you must specify
          #   #   per_unit_cost_basis, as the calculation of the invoice total is done on that
          #   #   basis.
          #   #
          #   # @param auto_collection [Boolean]
          #   # @param net_terms [Integer]
          #   # @param memo [String, nil]
          #   # @param require_successful_payment [Boolean]
          #   #
          #   def initialize(auto_collection:, net_terms:, memo: nil, require_successful_payment: nil, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end

      class AddDecrementCreditLedgerEntryRequestParams < Orb::BaseModel
        # @!attribute amount
        #   The number of credits to effect. Note that this is required for increment,
        #     decrement, void, or undo operations.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute entry_type
        #
        #   @return [Symbol, :decrement]
        required :entry_type, const: :decrement

        # @!attribute currency
        #   The currency or custom pricing unit to use for this ledger entry. If this is a
        #     real-world currency, it must match the customer's invoicing currency.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

        # @!attribute description
        #   Optional metadata that can be specified when adding ledger results via the API.
        #     For example, this can be used to note an increment refers to trial credits, or
        #     for noting corrections as a result of an incident, etc.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param amount [Float]
        #   # @param currency [String, nil]
        #   # @param description [String, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param entry_type [Symbol, :decrement]
        #   #
        #   def initialize(amount:, currency: nil, description: nil, metadata: nil, entry_type: :decrement, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      class AddExpirationChangeCreditLedgerEntryRequestParams < Orb::BaseModel
        # @!attribute entry_type
        #
        #   @return [Symbol, :expiration_change]
        required :entry_type, const: :expiration_change

        # @!attribute expiry_date
        #   An ISO 8601 format date that identifies the origination credit block to expire
        #
        #   @return [Time, nil]
        required :expiry_date, Time, nil?: true

        # @!attribute target_expiry_date
        #   A future date (specified in YYYY-MM-DD format) used for expiration change,
        #     denoting when credits transferred (as part of a partial block expiration) should
        #     expire.
        #
        #   @return [Date]
        required :target_expiry_date, Date

        # @!attribute amount
        #   The number of credits to effect. Note that this is required for increment,
        #     decrement, void, or undo operations.
        #
        #   @return [Float, nil]
        optional :amount, Float, nil?: true

        # @!attribute block_id
        #   The ID of the block affected by an expiration_change, used to differentiate
        #     between multiple blocks with the same `expiry_date`.
        #
        #   @return [String, nil]
        optional :block_id, String, nil?: true

        # @!attribute currency
        #   The currency or custom pricing unit to use for this ledger entry. If this is a
        #     real-world currency, it must match the customer's invoicing currency.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

        # @!attribute description
        #   Optional metadata that can be specified when adding ledger results via the API.
        #     For example, this can be used to note an increment refers to trial credits, or
        #     for noting corrections as a result of an incident, etc.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param expiry_date [Time, nil]
        #   # @param target_expiry_date [Date]
        #   # @param amount [Float, nil]
        #   # @param block_id [String, nil]
        #   # @param currency [String, nil]
        #   # @param description [String, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param entry_type [Symbol, :expiration_change]
        #   #
        #   def initialize(
        #     expiry_date:,
        #     target_expiry_date:,
        #     amount: nil,
        #     block_id: nil,
        #     currency: nil,
        #     description: nil,
        #     metadata: nil,
        #     entry_type: :expiration_change,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      class AddVoidCreditLedgerEntryRequestParams < Orb::BaseModel
        # @!attribute amount
        #   The number of credits to effect. Note that this is required for increment,
        #     decrement, void, or undo operations.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute block_id
        #   The ID of the block to void.
        #
        #   @return [String]
        required :block_id, String

        # @!attribute entry_type
        #
        #   @return [Symbol, :void]
        required :entry_type, const: :void

        # @!attribute currency
        #   The currency or custom pricing unit to use for this ledger entry. If this is a
        #     real-world currency, it must match the customer's invoicing currency.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

        # @!attribute description
        #   Optional metadata that can be specified when adding ledger results via the API.
        #     For example, this can be used to note an increment refers to trial credits, or
        #     for noting corrections as a result of an incident, etc.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!attribute void_reason
        #   Can only be specified when `entry_type=void`. The reason for the void.
        #
        #   @return [Symbol, Orb::Models::AddCreditLedgerEntryRequest::AddVoidCreditLedgerEntryRequestParams::VoidReason, nil]
        optional :void_reason,
                 enum: -> { Orb::Models::AddCreditLedgerEntryRequest::AddVoidCreditLedgerEntryRequestParams::VoidReason },
                 nil?: true

        # @!parse
        #   # @param amount [Float]
        #   # @param block_id [String]
        #   # @param currency [String, nil]
        #   # @param description [String, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param void_reason [Symbol, Orb::Models::AddCreditLedgerEntryRequest::AddVoidCreditLedgerEntryRequestParams::VoidReason, nil]
        #   # @param entry_type [Symbol, :void]
        #   #
        #   def initialize(
        #     amount:,
        #     block_id:,
        #     currency: nil,
        #     description: nil,
        #     metadata: nil,
        #     void_reason: nil,
        #     entry_type: :void,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # Can only be specified when `entry_type=void`. The reason for the void.
        #
        # @example
        # ```ruby
        # case void_reason
        # in :refund
        #   # ...
        # end
        # ```
        class VoidReason < Orb::Enum
          REFUND = :refund

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class AddAmendmentCreditLedgerEntryRequestParams < Orb::BaseModel
        # @!attribute amount
        #   The number of credits to effect. Note that this is required for increment,
        #     decrement or void operations.
        #
        #   @return [Float]
        required :amount, Float

        # @!attribute block_id
        #   The ID of the block to reverse a decrement from.
        #
        #   @return [String]
        required :block_id, String

        # @!attribute entry_type
        #
        #   @return [Symbol, :amendment]
        required :entry_type, const: :amendment

        # @!attribute currency
        #   The currency or custom pricing unit to use for this ledger entry. If this is a
        #     real-world currency, it must match the customer's invoicing currency.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

        # @!attribute description
        #   Optional metadata that can be specified when adding ledger results via the API.
        #     For example, this can be used to note an increment refers to trial credits, or
        #     for noting corrections as a result of an incident, etc.
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param amount [Float]
        #   # @param block_id [String]
        #   # @param currency [String, nil]
        #   # @param description [String, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param entry_type [Symbol, :amendment]
        #   #
        #   def initialize(amount:, block_id:, currency: nil, description: nil, metadata: nil, entry_type: :amendment, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
