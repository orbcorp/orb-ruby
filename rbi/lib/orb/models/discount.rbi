# typed: strong

module Orb
  module Models
    class Discount < Orb::Union
      abstract!

      sig do
        override
          .returns(
            [[Symbol, Orb::Models::PercentageDiscount], [Symbol, Orb::Models::TrialDiscount], [Symbol, Orb::Models::UsageDiscount], [Symbol, Orb::Models::AmountDiscount]]
          )
      end
      private_class_method def self.variants
      end
    end
  end
end
