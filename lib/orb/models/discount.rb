# frozen_string_literal: true

module Orb
  module Models
    # @abstract
    #
    class Discount < Orb::Union
      discriminator :discount_type

      variant :percentage, -> { Orb::Models::PercentageDiscount }

      variant :trial, -> { Orb::Models::TrialDiscount }

      variant :usage, -> { Orb::Models::UsageDiscount }

      variant :amount, -> { Orb::Models::AmountDiscount }
    end
  end
end
