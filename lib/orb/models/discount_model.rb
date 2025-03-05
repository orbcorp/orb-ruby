# frozen_string_literal: true

module Orb
  module Models
    # @abstract
    #
    # @example
    # ```ruby
    # case discount_model
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
    #   # Orb::Models::DiscountModel::UsageDiscount ...
    # in {discount_type: "amount", amount_discount: String, applies_to_price_ids: ^(Orb::ArrayOf[String]), reason: String}
    #   # Orb::Models::AmountDiscount ...
    # end
    # ```
    #
    # @example
    # ```ruby
    # case discount_model
    # in Orb::Models::PercentageDiscount
    #   # ...
    # in Orb::Models::TrialDiscount
    #   # ...
    # in Orb::Models::DiscountModel::UsageDiscount
    #   # ...
    # in Orb::Models::AmountDiscount
    #   # ...
    # end
    # ```
    class DiscountModel < Orb::Union
      discriminator :discount_type

      variant :percentage, -> { Orb::Models::PercentageDiscount }

      variant :trial, -> { Orb::Models::TrialDiscount }

      variant :usage, -> { Orb::Models::DiscountModel::UsageDiscount }

      variant :amount, -> { Orb::Models::AmountDiscount }

      class UsageDiscount < Orb::BaseModel
        # @!attribute applies_to_price_ids
        #   List of price_ids that this discount applies to. For plan/plan phase discounts,
        #     this can be a subset of prices.
        #
        #   @return [Array<String>]
        required :applies_to_price_ids, Orb::ArrayOf[String]

        # @!attribute discount_type
        #
        #   @return [Symbol, :usage]
        required :discount_type, const: :usage

        # @!attribute usage_discount
        #   Only available if discount_type is `usage`. Number of usage units that this
        #     discount is for
        #
        #   @return [Float]
        required :usage_discount, Float

        # @!attribute reason
        #
        #   @return [String, nil]
        optional :reason, String, nil?: true

        # @!parse
        #   # @param applies_to_price_ids [Array<String>]
        #   # @param usage_discount [Float]
        #   # @param reason [String, nil]
        #   # @param discount_type [Symbol, :usage]
        #   #
        #   def initialize(applies_to_price_ids:, usage_discount:, reason: nil, discount_type: :usage, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
