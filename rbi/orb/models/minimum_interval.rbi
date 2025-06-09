# typed: strong

module Orb
  module Models
    class MinimumInterval < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::MinimumInterval, Orb::Internal::AnyHash) }

      # The price interval ids that this minimum interval applies to.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_interval_ids

      # The end date of the minimum interval.
      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      # The filters that determine which prices this minimum interval applies to.
      sig { returns(T::Array[Orb::TransformPriceFilter]) }
      attr_accessor :filters

      # The minimum amount to charge in a given billing period for the price intervals
      # this minimum applies to.
      sig { returns(String) }
      attr_accessor :minimum_amount

      # The start date of the minimum interval.
      sig { returns(Time) }
      attr_accessor :start_date

      sig do
        params(
          applies_to_price_interval_ids: T::Array[String],
          end_date: T.nilable(Time),
          filters: T::Array[Orb::TransformPriceFilter::OrHash],
          minimum_amount: String,
          start_date: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The price interval ids that this minimum interval applies to.
        applies_to_price_interval_ids:,
        # The end date of the minimum interval.
        end_date:,
        # The filters that determine which prices this minimum interval applies to.
        filters:,
        # The minimum amount to charge in a given billing period for the price intervals
        # this minimum applies to.
        minimum_amount:,
        # The start date of the minimum interval.
        start_date:
      )
      end

      sig do
        override.returns(
          {
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            filters: T::Array[Orb::TransformPriceFilter],
            minimum_amount: String,
            start_date: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
