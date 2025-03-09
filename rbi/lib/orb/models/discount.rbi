# typed: strong

module Orb
  module Models
    class Discount < Orb::Union
      abstract!

      class << self
        sig do
          override
            .returns(
              [[Symbol, Orb::Models::PercentageDiscount], [Symbol, Orb::Models::TrialDiscount], [Symbol, Orb::Models::UsageDiscount], [Symbol, Orb::Models::AmountDiscount]]
            )
        end
        private def variants
        end
      end
    end
  end
end
