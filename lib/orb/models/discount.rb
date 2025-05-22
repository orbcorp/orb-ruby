# frozen_string_literal: true

module Orb
  module Models
    module Discount
      extend Orb::Internal::Type::Union

      discriminator :discount_type

      variant :percentage, -> { Orb::PercentageDiscount }

      variant :trial, -> { Orb::TrialDiscount }

      variant :usage, -> { Orb::UsageDiscount }

      variant :amount, -> { Orb::AmountDiscount }

      # @!method self.variants
      #   @return [Array(Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount)]
    end
  end
end
