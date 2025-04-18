# frozen_string_literal: true

module Orb
  module Models
    module Discount
      extend Orb::Internal::Type::Union

      discriminator :discount_type

      variant :percentage, -> { Orb::Models::PercentageDiscount }

      variant :trial, -> { Orb::Models::TrialDiscount }

      variant :usage, -> { Orb::Models::UsageDiscount }

      variant :amount, -> { Orb::Models::AmountDiscount }

      # @!method self.variants
      #   @return [Array(Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount)]
    end
  end
end
