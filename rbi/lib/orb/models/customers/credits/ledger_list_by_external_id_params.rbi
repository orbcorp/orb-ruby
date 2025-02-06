# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class LedgerListByExternalIDParams < Orb::BaseModel
          extend Orb::RequestParameters::Converter
          include Orb::RequestParameters

          sig { returns(T.nilable(Time)) }
          attr_accessor :created_at_gt

          sig { returns(T.nilable(Time)) }
          attr_accessor :created_at_gte

          sig { returns(T.nilable(Time)) }
          attr_accessor :created_at_lt

          sig { returns(T.nilable(Time)) }
          attr_accessor :created_at_lte

          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :cursor

          sig { returns(T.nilable(Symbol)) }
          attr_accessor :entry_status

          sig { returns(T.nilable(Symbol)) }
          attr_accessor :entry_type

          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig { returns(T.nilable(String)) }
          attr_accessor :minimum_amount

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
            ).void
          end
          def initialize(
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
          ); end

          sig do
            override.returns(
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
          def to_hash; end

          class EntryStatus < Orb::Enum
            abstract!

            COMMITTED = T.let(:committed, T.nilable(Symbol))
            PENDING = T.let(:pending, T.nilable(Symbol))

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
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

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end
      end
    end
  end
end
