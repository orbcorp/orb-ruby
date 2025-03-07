# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class TopUpCreateParams < Orb::BaseModel
          extend Orb::RequestParameters::Converter
          include Orb::RequestParameters

          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { returns(Orb::Models::Customers::Credits::TopUpCreateParams::InvoiceSettings) }
          def invoice_settings
          end

          sig do
            params(_: Orb::Models::Customers::Credits::TopUpCreateParams::InvoiceSettings)
              .returns(Orb::Models::Customers::Credits::TopUpCreateParams::InvoiceSettings)
          end
          def invoice_settings=(_)
          end

          sig { returns(String) }
          def per_unit_cost_basis
          end

          sig { params(_: String).returns(String) }
          def per_unit_cost_basis=(_)
          end

          sig { returns(String) }
          def threshold
          end

          sig { params(_: String).returns(String) }
          def threshold=(_)
          end

          sig { returns(T.nilable(Time)) }
          def active_from
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def active_from=(_)
          end

          sig { returns(T.nilable(Integer)) }
          def expires_after
          end

          sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def expires_after=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def expires_after_unit
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def expires_after_unit=(_)
          end

          sig do
            params(
              amount: String,
              currency: String,
              invoice_settings: Orb::Models::Customers::Credits::TopUpCreateParams::InvoiceSettings,
              per_unit_cost_basis: String,
              threshold: String,
              active_from: T.nilable(Time),
              expires_after: T.nilable(Integer),
              expires_after_unit: T.nilable(Symbol),
              request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .void
          end
          def initialize(
            amount:,
            currency:,
            invoice_settings:,
            per_unit_cost_basis:,
            threshold:,
            active_from: nil,
            expires_after: nil,
            expires_after_unit: nil,
            request_options: {}
          )
          end

          sig do
            override
              .returns(
                {
                  amount: String,
                  currency: String,
                  invoice_settings: Orb::Models::Customers::Credits::TopUpCreateParams::InvoiceSettings,
                  per_unit_cost_basis: String,
                  threshold: String,
                  active_from: T.nilable(Time),
                  expires_after: T.nilable(Integer),
                  expires_after_unit: T.nilable(Symbol),
                  request_options: Orb::RequestOptions
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

          class ExpiresAfterUnit < Orb::Enum
            abstract!

            DAY = T.let(:day, T.nilable(Symbol))
            MONTH = T.let(:month, T.nilable(Symbol))

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
