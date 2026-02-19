# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class LedgerCreateEntryParams < Orb::Internal::Type::BaseModel
          extend Orb::Internal::Type::RequestParameters::Converter
          include Orb::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Orb::Customers::Credits::LedgerCreateEntryParams,
                Orb::Internal::AnyHash
              )
            end

          # The number of credits to effect. Note that this is required for increment,
          # decrement or void operations.
          sig { returns(Float) }
          attr_accessor :amount

          sig do
            returns(
              Orb::Customers::Credits::LedgerCreateEntryParams::EntryType::OrSymbol
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

          # Optional filter to specify which items this credit block applies to. If not
          # specified, the block will apply to all items for the pricing unit.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Orb::Customers::Credits::LedgerCreateEntryParams::Filter
                ]
              )
            )
          end
          attr_accessor :filters

          # Passing `invoice_settings` automatically generates an invoice for the newly
          # added credits. If `invoice_settings` is passed, you must specify
          # per_unit_cost_basis, as the calculation of the invoice total is done on that
          # basis.
          sig do
            returns(
              T.nilable(
                Orb::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings
              )
            )
          end
          attr_reader :invoice_settings

          sig do
            params(
              invoice_settings:
                T.nilable(
                  Orb::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings::OrHash
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
                Orb::Customers::Credits::LedgerCreateEntryParams::VoidReason::OrSymbol
              )
            )
          end
          attr_accessor :void_reason

          sig do
            params(
              amount: Float,
              entry_type:
                Orb::Customers::Credits::LedgerCreateEntryParams::EntryType::OrSymbol,
              target_expiry_date: Date,
              block_id: String,
              currency: T.nilable(String),
              description: T.nilable(String),
              effective_date: T.nilable(Time),
              expiry_date: T.nilable(Time),
              filters:
                T.nilable(
                  T::Array[
                    Orb::Customers::Credits::LedgerCreateEntryParams::Filter::OrHash
                  ]
                ),
              invoice_settings:
                T.nilable(
                  Orb::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings::OrHash
                ),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              per_unit_cost_basis: T.nilable(String),
              void_reason:
                T.nilable(
                  Orb::Customers::Credits::LedgerCreateEntryParams::VoidReason::OrSymbol
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
            # Optional filter to specify which items this credit block applies to. If not
            # specified, the block will apply to all items for the pricing unit.
            filters: nil,
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
                  Orb::Customers::Credits::LedgerCreateEntryParams::EntryType::OrSymbol,
                currency: T.nilable(String),
                description: T.nilable(String),
                effective_date: T.nilable(Time),
                expiry_date: T.nilable(Time),
                filters:
                  T.nilable(
                    T::Array[
                      Orb::Customers::Credits::LedgerCreateEntryParams::Filter
                    ]
                  ),
                invoice_settings:
                  T.nilable(
                    Orb::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings
                  ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                per_unit_cost_basis: T.nilable(String),
                target_expiry_date: Date,
                block_id: String,
                void_reason:
                  T.nilable(
                    Orb::Customers::Credits::LedgerCreateEntryParams::VoidReason::OrSymbol
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
                  Orb::Customers::Credits::LedgerCreateEntryParams::EntryType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AMENDMENT =
              T.let(
                :amendment,
                Orb::Customers::Credits::LedgerCreateEntryParams::EntryType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Customers::Credits::LedgerCreateEntryParams::EntryType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Filter < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Customers::Credits::LedgerCreateEntryParams::Filter,
                  Orb::Internal::AnyHash
                )
              end

            # The property of the price the block applies to. Only item_id is supported.
            sig do
              returns(
                Orb::Customers::Credits::LedgerCreateEntryParams::Filter::Field::OrSymbol
              )
            end
            attr_accessor :field

            # Should prices that match the filter be included or excluded.
            sig do
              returns(
                Orb::Customers::Credits::LedgerCreateEntryParams::Filter::Operator::OrSymbol
              )
            end
            attr_accessor :operator

            # The IDs or values that match this filter.
            sig { returns(T::Array[String]) }
            attr_accessor :values

            # A PriceFilter that only allows item_id field for block filters.
            sig do
              params(
                field:
                  Orb::Customers::Credits::LedgerCreateEntryParams::Filter::Field::OrSymbol,
                operator:
                  Orb::Customers::Credits::LedgerCreateEntryParams::Filter::Operator::OrSymbol,
                values: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # The property of the price the block applies to. Only item_id is supported.
              field:,
              # Should prices that match the filter be included or excluded.
              operator:,
              # The IDs or values that match this filter.
              values:
            )
            end

            sig do
              override.returns(
                {
                  field:
                    Orb::Customers::Credits::LedgerCreateEntryParams::Filter::Field::OrSymbol,
                  operator:
                    Orb::Customers::Credits::LedgerCreateEntryParams::Filter::Operator::OrSymbol,
                  values: T::Array[String]
                }
              )
            end
            def to_hash
            end

            # The property of the price the block applies to. Only item_id is supported.
            module Field
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Customers::Credits::LedgerCreateEntryParams::Filter::Field
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ITEM_ID =
                T.let(
                  :item_id,
                  Orb::Customers::Credits::LedgerCreateEntryParams::Filter::Field::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Customers::Credits::LedgerCreateEntryParams::Filter::Field::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Should prices that match the filter be included or excluded.
            module Operator
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Customers::Credits::LedgerCreateEntryParams::Filter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCLUDES =
                T.let(
                  :includes,
                  Orb::Customers::Credits::LedgerCreateEntryParams::Filter::Operator::TaggedSymbol
                )
              EXCLUDES =
                T.let(
                  :excludes,
                  Orb::Customers::Credits::LedgerCreateEntryParams::Filter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Customers::Credits::LedgerCreateEntryParams::Filter::Operator::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class InvoiceSettings < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings,
                  Orb::Internal::AnyHash
                )
              end

            # Whether the credits purchase invoice should auto collect with the customer's
            # saved payment method.
            sig { returns(T::Boolean) }
            attr_accessor :auto_collection

            # An optional custom due date for the invoice. If not set, the due date will be
            # calculated based on the `net_terms` value.
            sig do
              returns(
                T.nilable(
                  Orb::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings::CustomDueDate::Variants
                )
              )
            end
            attr_accessor :custom_due_date

            # An ISO 8601 format date that denotes when this invoice should be dated in the
            # customer's timezone. If not provided, the invoice date will default to the
            # credit block's effective date.
            sig do
              returns(
                T.nilable(
                  Orb::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings::InvoiceDate::Variants
                )
              )
            end
            attr_accessor :invoice_date

            # The ID of the Item to be used for the invoice line item. If not provided, a
            # default 'Credits' item will be used.
            sig { returns(T.nilable(String)) }
            attr_accessor :item_id

            # If true, the new credits purchase invoice will be marked as paid.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :mark_as_paid

            sig { params(mark_as_paid: T::Boolean).void }
            attr_writer :mark_as_paid

            # An optional memo to display on the invoice.
            sig { returns(T.nilable(String)) }
            attr_accessor :memo

            # The net terms determines the due date of the invoice. Due date is calculated
            # based on the invoice or issuance date, depending on the account's configured due
            # date calculation method. A value of '0' here represents that the invoice is due
            # on issue, whereas a value of '30' represents that the customer has 30 days to
            # pay the invoice. You must set either `net_terms` or `custom_due_date`, but not
            # both.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :net_terms

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
                custom_due_date:
                  T.nilable(
                    Orb::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings::CustomDueDate::Variants
                  ),
                invoice_date:
                  T.nilable(
                    Orb::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings::InvoiceDate::Variants
                  ),
                item_id: T.nilable(String),
                mark_as_paid: T::Boolean,
                memo: T.nilable(String),
                net_terms: T.nilable(Integer),
                require_successful_payment: T::Boolean
              ).returns(T.attached_class)
            end
            def self.new(
              # Whether the credits purchase invoice should auto collect with the customer's
              # saved payment method.
              auto_collection:,
              # An optional custom due date for the invoice. If not set, the due date will be
              # calculated based on the `net_terms` value.
              custom_due_date: nil,
              # An ISO 8601 format date that denotes when this invoice should be dated in the
              # customer's timezone. If not provided, the invoice date will default to the
              # credit block's effective date.
              invoice_date: nil,
              # The ID of the Item to be used for the invoice line item. If not provided, a
              # default 'Credits' item will be used.
              item_id: nil,
              # If true, the new credits purchase invoice will be marked as paid.
              mark_as_paid: nil,
              # An optional memo to display on the invoice.
              memo: nil,
              # The net terms determines the due date of the invoice. Due date is calculated
              # based on the invoice or issuance date, depending on the account's configured due
              # date calculation method. A value of '0' here represents that the invoice is due
              # on issue, whereas a value of '30' represents that the customer has 30 days to
              # pay the invoice. You must set either `net_terms` or `custom_due_date`, but not
              # both.
              net_terms: nil,
              # If true, the new credit block will require that the corresponding invoice is
              # paid before it can be drawn down from.
              require_successful_payment: nil
            )
            end

            sig do
              override.returns(
                {
                  auto_collection: T::Boolean,
                  custom_due_date:
                    T.nilable(
                      Orb::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings::CustomDueDate::Variants
                    ),
                  invoice_date:
                    T.nilable(
                      Orb::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings::InvoiceDate::Variants
                    ),
                  item_id: T.nilable(String),
                  mark_as_paid: T::Boolean,
                  memo: T.nilable(String),
                  net_terms: T.nilable(Integer),
                  require_successful_payment: T::Boolean
                }
              )
            end
            def to_hash
            end

            # An optional custom due date for the invoice. If not set, the due date will be
            # calculated based on the `net_terms` value.
            module CustomDueDate
              extend Orb::Internal::Type::Union

              Variants = T.type_alias { T.any(Date, Time) }

              sig do
                override.returns(
                  T::Array[
                    Orb::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings::CustomDueDate::Variants
                  ]
                )
              end
              def self.variants
              end
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
                    Orb::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings::InvoiceDate::Variants
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
                  Orb::Customers::Credits::LedgerCreateEntryParams::VoidReason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REFUND =
              T.let(
                :refund,
                Orb::Customers::Credits::LedgerCreateEntryParams::VoidReason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Customers::Credits::LedgerCreateEntryParams::VoidReason::TaggedSymbol
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
