# typed: strong

module Orb
  module Models
    module Customers
      class BalanceTransactionCreateParams < Orb::BaseModel
        extend Orb::Type::RequestParameters::Converter
        include Orb::RequestParameters

        sig { returns(String) }
        attr_accessor :amount

        sig { returns(Orb::Models::Customers::BalanceTransactionCreateParams::Type::OrSymbol) }
        attr_accessor :type

        # An optional description that can be specified around this entry.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig do
          params(
            amount: String,
            type: Orb::Models::Customers::BalanceTransactionCreateParams::Type::OrSymbol,
            description: T.nilable(String),
            request_options: T.any(Orb::RequestOptions, Orb::Util::AnyHash)
          )
            .returns(T.attached_class)
        end
        def self.new(amount:, type:, description: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                amount: String,
                type: Orb::Models::Customers::BalanceTransactionCreateParams::Type::OrSymbol,
                description: T.nilable(String),
                request_options: Orb::RequestOptions
              }
            )
        end
        def to_hash
        end

        module Type
          extend Orb::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Models::Customers::BalanceTransactionCreateParams::Type) }
          OrSymbol =
            T.type_alias { T.any(Symbol, String, Orb::Models::Customers::BalanceTransactionCreateParams::Type::TaggedSymbol) }

          INCREMENT = T.let(:increment, Orb::Models::Customers::BalanceTransactionCreateParams::Type::TaggedSymbol)
          DECREMENT = T.let(:decrement, Orb::Models::Customers::BalanceTransactionCreateParams::Type::TaggedSymbol)

          sig { override.returns(T::Array[Orb::Models::Customers::BalanceTransactionCreateParams::Type::TaggedSymbol]) }
          def self.values
          end
        end
      end
    end
  end
end
