# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class TopUpListByExternalIDResponse < Orb::Internal::Type::BaseModel
          sig { returns(String) }
          attr_accessor :id

          # The amount to increment when the threshold is reached.
          sig { returns(String) }
          attr_accessor :amount

          # The currency or custom pricing unit to use for this top-up. If this is a
          #   real-world currency, it must match the customer's invoicing currency.
          sig { returns(String) }
          attr_accessor :currency

          # Settings for invoices generated by triggered top-ups.
          sig { returns(Orb::Models::Customers::Credits::TopUpListByExternalIDResponse::InvoiceSettings) }
          attr_reader :invoice_settings

          sig do
            params(
              invoice_settings: T.any(
                Orb::Models::Customers::Credits::TopUpListByExternalIDResponse::InvoiceSettings,
                Orb::Internal::AnyHash
              )
            )
              .void
          end
          attr_writer :invoice_settings

          # How much, in the customer's currency, to charge for each unit.
          sig { returns(String) }
          attr_accessor :per_unit_cost_basis

          # The threshold at which to trigger the top-up. If the balance is at or below this
          #   threshold, the top-up will be triggered.
          sig { returns(String) }
          attr_accessor :threshold

          # The number of days or months after which the top-up expires. If unspecified, it
          #   does not expire.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_after

          # The unit of expires_after.
          sig do
            returns(
              T.nilable(Orb::Models::Customers::Credits::TopUpListByExternalIDResponse::ExpiresAfterUnit::TaggedSymbol)
            )
          end
          attr_accessor :expires_after_unit

          sig do
            params(
              id: String,
              amount: String,
              currency: String,
              invoice_settings: T.any(
                Orb::Models::Customers::Credits::TopUpListByExternalIDResponse::InvoiceSettings,
                Orb::Internal::AnyHash
              ),
              per_unit_cost_basis: String,
              threshold: String,
              expires_after: T.nilable(Integer),
              expires_after_unit: T.nilable(Orb::Models::Customers::Credits::TopUpListByExternalIDResponse::ExpiresAfterUnit::OrSymbol)
            )
              .returns(T.attached_class)
          end
          def self.new(
            id:,
            amount:,
            currency:,
            invoice_settings:,
            per_unit_cost_basis:,
            threshold:,
            expires_after: nil,
            expires_after_unit: nil
          )
          end

          sig do
            override
              .returns(
                {
                  id: String,
                  amount: String,
                  currency: String,
                  invoice_settings: Orb::Models::Customers::Credits::TopUpListByExternalIDResponse::InvoiceSettings,
                  per_unit_cost_basis: String,
                  threshold: String,
                  expires_after: T.nilable(Integer),
                  expires_after_unit: T.nilable(Orb::Models::Customers::Credits::TopUpListByExternalIDResponse::ExpiresAfterUnit::TaggedSymbol)
                }
              )
          end
          def to_hash
          end

          class InvoiceSettings < Orb::Internal::Type::BaseModel
            # Whether the credits purchase invoice should auto collect with the customer's
            #   saved payment method.
            sig { returns(T::Boolean) }
            attr_accessor :auto_collection

            # The net terms determines the difference between the invoice date and the issue
            #   date for the invoice. If you intend the invoice to be due on issue, set this
            #   to 0.
            sig { returns(Integer) }
            attr_accessor :net_terms

            # An optional memo to display on the invoice.
            sig { returns(T.nilable(String)) }
            attr_accessor :memo

            # If true, new credit blocks created by this top-up will require that the
            #   corresponding invoice is paid before they can be drawn down from.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :require_successful_payment

            sig { params(require_successful_payment: T::Boolean).void }
            attr_writer :require_successful_payment

            # Settings for invoices generated by triggered top-ups.
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

          # The unit of expires_after.
          module ExpiresAfterUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Customers::Credits::TopUpListByExternalIDResponse::ExpiresAfterUnit) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Customers::Credits::TopUpListByExternalIDResponse::ExpiresAfterUnit::TaggedSymbol
                )
              end

            DAY =
              T.let(
                :day,
                Orb::Models::Customers::Credits::TopUpListByExternalIDResponse::ExpiresAfterUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Customers::Credits::TopUpListByExternalIDResponse::ExpiresAfterUnit::TaggedSymbol
              )

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Customers::Credits::TopUpListByExternalIDResponse::ExpiresAfterUnit::TaggedSymbol]
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
