# typed: strong

module Orb
  module Models
    module Customers
      class CreditListByExternalIDParams < Orb::BaseModel
        extend Orb::RequestParameters::Converter
        include Orb::RequestParameters

        sig { returns(T.nilable(String)) }
        def currency
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def currency=(_)
        end

        sig { returns(T.nilable(String)) }
        def cursor
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def cursor=(_)
        end

        sig { returns(T.nilable(T::Boolean)) }
        def include_all_blocks
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def include_all_blocks=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def limit
        end

        sig { params(_: Integer).returns(Integer) }
        def limit=(_)
        end

        sig do
          params(
            currency: T.nilable(String),
            cursor: T.nilable(String),
            include_all_blocks: T::Boolean,
            limit: Integer,
            request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
          )
            .void
        end
        def initialize(currency: nil, cursor: nil, include_all_blocks: nil, limit: nil, request_options: {})
        end

        sig do
          override
            .returns(
              {
                currency: T.nilable(String),
                cursor: T.nilable(String),
                include_all_blocks: T::Boolean,
                limit: Integer,
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
