# typed: strong

module Orb
  module Models
    class PercentageDiscountInterval < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::PercentageDiscountInterval, Orb::Internal::AnyHash)
        end

      # The price interval ids that this discount interval applies to.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_interval_ids

      sig do
        returns(Orb::PercentageDiscountInterval::DiscountType::TaggedSymbol)
      end
      attr_accessor :discount_type

      # The end date of the discount interval.
      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      # The filters that determine which prices this discount interval applies to.
      sig { returns(T::Array[Orb::PercentageDiscountInterval::Filter]) }
      attr_accessor :filters

      # Only available if discount_type is `percentage`.This is a number between 0
      # and 1.
      sig { returns(Float) }
      attr_accessor :percentage_discount

      # The start date of the discount interval.
      sig { returns(Time) }
      attr_accessor :start_date

      sig do
        params(
          applies_to_price_interval_ids: T::Array[String],
          discount_type:
            Orb::PercentageDiscountInterval::DiscountType::OrSymbol,
          end_date: T.nilable(Time),
          filters: T::Array[Orb::PercentageDiscountInterval::Filter::OrHash],
          percentage_discount: Float,
          start_date: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The price interval ids that this discount interval applies to.
        applies_to_price_interval_ids:,
        discount_type:,
        # The end date of the discount interval.
        end_date:,
        # The filters that determine which prices this discount interval applies to.
        filters:,
        # Only available if discount_type is `percentage`.This is a number between 0
        # and 1.
        percentage_discount:,
        # The start date of the discount interval.
        start_date:
      )
      end

      sig do
        override.returns(
          {
            applies_to_price_interval_ids: T::Array[String],
            discount_type:
              Orb::PercentageDiscountInterval::DiscountType::TaggedSymbol,
            end_date: T.nilable(Time),
            filters: T::Array[Orb::PercentageDiscountInterval::Filter],
            percentage_discount: Float,
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
            T.all(Symbol, Orb::PercentageDiscountInterval::DiscountType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERCENTAGE =
          T.let(
            :percentage,
            Orb::PercentageDiscountInterval::DiscountType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::PercentageDiscountInterval::DiscountType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Filter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PercentageDiscountInterval::Filter,
              Orb::Internal::AnyHash
            )
          end

        # The property of the price to filter on.
        sig do
          returns(Orb::PercentageDiscountInterval::Filter::Field::TaggedSymbol)
        end
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig do
          returns(
            Orb::PercentageDiscountInterval::Filter::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field: Orb::PercentageDiscountInterval::Filter::Field::OrSymbol,
            operator:
              Orb::PercentageDiscountInterval::Filter::Operator::OrSymbol,
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
                Orb::PercentageDiscountInterval::Filter::Field::TaggedSymbol,
              operator:
                Orb::PercentageDiscountInterval::Filter::Operator::TaggedSymbol,
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
              T.all(Symbol, Orb::PercentageDiscountInterval::Filter::Field)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(
              :price_id,
              Orb::PercentageDiscountInterval::Filter::Field::TaggedSymbol
            )
          ITEM_ID =
            T.let(
              :item_id,
              Orb::PercentageDiscountInterval::Filter::Field::TaggedSymbol
            )
          PRICE_TYPE =
            T.let(
              :price_type,
              Orb::PercentageDiscountInterval::Filter::Field::TaggedSymbol
            )
          CURRENCY =
            T.let(
              :currency,
              Orb::PercentageDiscountInterval::Filter::Field::TaggedSymbol
            )
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::PercentageDiscountInterval::Filter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::PercentageDiscountInterval::Filter::Field::TaggedSymbol
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
              T.all(Symbol, Orb::PercentageDiscountInterval::Filter::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(
              :includes,
              Orb::PercentageDiscountInterval::Filter::Operator::TaggedSymbol
            )
          EXCLUDES =
            T.let(
              :excludes,
              Orb::PercentageDiscountInterval::Filter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::PercentageDiscountInterval::Filter::Operator::TaggedSymbol
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
