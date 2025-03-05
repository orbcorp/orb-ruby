# typed: strong

module Orb
  module Models
    class InvoiceLevelDiscountModel < Orb::Union
      abstract!

      sig do
        override
          .returns(
            [[Symbol, Orb::Models::PercentageDiscount], [Symbol, Orb::Models::AmountDiscount], [Symbol, Orb::Models::TrialDiscount]]
          )
      end
      private_class_method def self.variants
      end
    end
  end
end
