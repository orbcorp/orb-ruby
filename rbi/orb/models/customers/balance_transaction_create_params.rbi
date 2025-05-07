# typed: strong

module Orb
  module Models
    module Customers
      class BalanceTransactionCreateParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

        sig { returns(String) }
        attr_accessor :amount

        sig do
          returns(
            Orb::Customers::BalanceTransactionCreateParams::Type::OrSymbol
          )
        end
        attr_accessor :type

        # An optional description that can be specified around this entry.
        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig do
          params(
            amount: String,
            type:
              Orb::Customers::BalanceTransactionCreateParams::Type::OrSymbol,
            description: T.nilable(String),
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          amount:,
          type:,
          # An optional description that can be specified around this entry.
          description: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              amount: String,
              type:
                Orb::Customers::BalanceTransactionCreateParams::Type::OrSymbol,
              description: T.nilable(String),
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Type
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Customers::BalanceTransactionCreateParams::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCREMENT =
            T.let(
              :increment,
              Orb::Customers::BalanceTransactionCreateParams::Type::TaggedSymbol
            )
          DECREMENT =
            T.let(
              :decrement,
              Orb::Customers::BalanceTransactionCreateParams::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Customers::BalanceTransactionCreateParams::Type::TaggedSymbol
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
