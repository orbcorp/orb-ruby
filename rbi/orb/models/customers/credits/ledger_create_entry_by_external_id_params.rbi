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

          sig { returns(String) }
          attr_accessor :external_customer_id

          sig do
            returns(
              T.any(
                Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment,
                Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Decrement,
                Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::ExpirationChange,
                Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Void,
                Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Amendment
              )
            )
          end
          attr_accessor :body

          sig do
            params(
              external_customer_id: String,
              body:
                T.any(
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::OrHash,
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Decrement::OrHash,
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::ExpirationChange::OrHash,
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Void::OrHash,
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Amendment::OrHash
                ),
              request_options: Orb::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(external_customer_id:, body:, request_options: {})
          end

          sig do
            override.returns(
              {
                external_customer_id: String,
                body:
                  T.any(
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment,
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Decrement,
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::ExpirationChange,
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Void,
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Amendment
                  ),
                request_options: Orb::RequestOptions
              }
            )
          end
          def to_hash
          end

          module Body
            extend Orb::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment,
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Decrement,
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::ExpirationChange,
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Void,
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Amendment
                )
              end

            class Increment < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment,
                    Orb::Internal::AnyHash
                  )
                end

              # The number of credits to effect. Note that this is required for increment,
              # decrement, void, or undo operations.
              sig { returns(Float) }
              attr_accessor :amount

              sig { returns(Symbol) }
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

              # An ISO 8601 format date that denotes when this credit balance should expire.
              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              # Optional filter to specify which items this credit block applies to. If not
              # specified, the block will apply to all items for the pricing unit.
              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::Filter
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
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::InvoiceSettings
                  )
                )
              end
              attr_reader :invoice_settings

              sig do
                params(
                  invoice_settings:
                    T.nilable(
                      Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::InvoiceSettings::OrHash
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

              sig do
                params(
                  amount: Float,
                  currency: T.nilable(String),
                  description: T.nilable(String),
                  effective_date: T.nilable(Time),
                  expiry_date: T.nilable(Time),
                  filters:
                    T.nilable(
                      T::Array[
                        Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::Filter::OrHash
                      ]
                    ),
                  invoice_settings:
                    T.nilable(
                      Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::InvoiceSettings::OrHash
                    ),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  per_unit_cost_basis: T.nilable(String),
                  entry_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The number of credits to effect. Note that this is required for increment,
                # decrement, void, or undo operations.
                amount:,
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
                # An ISO 8601 format date that denotes when this credit balance should expire.
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
                entry_type: :increment
              )
              end

              sig do
                override.returns(
                  {
                    amount: Float,
                    entry_type: Symbol,
                    currency: T.nilable(String),
                    description: T.nilable(String),
                    effective_date: T.nilable(Time),
                    expiry_date: T.nilable(Time),
                    filters:
                      T.nilable(
                        T::Array[
                          Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::Filter
                        ]
                      ),
                    invoice_settings:
                      T.nilable(
                        Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::InvoiceSettings
                      ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    per_unit_cost_basis: T.nilable(String)
                  }
                )
              end
              def to_hash
              end

              class Filter < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::Filter,
                      Orb::Internal::AnyHash
                    )
                  end

                # The property of the price the block applies to. Only item_id is supported.
                sig do
                  returns(
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::Filter::Field::OrSymbol
                  )
                end
                attr_accessor :field

                # Should prices that match the filter be included or excluded.
                sig do
                  returns(
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::Filter::Operator::OrSymbol
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
                      Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::Filter::Field::OrSymbol,
                    operator:
                      Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::Filter::Operator::OrSymbol,
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
                        Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::Filter::Field::OrSymbol,
                      operator:
                        Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::Filter::Operator::OrSymbol,
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
                        Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::Filter::Field
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  ITEM_ID =
                    T.let(
                      :item_id,
                      Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::Filter::Field::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::Filter::Field::TaggedSymbol
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
                        Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::Filter::Operator
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INCLUDES =
                    T.let(
                      :includes,
                      Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::Filter::Operator::TaggedSymbol
                    )
                  EXCLUDES =
                    T.let(
                      :excludes,
                      Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::Filter::Operator::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::Filter::Operator::TaggedSymbol
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
                      Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::InvoiceSettings,
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
                      Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::InvoiceSettings::CustomDueDate::Variants
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
                      Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::InvoiceSettings::InvoiceDate::Variants
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
                        Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::InvoiceSettings::CustomDueDate::Variants
                      ),
                    invoice_date:
                      T.nilable(
                        Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::InvoiceSettings::InvoiceDate::Variants
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
                          Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::InvoiceSettings::CustomDueDate::Variants
                        ),
                      invoice_date:
                        T.nilable(
                          Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::InvoiceSettings::InvoiceDate::Variants
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
                        Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::InvoiceSettings::CustomDueDate::Variants
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
                        Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::InvoiceSettings::InvoiceDate::Variants
                      ]
                    )
                  end
                  def self.variants
                  end
                end
              end
            end

            class Decrement < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Decrement,
                    Orb::Internal::AnyHash
                  )
                end

              # The number of credits to effect. Note that this is required for increment,
              # decrement, void, or undo operations.
              sig { returns(Float) }
              attr_accessor :amount

              sig { returns(Symbol) }
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

              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
              attr_accessor :metadata

              sig do
                params(
                  amount: Float,
                  currency: T.nilable(String),
                  description: T.nilable(String),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  entry_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The number of credits to effect. Note that this is required for increment,
                # decrement, void, or undo operations.
                amount:,
                # The currency or custom pricing unit to use for this ledger entry. If this is a
                # real-world currency, it must match the customer's invoicing currency.
                currency: nil,
                # Optional metadata that can be specified when adding ledger results via the API.
                # For example, this can be used to note an increment refers to trial credits, or
                # for noting corrections as a result of an incident, etc.
                description: nil,
                # User-specified key/value pairs for the resource. Individual keys can be removed
                # by setting the value to `null`, and the entire metadata mapping can be cleared
                # by setting `metadata` to `null`.
                metadata: nil,
                entry_type: :decrement
              )
              end

              sig do
                override.returns(
                  {
                    amount: Float,
                    entry_type: Symbol,
                    currency: T.nilable(String),
                    description: T.nilable(String),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
              end
              def to_hash
              end
            end

            class ExpirationChange < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::ExpirationChange,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(Symbol) }
              attr_accessor :entry_type

              # A date (specified in YYYY-MM-DD format) used for expiration change, denoting
              # when credits transferred (as part of a partial block expiration) should expire.
              # This date must be on or after the effective date of the credit block.
              sig { returns(Date) }
              attr_accessor :target_expiry_date

              # The number of credits to effect. Note that this is required for increment,
              # decrement, void, or undo operations.
              sig { returns(T.nilable(Float)) }
              attr_accessor :amount

              # The ID of the block affected by an expiration_change, used to differentiate
              # between multiple blocks with the same `expiry_date`.
              sig { returns(T.nilable(String)) }
              attr_accessor :block_id

              # The currency or custom pricing unit to use for this ledger entry. If this is a
              # real-world currency, it must match the customer's invoicing currency.
              sig { returns(T.nilable(String)) }
              attr_accessor :currency

              # Optional metadata that can be specified when adding ledger results via the API.
              # For example, this can be used to note an increment refers to trial credits, or
              # for noting corrections as a result of an incident, etc.
              sig { returns(T.nilable(String)) }
              attr_accessor :description

              # An ISO 8601 format date that identifies the origination credit block to expire
              sig { returns(T.nilable(Time)) }
              attr_accessor :expiry_date

              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
              attr_accessor :metadata

              sig do
                params(
                  target_expiry_date: Date,
                  amount: T.nilable(Float),
                  block_id: T.nilable(String),
                  currency: T.nilable(String),
                  description: T.nilable(String),
                  expiry_date: T.nilable(Time),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  entry_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # A date (specified in YYYY-MM-DD format) used for expiration change, denoting
                # when credits transferred (as part of a partial block expiration) should expire.
                # This date must be on or after the effective date of the credit block.
                target_expiry_date:,
                # The number of credits to effect. Note that this is required for increment,
                # decrement, void, or undo operations.
                amount: nil,
                # The ID of the block affected by an expiration_change, used to differentiate
                # between multiple blocks with the same `expiry_date`.
                block_id: nil,
                # The currency or custom pricing unit to use for this ledger entry. If this is a
                # real-world currency, it must match the customer's invoicing currency.
                currency: nil,
                # Optional metadata that can be specified when adding ledger results via the API.
                # For example, this can be used to note an increment refers to trial credits, or
                # for noting corrections as a result of an incident, etc.
                description: nil,
                # An ISO 8601 format date that identifies the origination credit block to expire
                expiry_date: nil,
                # User-specified key/value pairs for the resource. Individual keys can be removed
                # by setting the value to `null`, and the entire metadata mapping can be cleared
                # by setting `metadata` to `null`.
                metadata: nil,
                entry_type: :expiration_change
              )
              end

              sig do
                override.returns(
                  {
                    entry_type: Symbol,
                    target_expiry_date: Date,
                    amount: T.nilable(Float),
                    block_id: T.nilable(String),
                    currency: T.nilable(String),
                    description: T.nilable(String),
                    expiry_date: T.nilable(Time),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
              end
              def to_hash
              end
            end

            class Void < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Void,
                    Orb::Internal::AnyHash
                  )
                end

              # The number of credits to effect. Note that this is required for increment,
              # decrement, void, or undo operations.
              sig { returns(Float) }
              attr_accessor :amount

              # The ID of the block to void.
              sig { returns(String) }
              attr_accessor :block_id

              sig { returns(Symbol) }
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

              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
              attr_accessor :metadata

              # Can only be specified when `entry_type=void`. The reason for the void.
              sig do
                returns(
                  T.nilable(
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Void::VoidReason::OrSymbol
                  )
                )
              end
              attr_accessor :void_reason

              sig do
                params(
                  amount: Float,
                  block_id: String,
                  currency: T.nilable(String),
                  description: T.nilable(String),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  void_reason:
                    T.nilable(
                      Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Void::VoidReason::OrSymbol
                    ),
                  entry_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The number of credits to effect. Note that this is required for increment,
                # decrement, void, or undo operations.
                amount:,
                # The ID of the block to void.
                block_id:,
                # The currency or custom pricing unit to use for this ledger entry. If this is a
                # real-world currency, it must match the customer's invoicing currency.
                currency: nil,
                # Optional metadata that can be specified when adding ledger results via the API.
                # For example, this can be used to note an increment refers to trial credits, or
                # for noting corrections as a result of an incident, etc.
                description: nil,
                # User-specified key/value pairs for the resource. Individual keys can be removed
                # by setting the value to `null`, and the entire metadata mapping can be cleared
                # by setting `metadata` to `null`.
                metadata: nil,
                # Can only be specified when `entry_type=void`. The reason for the void.
                void_reason: nil,
                entry_type: :void
              )
              end

              sig do
                override.returns(
                  {
                    amount: Float,
                    block_id: String,
                    entry_type: Symbol,
                    currency: T.nilable(String),
                    description: T.nilable(String),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    void_reason:
                      T.nilable(
                        Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Void::VoidReason::OrSymbol
                      )
                  }
                )
              end
              def to_hash
              end

              # Can only be specified when `entry_type=void`. The reason for the void.
              module VoidReason
                extend Orb::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Void::VoidReason
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                REFUND =
                  T.let(
                    :refund,
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Void::VoidReason::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Void::VoidReason::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Amendment < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Amendment,
                    Orb::Internal::AnyHash
                  )
                end

              # The number of credits to effect. Note that this is required for increment,
              # decrement or void operations.
              sig { returns(Float) }
              attr_accessor :amount

              # The ID of the block to reverse a decrement from.
              sig { returns(String) }
              attr_accessor :block_id

              sig { returns(Symbol) }
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

              # User-specified key/value pairs for the resource. Individual keys can be removed
              # by setting the value to `null`, and the entire metadata mapping can be cleared
              # by setting `metadata` to `null`.
              sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
              attr_accessor :metadata

              sig do
                params(
                  amount: Float,
                  block_id: String,
                  currency: T.nilable(String),
                  description: T.nilable(String),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  entry_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The number of credits to effect. Note that this is required for increment,
                # decrement or void operations.
                amount:,
                # The ID of the block to reverse a decrement from.
                block_id:,
                # The currency or custom pricing unit to use for this ledger entry. If this is a
                # real-world currency, it must match the customer's invoicing currency.
                currency: nil,
                # Optional metadata that can be specified when adding ledger results via the API.
                # For example, this can be used to note an increment refers to trial credits, or
                # for noting corrections as a result of an incident, etc.
                description: nil,
                # User-specified key/value pairs for the resource. Individual keys can be removed
                # by setting the value to `null`, and the entire metadata mapping can be cleared
                # by setting `metadata` to `null`.
                metadata: nil,
                entry_type: :amendment
              )
              end

              sig do
                override.returns(
                  {
                    amount: Float,
                    block_id: String,
                    entry_type: Symbol,
                    currency: T.nilable(String),
                    description: T.nilable(String),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
                  }
                )
              end
              def to_hash
              end
            end

            sig do
              override.returns(
                T::Array[
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
