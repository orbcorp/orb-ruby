# typed: strong

module Orb
  module Models
    module Discount
      extend Orb::Union

      sig do
        override
          .returns(
            [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount]
          )
      end
      def self.variants
      end
    end
  end
end
