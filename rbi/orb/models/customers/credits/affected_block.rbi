# typed: strong

module Orb
  module Models
    module Customers
      module Credits
        class AffectedBlock < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Customers::Credits::AffectedBlock,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              T.nilable(
                T::Array[Orb::Customers::Credits::AffectedBlock::BlockFilter]
              )
            )
          end
          attr_accessor :block_filters

          sig { returns(T.nilable(Time)) }
          attr_accessor :expiry_date

          sig { returns(T.nilable(String)) }
          attr_accessor :per_unit_cost_basis

          sig do
            params(
              id: String,
              block_filters:
                T.nilable(
                  T::Array[
                    Orb::Customers::Credits::AffectedBlock::BlockFilter::OrHash
                  ]
                ),
              expiry_date: T.nilable(Time),
              per_unit_cost_basis: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(id:, block_filters:, expiry_date:, per_unit_cost_basis:)
          end

          sig do
            override.returns(
              {
                id: String,
                block_filters:
                  T.nilable(
                    T::Array[
                      Orb::Customers::Credits::AffectedBlock::BlockFilter
                    ]
                  ),
                expiry_date: T.nilable(Time),
                per_unit_cost_basis: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class BlockFilter < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Customers::Credits::AffectedBlock::BlockFilter,
                  Orb::Internal::AnyHash
                )
              end

            # The property of the price to filter on.
            sig do
              returns(
                Orb::Customers::Credits::AffectedBlock::BlockFilter::Field::TaggedSymbol
              )
            end
            attr_accessor :field

            # Should prices that match the filter be included or excluded.
            sig do
              returns(
                Orb::Customers::Credits::AffectedBlock::BlockFilter::Operator::TaggedSymbol
              )
            end
            attr_accessor :operator

            # The IDs or values that match this filter.
            sig { returns(T::Array[String]) }
            attr_accessor :values

            sig do
              params(
                field:
                  Orb::Customers::Credits::AffectedBlock::BlockFilter::Field::OrSymbol,
                operator:
                  Orb::Customers::Credits::AffectedBlock::BlockFilter::Operator::OrSymbol,
                values: T::Array[String]
              ).returns(T.attached_class)
            end
            def self.new(
              # The property of the price to filter on.
              field:,
              # Should prices that match the filter be included or excluded.
              operator:,
              # The IDs or values that match this filter.
              values:
            )
            end

            sig do
              override.returns(
                {
                  field:
                    Orb::Customers::Credits::AffectedBlock::BlockFilter::Field::TaggedSymbol,
                  operator:
                    Orb::Customers::Credits::AffectedBlock::BlockFilter::Operator::TaggedSymbol,
                  values: T::Array[String]
                }
              )
            end
            def to_hash
            end

            # The property of the price to filter on.
            module Field
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Customers::Credits::AffectedBlock::BlockFilter::Field
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PRICE_ID =
                T.let(
                  :price_id,
                  Orb::Customers::Credits::AffectedBlock::BlockFilter::Field::TaggedSymbol
                )
              ITEM_ID =
                T.let(
                  :item_id,
                  Orb::Customers::Credits::AffectedBlock::BlockFilter::Field::TaggedSymbol
                )
              PRICE_TYPE =
                T.let(
                  :price_type,
                  Orb::Customers::Credits::AffectedBlock::BlockFilter::Field::TaggedSymbol
                )
              CURRENCY =
                T.let(
                  :currency,
                  Orb::Customers::Credits::AffectedBlock::BlockFilter::Field::TaggedSymbol
                )
              PRICING_UNIT_ID =
                T.let(
                  :pricing_unit_id,
                  Orb::Customers::Credits::AffectedBlock::BlockFilter::Field::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Customers::Credits::AffectedBlock::BlockFilter::Field::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Should prices that match the filter be included or excluded.
            module Operator
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Customers::Credits::AffectedBlock::BlockFilter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCLUDES =
                T.let(
                  :includes,
                  Orb::Customers::Credits::AffectedBlock::BlockFilter::Operator::TaggedSymbol
                )
              EXCLUDES =
                T.let(
                  :excludes,
                  Orb::Customers::Credits::AffectedBlock::BlockFilter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Customers::Credits::AffectedBlock::BlockFilter::Operator::TaggedSymbol
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
  end
end
