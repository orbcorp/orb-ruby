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
      sig { returns(T::Array[Orb::TransformPriceFilter]) }
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
          filters: T::Array[Orb::TransformPriceFilter::OrHash],
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
            filters: T::Array[Orb::TransformPriceFilter],
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
    end
  end
end
