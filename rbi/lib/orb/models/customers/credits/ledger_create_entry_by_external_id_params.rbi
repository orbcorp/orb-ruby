# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class LedgerCreateEntryByExternalIDParams < Orb::BaseModel
          extend Orb::RequestParameters::Converter
          include Orb::RequestParameters

          sig { returns(Float) }
          attr_accessor :amount

          sig { returns(Symbol) }
          attr_accessor :entry_type

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { returns(T.nilable(Time)) }
          attr_accessor :effective_date

          sig { returns(T.nilable(Time)) }
          attr_accessor :expiry_date

          sig do
            returns(T.nilable(Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDParams::InvoiceSettings))
          end
          attr_accessor :invoice_settings

          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig { returns(T.nilable(String)) }
          attr_accessor :per_unit_cost_basis

          sig { returns(Date) }
          attr_accessor :target_expiry_date

          sig { returns(String) }
          attr_accessor :block_id

          sig { returns(T.nilable(Symbol)) }
          attr_accessor :void_reason

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
            ).void
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
            override.returns(
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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end

          class InvoiceSettings < Orb::BaseModel
            sig { returns(T::Boolean) }
            attr_accessor :auto_collection

            sig { returns(Integer) }
            attr_accessor :net_terms

            sig { returns(T.nilable(String)) }
            attr_accessor :memo

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :require_successful_payment

            sig { params(require_successful_payment: T::Boolean).void }
            attr_writer :require_successful_payment

            sig do
              params(
                auto_collection: T::Boolean,
                net_terms: Integer,
                memo: T.nilable(String),
                require_successful_payment: T::Boolean
              ).void
            end
            def initialize(auto_collection:, net_terms:, memo: nil, require_successful_payment: nil)
            end

            sig do
              override.returns(
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

            sig { override.returns(T::Array[Symbol]) }
            def self.values
            end
          end
        end
      end
    end
  end
end
