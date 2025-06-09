# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class TopUpInvoiceSettings < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Customers::Credits::TopUpInvoiceSettings,
                Orb::Internal::AnyHash
              )
            end

          # Whether the credits purchase invoice should auto collect with the customer's
          # saved payment method.
          sig { returns(T::Boolean) }
          attr_accessor :auto_collection

          # The net terms determines the difference between the invoice date and the issue
          # date for the invoice. If you intend the invoice to be due on issue, set this
          # to 0.
          sig { returns(Integer) }
          attr_accessor :net_terms

          # An optional memo to display on the invoice.
          sig { returns(T.nilable(String)) }
          attr_accessor :memo

          # When true, credit blocks created by this top-up will require that the
          # corresponding invoice is paid before they are drawn down from. If any topup
          # block is pending payment, further automatic top-ups will be paused until the
          # invoice is paid or voided.
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
            ).returns(T.attached_class)
          end
          def self.new(
            # Whether the credits purchase invoice should auto collect with the customer's
            # saved payment method.
            auto_collection:,
            # The net terms determines the difference between the invoice date and the issue
            # date for the invoice. If you intend the invoice to be due on issue, set this
            # to 0.
            net_terms:,
            # An optional memo to display on the invoice.
            memo: nil,
            # When true, credit blocks created by this top-up will require that the
            # corresponding invoice is paid before they are drawn down from. If any topup
            # block is pending payment, further automatic top-ups will be paused until the
            # invoice is paid or voided.
            require_successful_payment: nil
          )
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
      end
    end
  end
end
