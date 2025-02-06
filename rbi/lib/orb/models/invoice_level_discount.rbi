# typed: strong

module Orb
  module Models
    class InvoiceLevelDiscount < Orb::Union
      abstract!

      Variants = T.type_alias do
        T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount)
      end

      sig do
        override.returns(
          [
            [Symbol, Orb::Models::PercentageDiscount],
            [Symbol, Orb::Models::AmountDiscount],
            [Symbol, Orb::Models::TrialDiscount]
          ]
        )
      end
      private_class_method def self.variants; end
    end
  end
end
