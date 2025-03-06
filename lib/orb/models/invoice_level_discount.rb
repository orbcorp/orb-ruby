# frozen_string_literal: true

module Orb
  module Models
    # @abstract
    #
    class InvoiceLevelDiscount < Orb::Union
      discriminator :discount_type

      variant :percentage, -> { Orb::Models::PercentageDiscount }

      variant :amount, -> { Orb::Models::AmountDiscount }

      variant :trial, -> { Orb::Models::TrialDiscount }
    end
  end
end
