# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class TopUpCreateResponse < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::Customers::Credits::TopUpCreateResponse,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # The amount to increment when the threshold is reached.
          sig { returns(String) }
          attr_accessor :amount

          # The currency or custom pricing unit to use for this top-up. If this is a
          # real-world currency, it must match the customer's invoicing currency.
          sig { returns(String) }
          attr_accessor :currency

          # Settings for invoices generated by triggered top-ups.
          sig { returns(Orb::Customers::Credits::TopUpInvoiceSettings) }
          attr_reader :invoice_settings

          sig do
            params(
              invoice_settings:
                Orb::Customers::Credits::TopUpInvoiceSettings::OrHash
            ).void
          end
          attr_writer :invoice_settings

          # How much, in the customer's currency, to charge for each unit.
          sig { returns(String) }
          attr_accessor :per_unit_cost_basis

          # The threshold at which to trigger the top-up. If the balance is at or below this
          # threshold, the top-up will be triggered.
          sig { returns(String) }
          attr_accessor :threshold

          # The number of days or months after which the top-up expires. If unspecified, it
          # does not expire.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expires_after

          # The unit of expires_after.
          sig do
            returns(
              T.nilable(
                Orb::Models::Customers::Credits::TopUpCreateResponse::ExpiresAfterUnit::TaggedSymbol
              )
            )
          end
          attr_accessor :expires_after_unit

          sig do
            params(
              id: String,
              amount: String,
              currency: String,
              invoice_settings:
                Orb::Customers::Credits::TopUpInvoiceSettings::OrHash,
              per_unit_cost_basis: String,
              threshold: String,
              expires_after: T.nilable(Integer),
              expires_after_unit:
                T.nilable(
                  Orb::Models::Customers::Credits::TopUpCreateResponse::ExpiresAfterUnit::OrSymbol
                )
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # The amount to increment when the threshold is reached.
            amount:,
            # The currency or custom pricing unit to use for this top-up. If this is a
            # real-world currency, it must match the customer's invoicing currency.
            currency:,
            # Settings for invoices generated by triggered top-ups.
            invoice_settings:,
            # How much, in the customer's currency, to charge for each unit.
            per_unit_cost_basis:,
            # The threshold at which to trigger the top-up. If the balance is at or below this
            # threshold, the top-up will be triggered.
            threshold:,
            # The number of days or months after which the top-up expires. If unspecified, it
            # does not expire.
            expires_after: nil,
            # The unit of expires_after.
            expires_after_unit: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount: String,
                currency: String,
                invoice_settings: Orb::Customers::Credits::TopUpInvoiceSettings,
                per_unit_cost_basis: String,
                threshold: String,
                expires_after: T.nilable(Integer),
                expires_after_unit:
                  T.nilable(
                    Orb::Models::Customers::Credits::TopUpCreateResponse::ExpiresAfterUnit::TaggedSymbol
                  )
              }
            )
          end
          def to_hash
          end

          # The unit of expires_after.
          module ExpiresAfterUnit
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Models::Customers::Credits::TopUpCreateResponse::ExpiresAfterUnit
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DAY =
              T.let(
                :day,
                Orb::Models::Customers::Credits::TopUpCreateResponse::ExpiresAfterUnit::TaggedSymbol
              )
            MONTH =
              T.let(
                :month,
                Orb::Models::Customers::Credits::TopUpCreateResponse::ExpiresAfterUnit::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Models::Customers::Credits::TopUpCreateResponse::ExpiresAfterUnit::TaggedSymbol
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
