# typed: strong

module Orb
  module Models
    class AddCreditLedgerEntryRequest < Orb::Union
      abstract!

      class AddIncrementCreditLedgerEntryRequestParams < Orb::BaseModel
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

        sig { returns(T.nilable(String)) }
        def currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        sig { returns(T.nilable(Time)) }
        def effective_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def effective_date=(_)
        end

        sig { returns(T.nilable(Time)) }
        def expiry_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def expiry_date=(_)
        end

        sig do
          returns(
            T.nilable(
              Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams::InvoiceSettings
            )
          )
        end
        def invoice_settings
        end

        sig do
          params(
            _: T.nilable(
              Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams::InvoiceSettings
            )
          )
            .returns(
              T.nilable(
                Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams::InvoiceSettings
              )
            )
        end
        def invoice_settings=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        def metadata
        end

        sig do
          params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
            .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
        end
        def metadata=(_)
        end

        sig { returns(T.nilable(String)) }
        def per_unit_cost_basis
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def per_unit_cost_basis=(_)
        end

        sig do
          params(
            amount: Float,
            currency: T.nilable(String),
            description: T.nilable(String),
            effective_date: T.nilable(Time),
            expiry_date: T.nilable(Time),
            invoice_settings: T.nilable(
              Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams::InvoiceSettings
            ),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            per_unit_cost_basis: T.nilable(String),
            entry_type: Symbol
          )
            .void
        end
        def initialize(
          amount:,
          currency: nil,
          description: nil,
          effective_date: nil,
          expiry_date: nil,
          invoice_settings: nil,
          metadata: nil,
          per_unit_cost_basis: nil,
          entry_type: :increment
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
                invoice_settings: T.nilable(
                  Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams::InvoiceSettings
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                per_unit_cost_basis: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class InvoiceSettings < Orb::BaseModel
          sig { returns(T::Boolean) }
          def auto_collection
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def auto_collection=(_)
          end

          sig { returns(Integer) }
          def net_terms
          end

          sig { params(_: Integer).returns(Integer) }
          def net_terms=(_)
          end

          sig { returns(T.nilable(String)) }
          def memo
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def memo=(_)
          end

          sig { returns(T.nilable(T::Boolean)) }
          def require_successful_payment
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def require_successful_payment=(_)
          end

          sig do
            params(
              auto_collection: T::Boolean,
              net_terms: Integer,
              memo: T.nilable(String),
              require_successful_payment: T::Boolean
            )
              .void
          end
          def initialize(auto_collection:, net_terms:, memo: nil, require_successful_payment: nil)
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
      end

      class AddDecrementCreditLedgerEntryRequestParams < Orb::BaseModel
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

        sig { returns(T.nilable(String)) }
        def currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        def metadata
        end

        sig do
          params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
            .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
        end
        def metadata=(_)
        end

        sig do
          params(
            amount: Float,
            currency: T.nilable(String),
            description: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            entry_type: Symbol
          )
            .void
        end
        def initialize(amount:, currency: nil, description: nil, metadata: nil, entry_type: :decrement)
        end

        sig do
          override
            .returns(
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

      class AddExpirationChangeCreditLedgerEntryRequestParams < Orb::BaseModel
        sig { returns(Symbol) }
        def entry_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def entry_type=(_)
        end

        sig { returns(T.nilable(Time)) }
        def expiry_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def expiry_date=(_)
        end

        sig { returns(Date) }
        def target_expiry_date
        end

        sig { params(_: Date).returns(Date) }
        def target_expiry_date=(_)
        end

        sig { returns(T.nilable(Float)) }
        def amount
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def block_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def block_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        def metadata
        end

        sig do
          params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
            .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
        end
        def metadata=(_)
        end

        sig do
          params(
            expiry_date: T.nilable(Time),
            target_expiry_date: Date,
            amount: T.nilable(Float),
            block_id: T.nilable(String),
            currency: T.nilable(String),
            description: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            entry_type: Symbol
          )
            .void
        end
        def initialize(
          expiry_date:,
          target_expiry_date:,
          amount: nil,
          block_id: nil,
          currency: nil,
          description: nil,
          metadata: nil,
          entry_type: :expiration_change
        )
        end

        sig do
          override
            .returns(
              {
                entry_type: Symbol,
                expiry_date: T.nilable(Time),
                target_expiry_date: Date,
                amount: T.nilable(Float),
                block_id: T.nilable(String),
                currency: T.nilable(String),
                description: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
              }
            )
        end
        def to_hash
        end
      end

      class AddVoidCreditLedgerEntryRequestParams < Orb::BaseModel
        sig { returns(Float) }
        def amount
        end

        sig { params(_: Float).returns(Float) }
        def amount=(_)
        end

        sig { returns(String) }
        def block_id
        end

        sig { params(_: String).returns(String) }
        def block_id=(_)
        end

        sig { returns(Symbol) }
        def entry_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def entry_type=(_)
        end

        sig { returns(T.nilable(String)) }
        def currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        def metadata
        end

        sig do
          params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
            .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
        end
        def metadata=(_)
        end

        sig { returns(T.nilable(Symbol)) }
        def void_reason
        end

        sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
        def void_reason=(_)
        end

        sig do
          params(
            amount: Float,
            block_id: String,
            currency: T.nilable(String),
            description: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            void_reason: T.nilable(Symbol),
            entry_type: Symbol
          )
            .void
        end
        def initialize(
          amount:,
          block_id:,
          currency: nil,
          description: nil,
          metadata: nil,
          void_reason: nil,
          entry_type: :void
        )
        end

        sig do
          override
            .returns(
              {
                amount: Float,
                block_id: String,
                entry_type: Symbol,
                currency: T.nilable(String),
                description: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                void_reason: T.nilable(Symbol)
              }
            )
        end
        def to_hash
        end

        class VoidReason < Orb::Enum
          abstract!

          REFUND = T.let(:refund, T.nilable(Symbol))

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end

      class AddAmendmentCreditLedgerEntryRequestParams < Orb::BaseModel
        sig { returns(Float) }
        def amount
        end

        sig { params(_: Float).returns(Float) }
        def amount=(_)
        end

        sig { returns(String) }
        def block_id
        end

        sig { params(_: String).returns(String) }
        def block_id=(_)
        end

        sig { returns(Symbol) }
        def entry_type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def entry_type=(_)
        end

        sig { returns(T.nilable(String)) }
        def currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_)
        end

        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
        def metadata
        end

        sig do
          params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
            .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
        end
        def metadata=(_)
        end

        sig do
          params(
            amount: Float,
            block_id: String,
            currency: T.nilable(String),
            description: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            entry_type: Symbol
          )
            .void
        end
        def initialize(
          amount:,
          block_id:,
          currency: nil,
          description: nil,
          metadata: nil,
          entry_type: :amendment
        )
        end

        sig do
          override
            .returns(
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
        override
          .returns(
            [[Symbol, Orb::Models::AddCreditLedgerEntryRequest::AddIncrementCreditLedgerEntryRequestParams], [Symbol, Orb::Models::AddCreditLedgerEntryRequest::AddDecrementCreditLedgerEntryRequestParams], [Symbol, Orb::Models::AddCreditLedgerEntryRequest::AddExpirationChangeCreditLedgerEntryRequestParams], [Symbol, Orb::Models::AddCreditLedgerEntryRequest::AddVoidCreditLedgerEntryRequestParams], [Symbol, Orb::Models::AddCreditLedgerEntryRequest::AddAmendmentCreditLedgerEntryRequestParams]]
          )
      end
      private_class_method def self.variants
      end
    end
  end
end
