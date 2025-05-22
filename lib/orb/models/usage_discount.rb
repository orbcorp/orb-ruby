# frozen_string_literal: true

module Orb
  module Models
    class UsageDiscount < Orb::Internal::Type::BaseModel
      # @!attribute applies_to_price_ids
      #   List of price_ids that this discount applies to. For plan/plan phase discounts,
      #   this can be a subset of prices.
      #
      #   @return [Array<String>]
      required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::UsageDiscount::DiscountType]
      required :discount_type, enum: -> { Orb::UsageDiscount::DiscountType }

      # @!attribute usage_discount
      #   Only available if discount_type is `usage`. Number of usage units that this
      #   discount is for
      #
      #   @return [Float]
      required :usage_discount, Float

      # @!attribute reason
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!method initialize(applies_to_price_ids:, discount_type:, usage_discount:, reason: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::UsageDiscount} for more details.
      #
      #   @param applies_to_price_ids [Array<String>] List of price_ids that this discount applies to. For plan/plan phase discounts,
      #
      #   @param discount_type [Symbol, Orb::Models::UsageDiscount::DiscountType]
      #
      #   @param usage_discount [Float] Only available if discount_type is `usage`. Number of usage units that this disc
      #
      #   @param reason [String, nil]

      # @see Orb::Models::UsageDiscount#discount_type
      module DiscountType
        extend Orb::Internal::Type::Enum

        USAGE = :usage

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
