# typed: strong

module Orb
  module Models
    class UsageDiscount < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::UsageDiscount, Orb::Internal::AnyHash) }

      sig { returns(Orb::UsageDiscount::DiscountType::OrSymbol) }
      attr_accessor :discount_type

      # Only available if discount_type is `usage`. Number of usage units that this
      # discount is for
      sig { returns(Float) }
      attr_accessor :usage_discount

      # List of price_ids that this discount applies to. For plan/plan phase discounts,
      # this can be a subset of prices.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :applies_to_price_ids

      # The filters that determine which prices to apply this discount to.
      sig { returns(T.nilable(T::Array[Orb::UsageDiscount::Filter])) }
      attr_accessor :filters

      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          discount_type: Orb::UsageDiscount::DiscountType::OrSymbol,
          usage_discount: Float,
          applies_to_price_ids: T.nilable(T::Array[String]),
          filters: T.nilable(T::Array[Orb::UsageDiscount::Filter::OrHash]),
          reason: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        discount_type:,
        # Only available if discount_type is `usage`. Number of usage units that this
        # discount is for
        usage_discount:,
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
            discount_type: Orb::UsageDiscount::DiscountType::OrSymbol,
            usage_discount: Float,
            applies_to_price_ids: T.nilable(T::Array[String]),
            filters: T.nilable(T::Array[Orb::UsageDiscount::Filter]),
            reason: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module DiscountType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::UsageDiscount::DiscountType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USAGE = T.let(:usage, Orb::UsageDiscount::DiscountType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::UsageDiscount::DiscountType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Filter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::UsageDiscount::Filter, Orb::Internal::AnyHash)
          end

        # The property of the price to filter on.
        sig { returns(Orb::UsageDiscount::Filter::Field::OrSymbol) }
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig { returns(Orb::UsageDiscount::Filter::Operator::OrSymbol) }
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field: Orb::UsageDiscount::Filter::Field::OrSymbol,
            operator: Orb::UsageDiscount::Filter::Operator::OrSymbol,
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
              field: Orb::UsageDiscount::Filter::Field::OrSymbol,
              operator: Orb::UsageDiscount::Filter::Operator::OrSymbol,
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
            T.type_alias { T.all(Symbol, Orb::UsageDiscount::Filter::Field) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(:price_id, Orb::UsageDiscount::Filter::Field::TaggedSymbol)
          ITEM_ID =
            T.let(:item_id, Orb::UsageDiscount::Filter::Field::TaggedSymbol)
          PRICE_TYPE =
            T.let(:price_type, Orb::UsageDiscount::Filter::Field::TaggedSymbol)
          CURRENCY =
            T.let(:currency, Orb::UsageDiscount::Filter::Field::TaggedSymbol)
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::UsageDiscount::Filter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::UsageDiscount::Filter::Field::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Should prices that match the filter be included or excluded.
        module Operator
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::UsageDiscount::Filter::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(:includes, Orb::UsageDiscount::Filter::Operator::TaggedSymbol)
          EXCLUDES =
            T.let(:excludes, Orb::UsageDiscount::Filter::Operator::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::UsageDiscount::Filter::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
