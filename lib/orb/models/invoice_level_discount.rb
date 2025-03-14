# frozen_string_literal: true

module Orb
  module Models
    # @abstract
    class InvoiceLevelDiscount < Orb::Union
      discriminator :discount_type

      variant :percentage, -> { Orb::Models::PercentageDiscount }

      variant :amount, -> { Orb::Models::AmountDiscount }

      variant :trial, -> { Orb::Models::TrialDiscount }

      # @!parse
      #   class << self
      #     # @return [Array(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount, Orb::Models::TrialDiscount)]
      #     def variants; end
      #   end
    end
  end
end
