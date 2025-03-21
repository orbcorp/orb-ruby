# typed: strong

module Orb
  module Models
    module InvoiceLevelDiscount
      extend Orb::Union

      sig do
        override
          .returns([Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount])
      end
      def self.variants
      end
    end
  end
end
