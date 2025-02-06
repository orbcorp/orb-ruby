# typed: strong

module Orb
  module Models
    module Customers
      class BalanceTransactionCreateParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        Shape = T.type_alias do
          T.all({amount: String, type: Symbol, description: T.nilable(String)}, Orb::RequestParameters::Shape)
        end

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
            request_options: Orb::RequestOpts
          ).void
        end
        def initialize(amount:, type:, description: nil, request_options: {}); end

        sig { returns(Orb::Models::Customers::BalanceTransactionCreateParams::Shape) }
        def to_h; end

        class Type < Orb::Enum
          abstract!

          INCREMENT = :increment
          DECREMENT = :decrement

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
