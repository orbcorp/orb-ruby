# typed: strong

module Orb
  module Models
    module InvoiceLevelDiscount
      extend Orb::Union

      Variants =
        type_template(:out) { {fixed: T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount)} }

      class << self
        sig do
          override
            .returns([Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount])
        end
        def variants
        end
      end
    end
  end
end
