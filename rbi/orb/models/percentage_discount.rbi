# typed: strong

module Orb
  module Models
    class PercentageDiscount < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::PercentageDiscount, Orb::Internal::AnyHash) }

      sig { returns(Orb::PercentageDiscount::DiscountType::OrSymbol) }
      attr_accessor :discount_type

      # Only available if discount_type is `percentage`. This is a number between 0
      # and 1.
      sig { returns(Float) }
      attr_accessor :percentage_discount

      # List of price_ids that this discount applies to. For plan/plan phase discounts,
      # this can be a subset of prices.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :applies_to_price_ids

      # The filters that determine which prices to apply this discount to.
      sig { returns(T.nilable(T::Array[Orb::PercentageDiscount::Filter])) }
      attr_accessor :filters

      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          discount_type: Orb::PercentageDiscount::DiscountType::OrSymbol,
          percentage_discount: Float,
          applies_to_price_ids: T.nilable(T::Array[String]),
          filters: T.nilable(T::Array[Orb::PercentageDiscount::Filter::OrHash]),
          reason: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        discount_type:,
        # Only available if discount_type is `percentage`. This is a number between 0
        # and 1.
        percentage_discount:,
        # List of price_ids that this discount applies to. For plan/plan phase discounts,
        # this can be a subset of prices.
        applies_to_price_ids: nil,
        # The filters that determine which prices to apply this discount to.
        filters: nil,
        reason: nil
      )
      end

      sig do
        override.returns(
          {
            discount_type: Orb::PercentageDiscount::DiscountType::OrSymbol,
            percentage_discount: Float,
            applies_to_price_ids: T.nilable(T::Array[String]),
            filters: T.nilable(T::Array[Orb::PercentageDiscount::Filter]),
            reason: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module DiscountType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::PercentageDiscount::DiscountType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERCENTAGE =
          T.let(
            :percentage,
            Orb::PercentageDiscount::DiscountType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::PercentageDiscount::DiscountType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Filter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::PercentageDiscount::Filter, Orb::Internal::AnyHash)
          end

        # The property of the price to filter on.
        sig { returns(Orb::PercentageDiscount::Filter::Field::OrSymbol) }
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig { returns(Orb::PercentageDiscount::Filter::Operator::OrSymbol) }
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field: Orb::PercentageDiscount::Filter::Field::OrSymbol,
            operator: Orb::PercentageDiscount::Filter::Operator::OrSymbol,
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
              field: Orb::PercentageDiscount::Filter::Field::OrSymbol,
              operator: Orb::PercentageDiscount::Filter::Operator::OrSymbol,
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
              T.all(Symbol, Orb::PercentageDiscount::Filter::Field)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(
              :price_id,
              Orb::PercentageDiscount::Filter::Field::TaggedSymbol
            )
          ITEM_ID =
            T.let(
              :item_id,
              Orb::PercentageDiscount::Filter::Field::TaggedSymbol
            )
          PRICE_TYPE =
            T.let(
              :price_type,
              Orb::PercentageDiscount::Filter::Field::TaggedSymbol
            )
          CURRENCY =
            T.let(
              :currency,
              Orb::PercentageDiscount::Filter::Field::TaggedSymbol
            )
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::PercentageDiscount::Filter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::PercentageDiscount::Filter::Field::TaggedSymbol]
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
              T.all(Symbol, Orb::PercentageDiscount::Filter::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(
              :includes,
              Orb::PercentageDiscount::Filter::Operator::TaggedSymbol
            )
          EXCLUDES =
            T.let(
              :excludes,
              Orb::PercentageDiscount::Filter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::PercentageDiscount::Filter::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
