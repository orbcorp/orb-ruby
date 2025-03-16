# typed: strong

module Orb
  module Models
    class Discount < Orb::Union
      abstract!

      Variants = type_template(:out) do
        {
          fixed: T.any(
            Orb::Models::PercentageDiscount,
            Orb::Models::TrialDiscount,
            Orb::Models::UsageDiscount,
            Orb::Models::AmountDiscount
          )
        }
      end
    end
  end
end
