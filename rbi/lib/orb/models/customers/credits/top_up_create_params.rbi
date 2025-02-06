# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class TopUpCreateParams < Orb::BaseModel
          extend Orb::RequestParameters::Converter
          include Orb::RequestParameters

          sig { returns(String) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :currency

          sig { returns(Orb::Models::Customers::Credits::TopUpCreateParams::InvoiceSettings) }
          attr_accessor :invoice_settings

          sig { returns(String) }
          attr_accessor :per_unit_cost_basis

          sig { returns(String) }
          attr_accessor :threshold

          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_after

          sig { returns(T.nilable(Symbol)) }
          attr_accessor :expires_after_unit

          sig do
            params(
              amount: String,
              currency: String,
              invoice_settings: Orb::Models::Customers::Credits::TopUpCreateParams::InvoiceSettings,
              per_unit_cost_basis: String,
              threshold: String,
              expires_after: T.nilable(Integer),
              expires_after_unit: T.nilable(Symbol),
              request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
            ).void
          end
          def initialize(
            amount:,
            currency:,
            invoice_settings:,
            per_unit_cost_basis:,
            threshold:,
            expires_after: nil,
            expires_after_unit: nil,
            request_options: {}
          ); end

          sig do
            override.returns(
              {
                amount: String,
                currency: String,
                invoice_settings: Orb::Models::Customers::Credits::TopUpCreateParams::InvoiceSettings,
                per_unit_cost_basis: String,
                threshold: String,
                expires_after: T.nilable(Integer),
                expires_after_unit: T.nilable(Symbol),
                request_options: Orb::RequestOptions
              }
            )
          end
          def to_hash; end

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
            def initialize(auto_collection:, net_terms:, memo: nil, require_successful_payment: nil); end

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
            def to_hash; end
          end

          class ExpiresAfterUnit < Orb::Enum
            abstract!

            DAY = T.let(:day, T.nilable(Symbol))
            MONTH = T.let(:month, T.nilable(Symbol))

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end
      end
    end
  end
end
