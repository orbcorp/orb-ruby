# typed: strong

module Orb
  module Models
    class PriceInterval < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::PriceInterval, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      # The day of the month that Orb bills for this price
      sig { returns(Integer) }
      attr_accessor :billing_cycle_day

      # The end of the current billing period. This is an exclusive timestamp, such that
      # the instant returned is exactly the end of the billing period. Set to null if
      # this price interval is not currently active.
      sig { returns(T.nilable(Time)) }
      attr_accessor :current_billing_period_end_date

      # The start date of the current billing period. This is an inclusive timestamp;
      # the instant returned is exactly the beginning of the billing period. Set to null
      # if this price interval is not currently active.
      sig { returns(T.nilable(Time)) }
      attr_accessor :current_billing_period_start_date

      # The end date of the price interval. This is the date that Orb stops billing for
      # this price.
      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      # An additional filter to apply to usage queries.
      sig { returns(T.nilable(String)) }
      attr_accessor :filter

      # The fixed fee quantity transitions for this price interval. This is only
      # relevant for fixed fees.
      sig { returns(T.nilable(T::Array[Orb::FixedFeeQuantityTransition])) }
      attr_accessor :fixed_fee_quantity_transitions

      # The Price resource represents a price that can be billed on a subscription,
      # resulting in a charge on an invoice in the form of an invoice line item. Prices
      # take a quantity and determine an amount to bill.
      #
      # Orb supports a few different pricing models out of the box. Each of these models
      # is serialized differently in a given Price object. The model_type field
      # determines the key for the configuration object that is present.
      #
      # For more on the types of prices, see
      # [the core concepts documentation](/core-concepts#plan-and-price)
      sig { returns(Orb::Price::Variants) }
      attr_accessor :price

      # The start date of the price interval. This is the date that Orb starts billing
      # for this price.
      sig { returns(Time) }
      attr_accessor :start_date

      # A list of customer IDs whose usage events will be aggregated and billed under
      # this price interval.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :usage_customer_ids

      # The Price Interval resource represents a period of time for which a price will
      # bill on a subscription. A subscription’s price intervals define its billing
      # behavior.
      sig do
        params(
          id: String,
          billing_cycle_day: Integer,
          current_billing_period_end_date: T.nilable(Time),
          current_billing_period_start_date: T.nilable(Time),
          end_date: T.nilable(Time),
          filter: T.nilable(String),
          fixed_fee_quantity_transitions:
            T.nilable(T::Array[Orb::FixedFeeQuantityTransition::OrHash]),
          price:
            T.any(
              Orb::Price::Unit::OrHash,
              Orb::Price::Package::OrHash,
              Orb::Price::Matrix::OrHash,
              Orb::Price::Tiered::OrHash,
              Orb::Price::TieredBPS::OrHash,
              Orb::Price::BPS::OrHash,
              Orb::Price::BulkBPS::OrHash,
              Orb::Price::Bulk::OrHash,
              Orb::Price::ThresholdTotalAmount::OrHash,
              Orb::Price::TieredPackage::OrHash,
              Orb::Price::GroupedTiered::OrHash,
              Orb::Price::TieredWithMinimum::OrHash,
              Orb::Price::TieredPackageWithMinimum::OrHash,
              Orb::Price::PackageWithAllocation::OrHash,
              Orb::Price::UnitWithPercent::OrHash,
              Orb::Price::MatrixWithAllocation::OrHash,
              Orb::Price::TieredWithProration::OrHash,
              Orb::Price::UnitWithProration::OrHash,
              Orb::Price::GroupedAllocation::OrHash,
              Orb::Price::GroupedWithProratedMinimum::OrHash,
              Orb::Price::GroupedWithMeteredMinimum::OrHash,
              Orb::Price::MatrixWithDisplayName::OrHash,
              Orb::Price::BulkWithProration::OrHash,
              Orb::Price::GroupedTieredPackage::OrHash,
              Orb::Price::MaxGroupTieredPackage::OrHash,
              Orb::Price::ScalableMatrixWithUnitPricing::OrHash,
              Orb::Price::ScalableMatrixWithTieredPricing::OrHash,
              Orb::Price::CumulativeGroupedBulk::OrHash,
              Orb::Price::GroupedWithMinMaxThresholds::OrHash
            ),
          start_date: Time,
          usage_customer_ids: T.nilable(T::Array[String])
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The day of the month that Orb bills for this price
        billing_cycle_day:,
        # The end of the current billing period. This is an exclusive timestamp, such that
        # the instant returned is exactly the end of the billing period. Set to null if
        # this price interval is not currently active.
        current_billing_period_end_date:,
        # The start date of the current billing period. This is an inclusive timestamp;
        # the instant returned is exactly the beginning of the billing period. Set to null
        # if this price interval is not currently active.
        current_billing_period_start_date:,
        # The end date of the price interval. This is the date that Orb stops billing for
        # this price.
        end_date:,
        # An additional filter to apply to usage queries.
        filter:,
        # The fixed fee quantity transitions for this price interval. This is only
        # relevant for fixed fees.
        fixed_fee_quantity_transitions:,
        # The Price resource represents a price that can be billed on a subscription,
        # resulting in a charge on an invoice in the form of an invoice line item. Prices
        # take a quantity and determine an amount to bill.
        #
        # Orb supports a few different pricing models out of the box. Each of these models
        # is serialized differently in a given Price object. The model_type field
        # determines the key for the configuration object that is present.
        #
        # For more on the types of prices, see
        # [the core concepts documentation](/core-concepts#plan-and-price)
        price:,
        # The start date of the price interval. This is the date that Orb starts billing
        # for this price.
        start_date:,
        # A list of customer IDs whose usage events will be aggregated and billed under
        # this price interval.
        usage_customer_ids:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            billing_cycle_day: Integer,
            current_billing_period_end_date: T.nilable(Time),
            current_billing_period_start_date: T.nilable(Time),
            end_date: T.nilable(Time),
            filter: T.nilable(String),
            fixed_fee_quantity_transitions:
              T.nilable(T::Array[Orb::FixedFeeQuantityTransition]),
            price: Orb::Price::Variants,
            start_date: Time,
            usage_customer_ids: T.nilable(T::Array[String])
          }
        )
      end
      def to_hash
      end
    end
  end
end
