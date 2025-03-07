# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class LedgerCreateEntryParams < Orb::BaseModel
          extend Orb::RequestParameters::Converter
          include Orb::RequestParameters

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

          sig { returns(T.nilable(Orb::Models::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings)) }
          def invoice_settings
          end

          sig do
            params(_: T.nilable(Orb::Models::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings))
              .returns(T.nilable(Orb::Models::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings))
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

          sig { returns(Date) }
          def target_expiry_date
          end

          sig { params(_: Date).returns(Date) }
          def target_expiry_date=(_)
          end

          sig { returns(String) }
          def block_id
          end

          sig { params(_: String).returns(String) }
          def block_id=(_)
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
              entry_type: Symbol,
              expiry_date: T.nilable(Time),
              target_expiry_date: Date,
              block_id: String,
              currency: T.nilable(String),
              description: T.nilable(String),
              effective_date: T.nilable(Time),
              invoice_settings: T.nilable(Orb::Models::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              per_unit_cost_basis: T.nilable(String),
              void_reason: T.nilable(Symbol),
              request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(
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
                  invoice_settings: T.nilable(Orb::Models::Customers::Credits::LedgerCreateEntryParams::InvoiceSettings),
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
