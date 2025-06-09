# typed: strong

module Orb
  module Models
    class TransformPriceFilter < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::TransformPriceFilter, Orb::Internal::AnyHash)
        end

      # The property of the price to filter on.
      sig { returns(Orb::TransformPriceFilter::Field::OrSymbol) }
      attr_accessor :field

      # Should prices that match the filter be included or excluded.
      sig { returns(Orb::TransformPriceFilter::Operator::OrSymbol) }
      attr_accessor :operator

      # The IDs or values that match this filter.
      sig { returns(T::Array[String]) }
      attr_accessor :values

      sig do
        params(
          field: Orb::TransformPriceFilter::Field::OrSymbol,
          operator: Orb::TransformPriceFilter::Operator::OrSymbol,
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
            field: Orb::TransformPriceFilter::Field::OrSymbol,
            operator: Orb::TransformPriceFilter::Operator::OrSymbol,
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
          T.type_alias { T.all(Symbol, Orb::TransformPriceFilter::Field) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRICE_ID =
          T.let(:price_id, Orb::TransformPriceFilter::Field::TaggedSymbol)
        ITEM_ID =
          T.let(:item_id, Orb::TransformPriceFilter::Field::TaggedSymbol)
        PRICE_TYPE =
          T.let(:price_type, Orb::TransformPriceFilter::Field::TaggedSymbol)
        CURRENCY =
          T.let(:currency, Orb::TransformPriceFilter::Field::TaggedSymbol)
        PRICING_UNIT_ID =
          T.let(
            :pricing_unit_id,
            Orb::TransformPriceFilter::Field::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::TransformPriceFilter::Field::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Should prices that match the filter be included or excluded.
      module Operator
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::TransformPriceFilter::Operator) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INCLUDES =
          T.let(:includes, Orb::TransformPriceFilter::Operator::TaggedSymbol)
        EXCLUDES =
          T.let(:excludes, Orb::TransformPriceFilter::Operator::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::TransformPriceFilter::Operator::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
