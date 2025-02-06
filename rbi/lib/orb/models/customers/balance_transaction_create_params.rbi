# typed: strong

module Orb
  module Models
    module Customers
      class BalanceTransactionCreateParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        sig { returns(String) }
        attr_accessor :amount

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig do
          params(
            amount: String,
            type: Symbol,
            description: T.nilable(String),
            request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
          ).void
        end
        def initialize(amount:, type:, description: nil, request_options: {})
        end

        sig do
          override.returns(
            {
              amount: String,
              type: Symbol,
              description: T.nilable(String),
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Type < Orb::Enum
          abstract!

          INCREMENT = :increment
          DECREMENT = :decrement

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end
      end
    end
  end
end
