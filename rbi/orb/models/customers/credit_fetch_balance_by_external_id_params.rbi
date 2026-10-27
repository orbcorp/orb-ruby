# typed: strong

module Orb
  module Models
    module Customers
      class CreditFetchBalanceByExternalIDParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Orb::Customers::CreditFetchBalanceByExternalIDParams,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :external_customer_id

        # The ledger currency or custom pricing unit to use.
        sig { returns(T.nilable(String)) }
        attr_accessor :currency

        sig do
          params(
            external_customer_id: String,
            currency: T.nilable(String),
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          external_customer_id:,
          # The ledger currency or custom pricing unit to use.
          currency: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              external_customer_id: String,
              currency: T.nilable(String),
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
