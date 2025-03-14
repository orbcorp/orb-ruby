# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class LedgerListParams < Orb::BaseModel
          extend Orb::RequestParameters::Converter
          include Orb::RequestParameters

          sig { returns(T.nilable(Time)) }
          def created_at_gt
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def created_at_gt=(_)
          end

          sig { returns(T.nilable(Time)) }
          def created_at_gte
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def created_at_gte=(_)
          end

          sig { returns(T.nilable(Time)) }
          def created_at_lt
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def created_at_lt=(_)
          end

          sig { returns(T.nilable(Time)) }
          def created_at_lte
          end

          sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
          def created_at_lte=(_)
          end

          # The ledger currency or custom pricing unit to use.
          sig { returns(T.nilable(String)) }
          def currency
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def currency=(_)
          end

          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          #   from the initial request.
          sig { returns(T.nilable(String)) }
          def cursor
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def cursor=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def entry_status
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def entry_status=(_)
          end

          sig { returns(T.nilable(Symbol)) }
          def entry_type
          end

          sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
          def entry_type=(_)
          end

          # The number of items to fetch. Defaults to 20.
          sig { returns(T.nilable(Integer)) }
          def limit
          end

          sig { params(_: Integer).returns(Integer) }
          def limit=(_)
          end

          sig { returns(T.nilable(String)) }
          def minimum_amount
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def minimum_amount=(_)
          end

          sig do
            params(
              created_at_gt: T.nilable(Time),
              created_at_gte: T.nilable(Time),
              created_at_lt: T.nilable(Time),
              created_at_lte: T.nilable(Time),
              currency: T.nilable(String),
              cursor: T.nilable(String),
              entry_status: T.nilable(Symbol),
              entry_type: T.nilable(Symbol),
              limit: Integer,
              minimum_amount: T.nilable(String),
              request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
            )
              .returns(T.attached_class)
          end
          def self.new(
            created_at_gt: nil,
            created_at_gte: nil,
            created_at_lt: nil,
            created_at_lte: nil,
            currency: nil,
            cursor: nil,
            entry_status: nil,
            entry_type: nil,
            limit: nil,
            minimum_amount: nil,
            request_options: {}
          )
          end

          sig do
            override
              .returns(
                {
                  created_at_gt: T.nilable(Time),
                  created_at_gte: T.nilable(Time),
                  created_at_lt: T.nilable(Time),
                  created_at_lte: T.nilable(Time),
                  currency: T.nilable(String),
                  cursor: T.nilable(String),
                  entry_status: T.nilable(Symbol),
                  entry_type: T.nilable(Symbol),
                  limit: Integer,
                  minimum_amount: T.nilable(String),
                  request_options: Orb::RequestOptions
                }
              )
          end
          def to_hash
          end

          class EntryStatus < Orb::Enum
            abstract!

            COMMITTED = T.let(:committed, T.nilable(Symbol))
            PENDING = T.let(:pending, T.nilable(Symbol))

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end

          class EntryType < Orb::Enum
            abstract!

            INCREMENT = T.let(:increment, T.nilable(Symbol))
            DECREMENT = T.let(:decrement, T.nilable(Symbol))
            EXPIRATION_CHANGE = T.let(:expiration_change, T.nilable(Symbol))
            CREDIT_BLOCK_EXPIRY = T.let(:credit_block_expiry, T.nilable(Symbol))
            VOID = T.let(:void, T.nilable(Symbol))
            VOID_INITIATED = T.let(:void_initiated, T.nilable(Symbol))
            AMENDMENT = T.let(:amendment, T.nilable(Symbol))

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end
      end
    end
  end
end
