# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class LedgerCreateEntryByExternalIDParams < Orb::Internal::Type::BaseModel
          extend Orb::Internal::Type::RequestParameters::Converter
          include Orb::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams,
                Orb::Internal::AnyHash
              )
            end

          # The number of credits to effect. Note that this is required for increment,
          # decrement or void operations.
          sig { returns(Float) }
          attr_accessor :amount

          sig do
            returns(
              Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::EntryType::OrSymbol
            )
          end
          attr_accessor :entry_type

          # The currency or custom pricing unit to use for this ledger entry. If this is a
          # real-world currency, it must match the customer's invoicing currency.
          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          # Optional metadata that can be specified when adding ledger results via the API.
          # For example, this can be used to note an increment refers to trial credits, or
          # for noting corrections as a result of an incident, etc.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # An ISO 8601 format date that denotes when this credit balance should become
          # available for use.
          sig { returns(T.nilable(Time)) }
          attr_accessor :effective_date

          # An ISO 8601 format date that identifies the origination credit block to expire
          sig { returns(T.nilable(Time)) }
          attr_accessor :expiry_date

          # Passing `invoice_settings` automatically generates an invoice for the newly
          # added credits. If `invoice_settings` is passed, you must specify
          # per_unit_cost_basis, as the calculation of the invoice total is done on that
          # basis.
          sig do
            returns(
              T.nilable(
                Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::InvoiceSettings
              )
            )
          end
          attr_reader :invoice_settings

          sig do
            params(
              invoice_settings:
                T.nilable(
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::InvoiceSettings::OrHash
                )
            ).void
          end
          attr_writer :invoice_settings

          # User-specified key/value pairs for the resource. Individual keys can be removed
          # by setting the value to `null`, and the entire metadata mapping can be cleared
          # by setting `metadata` to `null`.
          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          # Can only be specified when entry_type=increment. How much, in the customer's
          # currency, a customer paid for a single credit in this block
          sig { returns(T.nilable(String)) }
          attr_accessor :per_unit_cost_basis

          # A future date (specified in YYYY-MM-DD format) used for expiration change,
          # denoting when credits transferred (as part of a partial block expiration) should
          # expire.
          sig { returns(Date) }
          attr_accessor :target_expiry_date

          # The ID of the block to reverse a decrement from.
          sig { returns(String) }
          attr_accessor :block_id

          # Can only be specified when `entry_type=void`. The reason for the void.
          sig do
            returns(
              T.nilable(
                Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::VoidReason::OrSymbol
              )
            )
          end
          attr_accessor :void_reason

          sig do
            params(
              amount: Float,
              entry_type:
                Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::EntryType::OrSymbol,
              target_expiry_date: Date,
              block_id: String,
              currency: T.nilable(String),
              description: T.nilable(String),
              effective_date: T.nilable(Time),
              expiry_date: T.nilable(Time),
              invoice_settings:
                T.nilable(
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::InvoiceSettings::OrHash
                ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              per_unit_cost_basis: T.nilable(String),
              void_reason:
                T.nilable(
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::VoidReason::OrSymbol
                ),
              request_options: Orb::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # The number of credits to effect. Note that this is required for increment,
            # decrement or void operations.
            amount:,
            entry_type:,
            # A future date (specified in YYYY-MM-DD format) used for expiration change,
            # denoting when credits transferred (as part of a partial block expiration) should
            # expire.
            target_expiry_date:,
            # The ID of the block to reverse a decrement from.
            block_id:,
            # The currency or custom pricing unit to use for this ledger entry. If this is a
            # real-world currency, it must match the customer's invoicing currency.
            currency: nil,
            # Optional metadata that can be specified when adding ledger results via the API.
            # For example, this can be used to note an increment refers to trial credits, or
            # for noting corrections as a result of an incident, etc.
            description: nil,
            # An ISO 8601 format date that denotes when this credit balance should become
            # available for use.
            effective_date: nil,
            # An ISO 8601 format date that identifies the origination credit block to expire
            expiry_date: nil,
            # Passing `invoice_settings` automatically generates an invoice for the newly
            # added credits. If `invoice_settings` is passed, you must specify
            # per_unit_cost_basis, as the calculation of the invoice total is done on that
            # basis.
            invoice_settings: nil,
            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            metadata: nil,
            # Can only be specified when entry_type=increment. How much, in the customer's
            # currency, a customer paid for a single credit in this block
            per_unit_cost_basis: nil,
            # Can only be specified when `entry_type=void`. The reason for the void.
            void_reason: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                amount: Float,
                entry_type:
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::EntryType::OrSymbol,
                currency: T.nilable(String),
                description: T.nilable(String),
                effective_date: T.nilable(Time),
                expiry_date: T.nilable(Time),
                invoice_settings:
                  T.nilable(
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::InvoiceSettings
                  ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                per_unit_cost_basis: T.nilable(String),
                target_expiry_date: Date,
                block_id: String,
                void_reason:
                  T.nilable(
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::VoidReason::OrSymbol
                  ),
                request_options: Orb::RequestOptions
              }
            )
          end
          def to_hash
          end

          module EntryType
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::EntryType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AMENDMENT =
              T.let(
                :amendment,
                Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::EntryType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::EntryType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class InvoiceSettings < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::InvoiceSettings,
                  Orb::Internal::AnyHash
                )
              end

            # Whether the credits purchase invoice should auto collect with the customer's
            # saved payment method.
            sig { returns(T::Boolean) }
            attr_accessor :auto_collection

            # The net terms determines the difference between the invoice date and the issue
            # date for the invoice. If you intend the invoice to be due on issue, set this
            # to 0.
            sig { returns(Integer) }
            attr_accessor :net_terms

            # An ISO 8601 format date that denotes when this invoice should be dated in the
            # customer's timezone. If not provided, the invoice date will default to the
            # credit block's effective date.
            sig do
              returns(
                T.nilable(
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::InvoiceSettings::InvoiceDate::Variants
                )
              )
            end
            attr_accessor :invoice_date

            # An optional memo to display on the invoice.
            sig { returns(T.nilable(String)) }
            attr_accessor :memo

            # If true, the new credit block will require that the corresponding invoice is
            # paid before it can be drawn down from.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :require_successful_payment

            sig { params(require_successful_payment: T::Boolean).void }
            attr_writer :require_successful_payment

            # Passing `invoice_settings` automatically generates an invoice for the newly
            # added credits. If `invoice_settings` is passed, you must specify
            # per_unit_cost_basis, as the calculation of the invoice total is done on that
            # basis.
            sig do
              params(
                auto_collection: T::Boolean,
                net_terms: Integer,
                invoice_date:
                  T.nilable(
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::InvoiceSettings::InvoiceDate::Variants
                  ),
                memo: T.nilable(String),
                require_successful_payment: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(
              # Whether the credits purchase invoice should auto collect with the customer's
              # saved payment method.
              auto_collection:,
              # The net terms determines the difference between the invoice date and the issue
              # date for the invoice. If you intend the invoice to be due on issue, set this
              # to 0.
              net_terms:,
              # An ISO 8601 format date that denotes when this invoice should be dated in the
              # customer's timezone. If not provided, the invoice date will default to the
              # credit block's effective date.
              invoice_date: nil,
              # An optional memo to display on the invoice.
              memo: nil,
              # If true, the new credit block will require that the corresponding invoice is
              # paid before it can be drawn down from.
              require_successful_payment: nil
            )
            end

            sig do
              override.returns(
                {
                  auto_collection: T::Boolean,
                  net_terms: Integer,
                  invoice_date:
                    T.nilable(
                      Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::InvoiceSettings::InvoiceDate::Variants
                    ),
                  memo: T.nilable(String),
                  require_successful_payment: T::Boolean
                }
              )
            end
            def to_hash
            end

            # An ISO 8601 format date that denotes when this invoice should be dated in the
            # customer's timezone. If not provided, the invoice date will default to the
            # credit block's effective date.
            module InvoiceDate
              extend Orb::Internal::Type::Union

              Variants = T.type_alias { T.any(Date, Time) }

              sig do
                override.returns(
                  T::Array[
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::InvoiceSettings::InvoiceDate::Variants
                  ]
                )
              end
              def self.variants
              end
            end
          end

          # Can only be specified when `entry_type=void`. The reason for the void.
          module VoidReason
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::VoidReason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REFUND =
              T.let(
                :refund,
                Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::VoidReason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::VoidReason::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
