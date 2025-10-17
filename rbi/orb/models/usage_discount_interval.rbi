# typed: strong

module Orb
  module Models
    class UsageDiscountInterval < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::UsageDiscountInterval, Orb::Internal::AnyHash)
        end

      # The price interval ids that this discount interval applies to.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_interval_ids

      sig { returns(Orb::UsageDiscountInterval::DiscountType::TaggedSymbol) }
      attr_accessor :discount_type

      # The end date of the discount interval.
      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      # The filters that determine which prices this discount interval applies to.
      sig { returns(T::Array[Orb::UsageDiscountInterval::Filter]) }
      attr_accessor :filters

      # The start date of the discount interval.
      sig { returns(Time) }
      attr_accessor :start_date

      # Only available if discount_type is `usage`. Number of usage units that this
      # discount is for
      sig { returns(Float) }
      attr_accessor :usage_discount

      sig do
        params(
          applies_to_price_interval_ids: T::Array[String],
          discount_type: Orb::UsageDiscountInterval::DiscountType::OrSymbol,
          end_date: T.nilable(Time),
          filters: T::Array[Orb::UsageDiscountInterval::Filter::OrHash],
          start_date: Time,
          usage_discount: Float
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
        # The start date of the discount interval.
        start_date:,
        # Only available if discount_type is `usage`. Number of usage units that this
        # discount is for
        usage_discount:
      )
      end

      sig do
        override.returns(
          {
            applies_to_price_interval_ids: T::Array[String],
            discount_type:
              Orb::UsageDiscountInterval::DiscountType::TaggedSymbol,
            end_date: T.nilable(Time),
            filters: T::Array[Orb::UsageDiscountInterval::Filter],
            start_date: Time,
            usage_discount: Float
          }
        )
      end
      def to_hash
      end

      module DiscountType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::UsageDiscountInterval::DiscountType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USAGE =
          T.let(:usage, Orb::UsageDiscountInterval::DiscountType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::UsageDiscountInterval::DiscountType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Filter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::UsageDiscountInterval::Filter, Orb::Internal::AnyHash)
          end

        # The property of the price to filter on.
        sig { returns(Orb::UsageDiscountInterval::Filter::Field::TaggedSymbol) }
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig do
          returns(Orb::UsageDiscountInterval::Filter::Operator::TaggedSymbol)
        end
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field: Orb::UsageDiscountInterval::Filter::Field::OrSymbol,
            operator: Orb::UsageDiscountInterval::Filter::Operator::OrSymbol,
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
              field: Orb::UsageDiscountInterval::Filter::Field::TaggedSymbol,
              operator:
                Orb::UsageDiscountInterval::Filter::Operator::TaggedSymbol,
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
              T.all(Symbol, Orb::UsageDiscountInterval::Filter::Field)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(
              :price_id,
              Orb::UsageDiscountInterval::Filter::Field::TaggedSymbol
            )
          ITEM_ID =
            T.let(
              :item_id,
              Orb::UsageDiscountInterval::Filter::Field::TaggedSymbol
            )
          PRICE_TYPE =
            T.let(
              :price_type,
              Orb::UsageDiscountInterval::Filter::Field::TaggedSymbol
            )
          CURRENCY =
            T.let(
              :currency,
              Orb::UsageDiscountInterval::Filter::Field::TaggedSymbol
            )
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::UsageDiscountInterval::Filter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::UsageDiscountInterval::Filter::Field::TaggedSymbol]
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
              T.all(Symbol, Orb::UsageDiscountInterval::Filter::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(
              :includes,
              Orb::UsageDiscountInterval::Filter::Operator::TaggedSymbol
            )
          EXCLUDES =
            T.let(
              :excludes,
              Orb::UsageDiscountInterval::Filter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::UsageDiscountInterval::Filter::Operator::TaggedSymbol
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
