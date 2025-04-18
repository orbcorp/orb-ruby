# frozen_string_literal: true

module Orb
  module Models
    module InvoiceLevelDiscount
      extend Orb::Internal::Type::Union

      discriminator :discount_type

      variant :percentage, -> { Orb::Models::PercentageDiscount }

      variant :amount, -> { Orb::Models::AmountDiscount }

      variant :trial, -> { Orb::Models::TrialDiscount }

      # @!method self.variants
      #   @return [Array(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount)]
    end
  end
end
