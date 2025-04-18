# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        # @see Orb::Resources::Customers::Credits::Ledger#create_entry
        class LedgerCreateEntryParams < Orb::Internal::Type::BaseModel
          extend Orb::Internal::Type::RequestParameters::Converter
          include Orb::Internal::Type::RequestParameters

          # @!attribute amount
          #   The number of credits to effect. Note that this is required for increment,
          #   decrement or void operations.
          #
          #   @return [Float]
          required :amount, Float

          # @!attribute entry_type
          #
          #   @return [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryParams::EntryType]
          required :entry_type, enum: -> { Orb::Models::Customers::Credits::LedgerCreateEntryParams::EntryType }

          # @!attribute currency
          #   The currency or custom pricing unit to use for this ledger entry. If this is a
          #   real-world currency, it must match the customer's invoicing currency.
          #
          #   @return [String, nil]
          optional :currency, String, nil?: true

          # @!attribute description
          #   Optional metadata that can be specified when adding ledger results via the API.
          #   For example, this can be used to note an increment refers to trial credits, or
          #   for noting corrections as a result of an incident, etc.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute effective_date
          #   An ISO 8601 format date that denotes when this credit balance should become
          #   available for use.
          #
          #   @return [Time, nil]
          optional :effective_date, Time, nil?: true

          # @!attribute expiry_date
          #   An ISO 8601 format date that identifies the origination credit block to expire
          #
          #   @return [Time, nil]
          required :expiry_date, Time, nil?: true

          # @!attribute invoice_settings
          #   Passing `invoice_settings` automatically generates an invoice for the newly
          #   added credits. If `invoice_settings` is passed, you must specify
          #   per_unit_cost_basis, as the calculation of the invoice total is done on that
          #   basis.
          #
          #   @return [Orb::Models::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings, nil]
          optional :invoice_settings,
                   -> { Orb::Models::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings },
                   nil?: true

          # @!attribute metadata
          #   User-specified key/value pairs for the resource. Individual keys can be removed
          #   by setting the value to `null`, and the entire metadata mapping can be cleared
          #   by setting `metadata` to `null`.
          #
          #   @return [Hash{Symbol=>String, nil}, nil]
          optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

          # @!attribute per_unit_cost_basis
          #   Can only be specified when entry_type=increment. How much, in the customer's
          #   currency, a customer paid for a single credit in this block
          #
          #   @return [String, nil]
          optional :per_unit_cost_basis, String, nil?: true

          # @!attribute target_expiry_date
          #   A future date (specified in YYYY-MM-DD format) used for expiration change,
          #   denoting when credits transferred (as part of a partial block expiration) should
          #   expire.
          #
          #   @return [Date]
          required :target_expiry_date, Date

          # @!attribute block_id
          #   The ID of the block to reverse a decrement from.
          #
          #   @return [String]
          required :block_id, String

          # @!attribute void_reason
          #   Can only be specified when `entry_type=void`. The reason for the void.
          #
          #   @return [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryParams::VoidReason, nil]
          optional :void_reason,
                   enum: -> { Orb::Models::Customers::Credits::LedgerCreateEntryParams::VoidReason },
                   nil?: true

          # @!method initialize(amount:, entry_type:, expiry_date:, target_expiry_date:, block_id:, currency: nil, description: nil, effective_date: nil, invoice_settings: nil, metadata: nil, per_unit_cost_basis: nil, void_reason: nil, request_options: {})
          #   @param amount [Float]
          #   @param entry_type [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryParams::EntryType]
          #   @param expiry_date [Time, nil]
          #   @param target_expiry_date [Date]
          #   @param block_id [String]
          #   @param currency [String, nil]
          #   @param description [String, nil]
          #   @param effective_date [Time, nil]
          #   @param invoice_settings [Orb::Models::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings, nil]
          #   @param metadata [Hash{Symbol=>String, nil}, nil]
          #   @param per_unit_cost_basis [String, nil]
          #   @param void_reason [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryParams::VoidReason, nil]
          #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

          module EntryType
            extend Orb::Internal::Type::Enum

            AMENDMENT = :amendment

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class InvoiceSettings < Orb::Internal::Type::BaseModel
            # @!attribute auto_collection
            #   Whether the credits purchase invoice should auto collect with the customer's
            #   saved payment method.
            #
            #   @return [Boolean]
            required :auto_collection, Orb::Internal::Type::Boolean

            # @!attribute net_terms
            #   The net terms determines the difference between the invoice date and the issue
            #   date for the invoice. If you intend the invoice to be due on issue, set this
            #   to 0.
            #
            #   @return [Integer]
            required :net_terms, Integer

            # @!attribute memo
            #   An optional memo to display on the invoice.
            #
            #   @return [String, nil]
            optional :memo, String, nil?: true

            # @!attribute require_successful_payment
            #   If true, the new credit block will require that the corresponding invoice is
            #   paid before it can be drawn down from.
            #
            #   @return [Boolean, nil]
            optional :require_successful_payment, Orb::Internal::Type::Boolean

            # @!method initialize(auto_collection:, net_terms:, memo: nil, require_successful_payment: nil)
            #   Passing `invoice_settings` automatically generates an invoice for the newly
            #   added credits. If `invoice_settings` is passed, you must specify
            #   per_unit_cost_basis, as the calculation of the invoice total is done on that
            #   basis.
            #
            #   @param auto_collection [Boolean]
            #   @param net_terms [Integer]
            #   @param memo [String, nil]
            #   @param require_successful_payment [Boolean]
          end

          # Can only be specified when `entry_type=void`. The reason for the void.
          module VoidReason
            extend Orb::Internal::Type::Enum

            REFUND = :refund

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
