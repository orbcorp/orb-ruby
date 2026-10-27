# typed: strong

module Orb
  module Models
    module Customers
      class CreditFetchBalanceParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Orb::Customers::CreditFetchBalanceParams,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :customer_id

        # The ledger currency or custom pricing unit to use.
        sig { returns(T.nilable(String)) }
        attr_accessor :currency

        sig do
          params(
            customer_id: String,
            currency: T.nilable(String),
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          customer_id:,
          # The ledger currency or custom pricing unit to use.
          currency: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              customer_id: String,
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
