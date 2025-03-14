# typed: strong

module Orb
  module Models
    class InvoiceLevelDiscount < Orb::Union
      abstract!

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
