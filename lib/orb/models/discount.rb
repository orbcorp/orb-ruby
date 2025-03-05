# frozen_string_literal: true

module Orb
  module Models
    # @abstract
    #
    # @example
    # ```ruby
    # case discount
    # in {
    #   discount_type: "percentage",
    #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
    #   percentage_discount: Float,
    #   reason: String
    # }
    #   # Orb::Models::PercentageDiscount ...
    # in {
    #   discount_type: "trial",
    #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
    #   reason: String,
    #   trial_amount_discount: String
    # }
    #   # Orb::Models::TrialDiscount ...
    # in {discount_type: "usage", applies_to_price_ids: ^(Orb::ArrayOf[String]), usage_discount: Float, reason: String}
    #   # Orb::Models::UsageDiscount ...
    # in {discount_type: "amount", amount_discount: String, applies_to_price_ids: ^(Orb::ArrayOf[String]), reason: String}
    #   # Orb::Models::AmountDiscount ...
    # end
    # ```
    #
    # @example
    # ```ruby
    # case discount
    # in Orb::Models::PercentageDiscount
    #   # ...
    # in Orb::Models::TrialDiscount
    #   # ...
    # in Orb::Models::UsageDiscount
    #   # ...
    # in Orb::Models::AmountDiscount
    #   # ...
    # end
    # ```
    class Discount < Orb::Union
      discriminator :discount_type

      variant :percentage, -> { Orb::Models::PercentageDiscount }

      variant :trial, -> { Orb::Models::TrialDiscount }

      variant :usage, -> { Orb::Models::UsageDiscount }

      variant :amount, -> { Orb::Models::AmountDiscount }
    end
  end
end
