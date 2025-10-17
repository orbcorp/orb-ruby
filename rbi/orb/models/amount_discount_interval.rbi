# typed: strong

module Orb
  module Models
    class AmountDiscountInterval < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::AmountDiscountInterval, Orb::Internal::AnyHash)
        end

      # Only available if discount_type is `amount`.
      sig { returns(String) }
      attr_accessor :amount_discount

      # The price interval ids that this discount interval applies to.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_interval_ids

      sig { returns(Orb::AmountDiscountInterval::DiscountType::TaggedSymbol) }
      attr_accessor :discount_type

      # The end date of the discount interval.
      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      # The filters that determine which prices this discount interval applies to.
      sig { returns(T::Array[Orb::AmountDiscountInterval::Filter]) }
      attr_accessor :filters

      # The start date of the discount interval.
      sig { returns(Time) }
      attr_accessor :start_date

      sig do
        params(
          amount_discount: String,
          applies_to_price_interval_ids: T::Array[String],
          discount_type: Orb::AmountDiscountInterval::DiscountType::OrSymbol,
          end_date: T.nilable(Time),
          filters: T::Array[Orb::AmountDiscountInterval::Filter::OrHash],
          start_date: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Only available if discount_type is `amount`.
        amount_discount:,
        # The price interval ids that this discount interval applies to.
        applies_to_price_interval_ids:,
        discount_type:,
        # The end date of the discount interval.
        end_date:,
        # The filters that determine which prices this discount interval applies to.
        filters:,
        # The start date of the discount interval.
        start_date:
      )
      end

      sig do
        override.returns(
          {
            amount_discount: String,
            applies_to_price_interval_ids: T::Array[String],
            discount_type:
              Orb::AmountDiscountInterval::DiscountType::TaggedSymbol,
            end_date: T.nilable(Time),
            filters: T::Array[Orb::AmountDiscountInterval::Filter],
            start_date: Time
          }
        )
      end
      def to_hash
      end

      module DiscountType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::AmountDiscountInterval::DiscountType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AMOUNT =
          T.let(
            :amount,
            Orb::AmountDiscountInterval::DiscountType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::AmountDiscountInterval::DiscountType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Filter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::AmountDiscountInterval::Filter, Orb::Internal::AnyHash)
          end

        # The property of the price to filter on.
        sig do
          returns(Orb::AmountDiscountInterval::Filter::Field::TaggedSymbol)
        end
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig do
          returns(Orb::AmountDiscountInterval::Filter::Operator::TaggedSymbol)
        end
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field: Orb::AmountDiscountInterval::Filter::Field::OrSymbol,
            operator: Orb::AmountDiscountInterval::Filter::Operator::OrSymbol,
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
              field: Orb::AmountDiscountInterval::Filter::Field::TaggedSymbol,
              operator:
                Orb::AmountDiscountInterval::Filter::Operator::TaggedSymbol,
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
              T.all(Symbol, Orb::AmountDiscountInterval::Filter::Field)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(
              :price_id,
              Orb::AmountDiscountInterval::Filter::Field::TaggedSymbol
            )
          ITEM_ID =
            T.let(
              :item_id,
              Orb::AmountDiscountInterval::Filter::Field::TaggedSymbol
            )
          PRICE_TYPE =
            T.let(
              :price_type,
              Orb::AmountDiscountInterval::Filter::Field::TaggedSymbol
            )
          CURRENCY =
            T.let(
              :currency,
              Orb::AmountDiscountInterval::Filter::Field::TaggedSymbol
            )
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::AmountDiscountInterval::Filter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::AmountDiscountInterval::Filter::Field::TaggedSymbol]
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
              T.all(Symbol, Orb::AmountDiscountInterval::Filter::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(
              :includes,
              Orb::AmountDiscountInterval::Filter::Operator::TaggedSymbol
            )
          EXCLUDES =
            T.let(
              :excludes,
              Orb::AmountDiscountInterval::Filter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::AmountDiscountInterval::Filter::Operator::TaggedSymbol
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
