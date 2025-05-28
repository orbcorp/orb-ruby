# frozen_string_literal: true

module Orb
  module Models
    class PercentageDiscount < Orb::Internal::Type::BaseModel
      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::PercentageDiscount::DiscountType]
      required :discount_type, enum: -> { Orb::PercentageDiscount::DiscountType }

      # @!attribute percentage_discount
      #   Only available if discount_type is `percentage`. This is a number between 0
      #   and 1.
      #
      #   @return [Float]
      required :percentage_discount, Float

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

      # @!method initialize(discount_type:, percentage_discount:, applies_to_price_ids: nil, reason: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::PercentageDiscount} for more details.
      #
      #   @param discount_type [Symbol, Orb::Models::PercentageDiscount::DiscountType]
      #
      #   @param percentage_discount [Float] Only available if discount_type is `percentage`. This is a number between 0 and
      #
      #   @param applies_to_price_ids [Array<String>, nil] List of price_ids that this discount applies to. For plan/plan phase discounts,
      #
      #   @param reason [String, nil]

      # @see Orb::Models::PercentageDiscount#discount_type
      module DiscountType
        extend Orb::Internal::Type::Enum

        PERCENTAGE = :percentage

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
