# typed: strong

module Orb
  module Models
    module Discount
      extend Orb::Union

      Variants =
        type_template(:out) do
          {
            fixed: T.any(
              Orb::Models::PercentageDiscount,
              Orb::Models::TrialDiscount,
              Orb::Models::UsageDiscount,
              Orb::Models::AmountDiscount
            )
          }
        end

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
