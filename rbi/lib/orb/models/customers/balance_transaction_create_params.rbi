# typed: strong

module Orb
  module Models
    module Customers
      class BalanceTransactionCreateParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        sig { returns(String) }
        def amount
        end

        sig { params(_: String).returns(String) }
        def amount=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        # An optional description that can be specified around this entry.
        sig { returns(T.nilable(String)) }
        def description
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_)
        end

        sig do
          params(
            amount: String,
            type: Symbol,
            description: T.nilable(String),
            request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
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

          Value = type_template(:out) { {fixed: Symbol} }

          INCREMENT = :increment
          DECREMENT = :decrement
        end
      end
    end
  end
end
