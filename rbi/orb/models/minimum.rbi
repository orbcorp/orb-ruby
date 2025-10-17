# typed: strong

module Orb
  module Models
    class Minimum < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::Minimum, Orb::Internal::AnyHash) }

      # List of price_ids that this minimum amount applies to. For plan/plan phase
      # minimums, this can be a subset of prices.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_ids

      # The filters that determine which prices to apply this minimum to.
      sig { returns(T::Array[Orb::Minimum::Filter]) }
      attr_accessor :filters

      # Minimum amount applied
      sig { returns(String) }
      attr_accessor :minimum_amount

      sig do
        params(
          applies_to_price_ids: T::Array[String],
          filters: T::Array[Orb::Minimum::Filter::OrHash],
          minimum_amount: String
        ).returns(T.attached_class)
      end
      def self.new(
        # List of price_ids that this minimum amount applies to. For plan/plan phase
        # minimums, this can be a subset of prices.
        applies_to_price_ids:,
        # The filters that determine which prices to apply this minimum to.
        filters:,
        # Minimum amount applied
        minimum_amount:
      )
      end

      sig do
        override.returns(
          {
            applies_to_price_ids: T::Array[String],
            filters: T::Array[Orb::Minimum::Filter],
            minimum_amount: String
          }
        )
      end
      def to_hash
      end

      class Filter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Minimum::Filter, Orb::Internal::AnyHash) }

        # The property of the price to filter on.
        sig { returns(Orb::Minimum::Filter::Field::TaggedSymbol) }
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig { returns(Orb::Minimum::Filter::Operator::TaggedSymbol) }
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field: Orb::Minimum::Filter::Field::OrSymbol,
            operator: Orb::Minimum::Filter::Operator::OrSymbol,
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
              field: Orb::Minimum::Filter::Field::TaggedSymbol,
              operator: Orb::Minimum::Filter::Operator::TaggedSymbol,
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
            T.type_alias { T.all(Symbol, Orb::Minimum::Filter::Field) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID = T.let(:price_id, Orb::Minimum::Filter::Field::TaggedSymbol)
          ITEM_ID = T.let(:item_id, Orb::Minimum::Filter::Field::TaggedSymbol)
          PRICE_TYPE =
            T.let(:price_type, Orb::Minimum::Filter::Field::TaggedSymbol)
          CURRENCY = T.let(:currency, Orb::Minimum::Filter::Field::TaggedSymbol)
          PRICING_UNIT_ID =
            T.let(:pricing_unit_id, Orb::Minimum::Filter::Field::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Minimum::Filter::Field::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Should prices that match the filter be included or excluded.
        module Operator
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Minimum::Filter::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(:includes, Orb::Minimum::Filter::Operator::TaggedSymbol)
          EXCLUDES =
            T.let(:excludes, Orb::Minimum::Filter::Operator::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Minimum::Filter::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
