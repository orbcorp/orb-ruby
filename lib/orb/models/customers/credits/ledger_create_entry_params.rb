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
          required :entry_type, enum: -> { Orb::Customers::Credits::LedgerCreateEntryParams::EntryType }

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
          optional :expiry_date, Time, nil?: true

          # @!attribute invoice_settings
          #   Passing `invoice_settings` automatically generates an invoice for the newly
          #   added credits. If `invoice_settings` is passed, you must specify
          #   per_unit_cost_basis, as the calculation of the invoice total is done on that
          #   basis.
          #
          #   @return [Orb::Models::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings, nil]
          optional :invoice_settings,
                   -> { Orb::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings },
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
                   enum: -> { Orb::Customers::Credits::LedgerCreateEntryParams::VoidReason },
                   nil?: true

          # @!method initialize(amount:, entry_type:, target_expiry_date:, block_id:, currency: nil, description: nil, effective_date: nil, expiry_date: nil, invoice_settings: nil, metadata: nil, per_unit_cost_basis: nil, void_reason: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Customers::Credits::LedgerCreateEntryParams} for more details.
          #
          #   @param amount [Float] The number of credits to effect. Note that this is required for increment, decre
          #
          #   @param entry_type [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryParams::EntryType]
          #
          #   @param target_expiry_date [Date] A future date (specified in YYYY-MM-DD format) used for expiration change, denot
          #
          #   @param block_id [String] The ID of the block to reverse a decrement from.
          #
          #   @param currency [String, nil] The currency or custom pricing unit to use for this ledger entry. If this is a r
          #
          #   @param description [String, nil] Optional metadata that can be specified when adding ledger results via the API.
          #
          #   @param effective_date [Time, nil] An ISO 8601 format date that denotes when this credit balance should become avai
          #
          #   @param expiry_date [Time, nil] An ISO 8601 format date that identifies the origination credit block to expire
          #
          #   @param invoice_settings [Orb::Models::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings, nil] Passing `invoice_settings` automatically generates an invoice for the newly adde
          #
          #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
          #
          #   @param per_unit_cost_basis [String, nil] Can only be specified when entry_type=increment. How much, in the customer's cur
          #
          #   @param void_reason [Symbol, Orb::Models::Customers::Credits::LedgerCreateEntryParams::VoidReason, nil] Can only be specified when `entry_type=void`. The reason for the void.
          #
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
            #   @return [Integer, nil]
            required :net_terms, Integer, nil?: true

            # @!attribute invoice_date
            #   An ISO 8601 format date that denotes when this invoice should be dated in the
            #   customer's timezone. If not provided, the invoice date will default to the
            #   credit block's effective date.
            #
            #   @return [Date, Time, nil]
            optional :invoice_date,
                     union: -> {
                       Orb::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings::InvoiceDate
                     },
                     nil?: true

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

            # @!method initialize(auto_collection:, net_terms:, invoice_date: nil, memo: nil, require_successful_payment: nil)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings} for
            #   more details.
            #
            #   Passing `invoice_settings` automatically generates an invoice for the newly
            #   added credits. If `invoice_settings` is passed, you must specify
            #   per_unit_cost_basis, as the calculation of the invoice total is done on that
            #   basis.
            #
            #   @param auto_collection [Boolean] Whether the credits purchase invoice should auto collect with the customer's sav
            #
            #   @param net_terms [Integer, nil] The net terms determines the difference between the invoice date and the issue d
            #
            #   @param invoice_date [Date, Time, nil] An ISO 8601 format date that denotes when this invoice should be dated in the cu
            #
            #   @param memo [String, nil] An optional memo to display on the invoice.
            #
            #   @param require_successful_payment [Boolean] If true, the new credit block will require that the corresponding invoice is pai

            # An ISO 8601 format date that denotes when this invoice should be dated in the
            # customer's timezone. If not provided, the invoice date will default to the
            # credit block's effective date.
            #
            # @see Orb::Models::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings#invoice_date
            module InvoiceDate
              extend Orb::Internal::Type::Union

              variant Date

              variant Time

              # @!method self.variants
              #   @return [Array(Date, Time)]
            end
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
