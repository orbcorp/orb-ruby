# frozen_string_literal: true

module Orb
  module Models
    class TrialDiscount < Orb::Internal::Type::BaseModel
      # @!attribute applies_to_price_ids
      #   List of price_ids that this discount applies to. For plan/plan phase discounts,
      #     this can be a subset of prices.
      #
      #   @return [Array<String>]
      required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::TrialDiscount::DiscountType]
      required :discount_type, enum: -> { Orb::Models::TrialDiscount::DiscountType }

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

      # @!parse
      #   # @param applies_to_price_ids [Array<String>]
      #   # @param discount_type [Symbol, Orb::Models::TrialDiscount::DiscountType]
      #   # @param reason [String, nil]
      #   # @param trial_amount_discount [String, nil]
      #   # @param trial_percentage_discount [Float, nil]
      #   #
      #   def initialize(
      #     applies_to_price_ids:,
      #     discount_type:,
      #     reason: nil,
      #     trial_amount_discount: nil,
      #     trial_percentage_discount: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

      # @see Orb::Models::TrialDiscount#discount_type
      module DiscountType
        extend Orb::Internal::Type::Enum

        TRIAL = :trial

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
