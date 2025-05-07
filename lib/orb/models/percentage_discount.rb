# frozen_string_literal: true

module Orb
  module Models
    class PercentageDiscount < Orb::Internal::Type::BaseModel
      # @!attribute applies_to_price_ids
      #   List of price_ids that this discount applies to. For plan/plan phase discounts,
      #   this can be a subset of prices.
      #
      #   @return [Array<String>]
      required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::PercentageDiscount::DiscountType]
      required :discount_type, enum: -> { Orb::PercentageDiscount::DiscountType }

      # @!attribute percentage_discount
      #   Only available if discount_type is `percentage`. This is a number between 0
      #   and 1.
      #
      #   @return [Float]
      required :percentage_discount, Float

      # @!attribute reason
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!method initialize(applies_to_price_ids:, discount_type:, percentage_discount:, reason: nil)
      #   Some parameter documentations has been truncated, see {Orb::PercentageDiscount}
      #   for more details.
      #
      #   @param applies_to_price_ids [Array<String>] List of price_ids that this discount applies to. For plan/plan phase discounts,
      #
      #   @param discount_type [Symbol, Orb::PercentageDiscount::DiscountType]
      #
      #   @param percentage_discount [Float] Only available if discount_type is `percentage`. This is a number between 0 and
      #
      #   @param reason [String, nil]

      # @see Orb::PercentageDiscount#discount_type
      module DiscountType
        extend Orb::Internal::Type::Enum

        PERCENTAGE = :percentage

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
