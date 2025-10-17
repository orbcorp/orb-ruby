# typed: strong

module Orb
  module Models
    class Maximum < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::Maximum, Orb::Internal::AnyHash) }

      # List of price_ids that this maximum amount applies to. For plan/plan phase
      # maximums, this can be a subset of prices.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_ids

      # The filters that determine which prices to apply this maximum to.
      sig { returns(T::Array[Orb::Maximum::Filter]) }
      attr_accessor :filters

      # Maximum amount applied
      sig { returns(String) }
      attr_accessor :maximum_amount

      sig do
        params(
          applies_to_price_ids: T::Array[String],
          filters: T::Array[Orb::Maximum::Filter::OrHash],
          maximum_amount: String
        ).returns(T.attached_class)
      end
      def self.new(
        # List of price_ids that this maximum amount applies to. For plan/plan phase
        # maximums, this can be a subset of prices.
        applies_to_price_ids:,
        # The filters that determine which prices to apply this maximum to.
        filters:,
        # Maximum amount applied
        maximum_amount:
      )
      end

      sig do
        override.returns(
          {
            applies_to_price_ids: T::Array[String],
            filters: T::Array[Orb::Maximum::Filter],
            maximum_amount: String
          }
        )
      end
      def to_hash
      end

      class Filter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias { T.any(Orb::Maximum::Filter, Orb::Internal::AnyHash) }

        # The property of the price to filter on.
        sig { returns(Orb::Maximum::Filter::Field::TaggedSymbol) }
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig { returns(Orb::Maximum::Filter::Operator::TaggedSymbol) }
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field: Orb::Maximum::Filter::Field::OrSymbol,
            operator: Orb::Maximum::Filter::Operator::OrSymbol,
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
              field: Orb::Maximum::Filter::Field::TaggedSymbol,
              operator: Orb::Maximum::Filter::Operator::TaggedSymbol,
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
            T.type_alias { T.all(Symbol, Orb::Maximum::Filter::Field) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID = T.let(:price_id, Orb::Maximum::Filter::Field::TaggedSymbol)
          ITEM_ID = T.let(:item_id, Orb::Maximum::Filter::Field::TaggedSymbol)
          PRICE_TYPE =
            T.let(:price_type, Orb::Maximum::Filter::Field::TaggedSymbol)
          CURRENCY = T.let(:currency, Orb::Maximum::Filter::Field::TaggedSymbol)
          PRICING_UNIT_ID =
            T.let(:pricing_unit_id, Orb::Maximum::Filter::Field::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Maximum::Filter::Field::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Should prices that match the filter be included or excluded.
        module Operator
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::Maximum::Filter::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(:includes, Orb::Maximum::Filter::Operator::TaggedSymbol)
          EXCLUDES =
            T.let(:excludes, Orb::Maximum::Filter::Operator::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::Maximum::Filter::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
