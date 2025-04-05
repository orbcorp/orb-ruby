# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class LedgerListByExternalIDParams < Orb::Internal::Type::BaseModel
          extend Orb::Internal::Type::RequestParameters::Converter
          include Orb::Internal::Type::RequestParameters

          sig { returns(T.nilable(Time)) }
          attr_accessor :created_at_gt

          sig { returns(T.nilable(Time)) }
          attr_accessor :created_at_gte

          sig { returns(T.nilable(Time)) }
          attr_accessor :created_at_lt

          sig { returns(T.nilable(Time)) }
          attr_accessor :created_at_lte

          # The ledger currency or custom pricing unit to use.
          sig { returns(T.nilable(String)) }
          attr_accessor :currency

          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          #   from the initial request.
          sig { returns(T.nilable(String)) }
          attr_accessor :cursor

          sig { returns(T.nilable(Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryStatus::OrSymbol)) }
          attr_accessor :entry_status

          sig { returns(T.nilable(Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryType::OrSymbol)) }
          attr_accessor :entry_type

          # The number of items to fetch. Defaults to 20.
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
              entry_status: T.nilable(Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryStatus::OrSymbol),
              entry_type: T.nilable(Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryType::OrSymbol),
              limit: Integer,
              minimum_amount: T.nilable(String),
              request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)
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
          ); end
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
                  entry_status: T.nilable(Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryStatus::OrSymbol),
                  entry_type: T.nilable(Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryType::OrSymbol),
                  limit: Integer,
                  minimum_amount: T.nilable(String),
                  request_options: Orb::RequestOptions
                }
              )
          end
          def to_hash; end

          module EntryStatus
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryStatus) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryStatus::TaggedSymbol
                )
              end

            COMMITTED =
              T.let(
                :committed,
                Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryStatus::TaggedSymbol
              )
            PENDING =
              T.let(:pending, Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryStatus::TaggedSymbol)

            sig do
              override
                .returns(
                  T::Array[Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryStatus::TaggedSymbol]
                )
            end
            def self.values; end
          end

          module EntryType
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias { T.all(Symbol, Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryType) }
            OrSymbol =
              T.type_alias do
                T.any(
                  Symbol,
                  String,
                  Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryType::TaggedSymbol
                )
              end

            INCREMENT =
              T.let(:increment, Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryType::TaggedSymbol)
            DECREMENT =
              T.let(:decrement, Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryType::TaggedSymbol)
            EXPIRATION_CHANGE =
              T.let(
                :expiration_change,
                Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryType::TaggedSymbol
              )
            CREDIT_BLOCK_EXPIRY =
              T.let(
                :credit_block_expiry,
                Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryType::TaggedSymbol
              )
            VOID =
              T.let(:void, Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryType::TaggedSymbol)
            VOID_INITIATED =
              T.let(
                :void_initiated,
                Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryType::TaggedSymbol
              )
            AMENDMENT =
              T.let(:amendment, Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryType::TaggedSymbol)

            sig do
              override
                .returns(T::Array[Orb::Models::Customers::Credits::LedgerListByExternalIDParams::EntryType::TaggedSymbol])
            end
            def self.values; end
          end
        end
      end
    end
  end
end
