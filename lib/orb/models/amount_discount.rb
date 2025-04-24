# frozen_string_literal: true

module Orb
  module Models
    class AmountDiscount < Orb::Internal::Type::BaseModel
      # @!attribute amount_discount
      #   Only available if discount_type is `amount`.
      #
      #   @return [String]
      required :amount_discount, String

      # @!attribute applies_to_price_ids
      #   List of price_ids that this discount applies to. For plan/plan phase discounts,
      #   this can be a subset of prices.
      #
      #   @return [Array<String>]
      required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::AmountDiscount::DiscountType]
      required :discount_type, enum: -> { Orb::Models::AmountDiscount::DiscountType }

      # @!attribute reason
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!method initialize(amount_discount:, applies_to_price_ids:, discount_type:, reason: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::AmountDiscount} for more details.
      #
      #   @param amount_discount [String] Only available if discount_type is `amount`.
      #
      #   @param applies_to_price_ids [Array<String>] List of price_ids that this discount applies to. For plan/plan phase discounts,
      #   ...
      #
      #   @param discount_type [Symbol, Orb::Models::AmountDiscount::DiscountType]
      #
      #   @param reason [String, nil]

      # @see Orb::Models::AmountDiscount#discount_type
      module DiscountType
        extend Orb::Internal::Type::Enum

        AMOUNT = :amount

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
