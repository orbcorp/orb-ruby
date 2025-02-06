# frozen_string_literal: true

module Orb
  module Models
    # @abstract
    #
    # @example
    # ```ruby
    # case invoice_level_discount
    # in {discount_type: "percentage", applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 }, percentage_discount: Float, reason: String}
    #   # Orb::Models::PercentageDiscount ...
    # in {discount_type: "amount", amount_discount: String, applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 }, reason: String}
    #   # Orb::Models::AmountDiscount ...
    # in {discount_type: "trial", applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 }, reason: String, trial_amount_discount: String}
    #   # Orb::Models::TrialDiscount ...
    # end
    # ```
    #
    # @example
    # ```ruby
    # case invoice_level_discount
    # in Orb::Models::PercentageDiscount
    #   # ...
    # in Orb::Models::AmountDiscount
    #   # ...
    # in Orb::Models::TrialDiscount
    #   # ...
    # end
    # ```
    class InvoiceLevelDiscount < Orb::Union
      discriminator :discount_type

      variant :percentage, -> { Orb::Models::PercentageDiscount }

      variant :amount, -> { Orb::Models::AmountDiscount }

      variant :trial, -> { Orb::Models::TrialDiscount }
    end
  end
end
