# typed: strong

module Orb
  module Models
    class Discount < Orb::Union
      abstract!

      class << self
        sig do
          override
            .returns(
              [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount]
            )
        end
        def variants
        end
      end
    end
  end
end
