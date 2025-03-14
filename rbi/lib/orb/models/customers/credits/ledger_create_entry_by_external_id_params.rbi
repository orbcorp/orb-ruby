# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class LedgerCreateEntryByExternalIDParams < Orb::BaseModel
          extend Orb::RequestParameters::Converter
          include Orb::RequestParameters

          # The number of credits to effect. Note that this is required for increment,
          #   decrement or void operations.
          sig { returns(Float) }
          def amount
          end

          sig { params(_: Float).returns(Float) }
          def amount=(_)
          end

          sig { returns(Symbol) }
          def entry_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def entry_type=(_)
          end

          # The currency or custom pricing unit to use for this ledger entry. If this is a
          #   real-world currency, it must match the customer's invoicing currency.
          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          # Optional metadata that can be specified when adding ledger results via the API.
          #   For example, this can be used to note an increment refers to trial credits, or
          #   for noting corrections as a result of an incident, etc.
          sig { returns(T.nilable(String)) }
          def description
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def description=(_)
          end

          # An ISO 8601 format date that denotes when this credit balance should become
          #   available for use.
          sig { returns(T.nilable(Time)) }
          def effective_date
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def effective_date=(_)
          end

          # An ISO 8601 format date that identifies the origination credit block to expire
          sig { returns(T.nilable(Time)) }
          def expiry_date
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def expiry_date=(_)
          end

          # Passing `invoice_settings` automatically generates an invoice for the newly
          #   added credits. If `invoice_settings` is passed, you must specify
          #   per_unit_cost_basis, as the calculation of the invoice total is done on that
          #   basis.
          sig { returns(T.nilable(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDParams::InvoiceSettings)) }
          def invoice_settings
          end

          sig do
            params(
              _: T.nilable(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDParams::InvoiceSettings)
            )
              .returns(T.nilable(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDParams::InvoiceSettings))
          end
          def invoice_settings=(_)
          end

          # User-specified key/value pairs for the resource. Individual keys can be removed
          #   by setting the value to `null`, and the entire metadata mapping can be cleared
          #   by setting `metadata` to `null`.
          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          def metadata
          end

          sig do
            params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
              .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
          end
          def metadata=(_)
          end

          # Can only be specified when entry_type=increment. How much, in the customer's
          #   currency, a customer paid for a single credit in this block
          sig { returns(T.nilable(String)) }
          def per_unit_cost_basis
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def per_unit_cost_basis=(_)
          end

          # A future date (specified in YYYY-MM-DD format) used for expiration change,
          #   denoting when credits transferred (as part of a partial block expiration) should
          #   expire.
          sig { returns(Date) }
          def target_expiry_date
          end

          sig { params(_: Date).returns(Date) }
          def target_expiry_date=(_)
          end

          # The ID of the block to reverse a decrement from.
          sig { returns(String) }
          def block_id
          end

          sig { params(_: String).returns(String) }
          def block_id=(_)
          end

          # Can only be specified when `entry_type=void`. The reason for the void.
          sig { returns(T.nilable(Symbol)) }
          def void_reason
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def void_reason=(_)
          end

          sig do
            params(
              amount: Float,
              entry_type: Symbol,
              expiry_date: T.nilable(Time),
              target_expiry_date: Date,
              block_id: String,
              currency: T.nilable(String),
              description: T.nilable(String),
              effective_date: T.nilable(Time),
              invoice_settings: T.nilable(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDParams::InvoiceSettings),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              per_unit_cost_basis: T.nilable(String),
              void_reason: T.nilable(Symbol),
              request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(
            amount:,
            entry_type:,
            expiry_date:,
            target_expiry_date:,
            block_id:,
            currency: nil,
            description: nil,
            effective_date: nil,
            invoice_settings: nil,
            metadata: nil,
            per_unit_cost_basis: nil,
            void_reason: nil,
            request_options: {}
          )
          end

          sig do
            override
              .returns(
                {
                  amount: Float,
                  entry_type: Symbol,
                  currency: T.nilable(String),
                  description: T.nilable(String),
                  effective_date: T.nilable(Time),
                  expiry_date: T.nilable(Time),
                  invoice_settings: T.nilable(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDParams::InvoiceSettings),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  per_unit_cost_basis: T.nilable(String),
                  target_expiry_date: Date,
                  block_id: String,
                  void_reason: T.nilable(Symbol),
                  request_options: Orb::RequestOptions
                }
              )
          end
          def to_hash
          end

          class EntryType < Orb::Enum
            abstract!

            AMENDMENT = :amendment

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class InvoiceSettings < Orb::BaseModel
            # Whether the credits purchase invoice should auto collect with the customer's
            #   saved payment method.
            sig { returns(T::Boolean) }
            def auto_collection
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def auto_collection=(_)
            end

            # The net terms determines the difference between the invoice date and the issue
            #   date for the invoice. If you intend the invoice to be due on issue, set this
            #   to 0.
            sig { returns(Integer) }
            def net_terms
            end

            sig { params(_: Integer).returns(Integer) }
            def net_terms=(_)
            end

            # An optional memo to display on the invoice.
            sig { returns(T.nilable(String)) }
            def memo
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def memo=(_)
            end

            # If true, the new credit block will require that the corresponding invoice is
            #   paid before it can be drawn down from.
            sig { returns(T.nilable(T::Boolean)) }
            def require_successful_payment
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def require_successful_payment=(_)
            end

            # Passing `invoice_settings` automatically generates an invoice for the newly
            #   added credits. If `invoice_settings` is passed, you must specify
            #   per_unit_cost_basis, as the calculation of the invoice total is done on that
            #   basis.
            sig do
              params(
                auto_collection: T::Boolean,
                net_terms: Integer,
                memo: T.nilable(String),
                require_successful_payment: T::Boolean
              )
                .returns(T.attached_class)
            end
            def self.new(auto_collection:, net_terms:, memo: nil, require_successful_payment: nil)
            end

            sig do
              override
                .returns(
                  {
                    auto_collection: T::Boolean,
                    net_terms: Integer,
                    memo: T.nilable(String),
                    require_successful_payment: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          # Can only be specified when `entry_type=void`. The reason for the void.
          class VoidReason < Orb::Enum
            abstract!

            REFUND = T.let(:refund, T.nilable(Symbol))

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end
      end
    end
  end
end
