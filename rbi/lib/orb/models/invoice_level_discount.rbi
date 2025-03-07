# typed: strong

module Orb
  module Models
    class InvoiceLevelDiscount < Orb::Union
      abstract!

      class << self
        sig do
          override
            .returns(
              [[Symbol, Orb::Models::PercentageDiscount], [Symbol, Orb::Models::AmountDiscount], [Symbol, Orb::Models::TrialDiscount]]
            )
        end
        private def variants
        end
      end
    end
  end
end
