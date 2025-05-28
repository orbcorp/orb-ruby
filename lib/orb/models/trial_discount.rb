# frozen_string_literal: true

module Orb
  module Models
    class TrialDiscount < Orb::Internal::Type::BaseModel
      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::TrialDiscount::DiscountType]
      required :discount_type, enum: -> { Orb::TrialDiscount::DiscountType }

      # @!attribute applies_to_price_ids
      #   List of price_ids that this discount applies to. For plan/plan phase discounts,
      #   this can be a subset of prices.
      #
      #   @return [Array<String>, nil]
      optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute reason
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!attribute trial_amount_discount
      #   Only available if discount_type is `trial`
      #
      #   @return [String, nil]
      optional :trial_amount_discount, String, nil?: true

      # @!attribute trial_percentage_discount
      #   Only available if discount_type is `trial`
      #
      #   @return [Float, nil]
      optional :trial_percentage_discount, Float, nil?: true

      # @!method initialize(discount_type:, applies_to_price_ids: nil, reason: nil, trial_amount_discount: nil, trial_percentage_discount: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::TrialDiscount} for more details.
      #
      #   @param discount_type [Symbol, Orb::Models::TrialDiscount::DiscountType]
      #
      #   @param applies_to_price_ids [Array<String>, nil] List of price_ids that this discount applies to. For plan/plan phase discounts,
      #
      #   @param reason [String, nil]
      #
      #   @param trial_amount_discount [String, nil] Only available if discount_type is `trial`
      #
      #   @param trial_percentage_discount [Float, nil] Only available if discount_type is `trial`

      # @see Orb::Models::TrialDiscount#discount_type
      module DiscountType
        extend Orb::Internal::Type::Enum

        TRIAL = :trial

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
