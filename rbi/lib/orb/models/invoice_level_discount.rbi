# typed: strong

module Orb
  module Models
    class InvoiceLevelDiscount < Orb::Union
      abstract!

      Variants =
        type_template(:out) { {fixed: T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount)} }
    end
  end
end
