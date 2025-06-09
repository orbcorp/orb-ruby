# typed: strong

module Orb
  module Models
    class BillingCycleAnchorConfiguration < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::BillingCycleAnchorConfiguration, Orb::Internal::AnyHash)
        end

      # The day of the month on which the billing cycle is anchored. If the maximum
      # number of days in a month is greater than this value, the last day of the month
      # is the billing cycle day (e.g. billing_cycle_day=31 for April means the billing
      # period begins on the 30th.
      sig { returns(Integer) }
      attr_accessor :day

      # The month on which the billing cycle is anchored (e.g. a quarterly price
      # anchored in February would have cycles starting February, May, August, and
      # November).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :month

      # The year on which the billing cycle is anchored (e.g. a 2 year billing cycle
      # anchored on 2021 would have cycles starting on 2021, 2023, 2025, etc.).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :year

      sig do
        params(
          day: Integer,
          month: T.nilable(Integer),
          year: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # The day of the month on which the billing cycle is anchored. If the maximum
        # number of days in a month is greater than this value, the last day of the month
        # is the billing cycle day (e.g. billing_cycle_day=31 for April means the billing
        # period begins on the 30th.
        day:,
        # The month on which the billing cycle is anchored (e.g. a quarterly price
        # anchored in February would have cycles starting February, May, August, and
        # November).
        month: nil,
        # The year on which the billing cycle is anchored (e.g. a 2 year billing cycle
        # anchored on 2021 would have cycles starting on 2021, 2023, 2025, etc.).
        year: nil
      )
      end

      sig do
        override.returns(
          { day: Integer, month: T.nilable(Integer), year: T.nilable(Integer) }
        )
      end
      def to_hash
      end
    end
  end
end
