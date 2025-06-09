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
      sig { returns(T::Array[Orb::TransformPriceFilter]) }
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
          filters: T::Array[Orb::TransformPriceFilter::OrHash],
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
            filters: T::Array[Orb::TransformPriceFilter],
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
    end
  end
end
