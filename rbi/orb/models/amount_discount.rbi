# typed: strong

module Orb
  module Models
    class AmountDiscount < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::AmountDiscount, Orb::Internal::AnyHash) }

      # Only available if discount_type is `amount`.
      sig { returns(String) }
      attr_accessor :amount_discount

      sig { returns(Orb::AmountDiscount::DiscountType::OrSymbol) }
      attr_accessor :discount_type

      # List of price_ids that this discount applies to. For plan/plan phase discounts,
      # this can be a subset of prices.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :applies_to_price_ids

      # The filters that determine which prices to apply this discount to.
      sig { returns(T.nilable(T::Array[Orb::AmountDiscount::Filter])) }
      attr_accessor :filters

      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          amount_discount: String,
          discount_type: Orb::AmountDiscount::DiscountType::OrSymbol,
          applies_to_price_ids: T.nilable(T::Array[String]),
          filters: T.nilable(T::Array[Orb::AmountDiscount::Filter::OrHash]),
          reason: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Only available if discount_type is `amount`.
        amount_discount:,
        discount_type:,
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
            amount_discount: String,
            discount_type: Orb::AmountDiscount::DiscountType::OrSymbol,
            applies_to_price_ids: T.nilable(T::Array[String]),
            filters: T.nilable(T::Array[Orb::AmountDiscount::Filter]),
            reason: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module DiscountType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::AmountDiscount::DiscountType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMOUNT = T.let(:amount, Orb::AmountDiscount::DiscountType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::AmountDiscount::DiscountType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Filter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::AmountDiscount::Filter, Orb::Internal::AnyHash)
          end

        # The property of the price to filter on.
        sig { returns(Orb::AmountDiscount::Filter::Field::OrSymbol) }
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig { returns(Orb::AmountDiscount::Filter::Operator::OrSymbol) }
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field: Orb::AmountDiscount::Filter::Field::OrSymbol,
            operator: Orb::AmountDiscount::Filter::Operator::OrSymbol,
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
              field: Orb::AmountDiscount::Filter::Field::OrSymbol,
              operator: Orb::AmountDiscount::Filter::Operator::OrSymbol,
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
            T.type_alias { T.all(Symbol, Orb::AmountDiscount::Filter::Field) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(:price_id, Orb::AmountDiscount::Filter::Field::TaggedSymbol)
          ITEM_ID =
            T.let(:item_id, Orb::AmountDiscount::Filter::Field::TaggedSymbol)
          PRICE_TYPE =
            T.let(:price_type, Orb::AmountDiscount::Filter::Field::TaggedSymbol)
          CURRENCY =
            T.let(:currency, Orb::AmountDiscount::Filter::Field::TaggedSymbol)
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::AmountDiscount::Filter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::AmountDiscount::Filter::Field::TaggedSymbol]
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
              T.all(Symbol, Orb::AmountDiscount::Filter::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(
              :includes,
              Orb::AmountDiscount::Filter::Operator::TaggedSymbol
            )
          EXCLUDES =
            T.let(
              :excludes,
              Orb::AmountDiscount::Filter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::AmountDiscount::Filter::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
