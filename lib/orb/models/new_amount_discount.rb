# frozen_string_literal: true

module Orb
  module Models
    class NewAmountDiscount < Orb::Internal::Type::BaseModel
      # @!attribute adjustment_type
      #
      #   @return [Symbol, Orb::Models::NewAmountDiscount::AdjustmentType]
      required :adjustment_type, enum: -> { Orb::NewAmountDiscount::AdjustmentType }

      # @!attribute amount_discount
      #
      #   @return [String]
      required :amount_discount, String

      # @!attribute applies_to_all
      #   If set, the adjustment will apply to every price on the subscription.
      #
      #   @return [Boolean, Orb::Models::NewAmountDiscount::AppliesToAll, nil]
      optional :applies_to_all, enum: -> { Orb::NewAmountDiscount::AppliesToAll }, nil?: true

      # @!attribute applies_to_item_ids
      #   The set of item IDs to which this adjustment applies.
      #
      #   @return [Array<String>, nil]
      optional :applies_to_item_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute applies_to_price_ids
      #   The set of price IDs to which this adjustment applies.
      #
      #   @return [Array<String>, nil]
      optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute currency
      #   If set, only prices in the specified currency will have the adjustment applied.
      #
      #   @return [String, nil]
      optional :currency, String, nil?: true

      # @!attribute filters
      #   A list of filters that determine which prices this adjustment will apply to.
      #
      #   @return [Array<Orb::Models::TransformPriceFilter>, nil]
      optional :filters, -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] }, nil?: true

      # @!attribute is_invoice_level
      #   When false, this adjustment will be applied to a single price. Otherwise, it
      #   will be applied at the invoice level, possibly to multiple prices.
      #
      #   @return [Boolean, nil]
      optional :is_invoice_level, Orb::Internal::Type::Boolean

      # @!attribute price_type
      #   If set, only prices of the specified type will have the adjustment applied.
      #
      #   @return [Symbol, Orb::Models::NewAmountDiscount::PriceType, nil]
      optional :price_type, enum: -> { Orb::NewAmountDiscount::PriceType }, nil?: true

      # @!method initialize(adjustment_type:, amount_discount:, applies_to_all: nil, applies_to_item_ids: nil, applies_to_price_ids: nil, currency: nil, filters: nil, is_invoice_level: nil, price_type: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::NewAmountDiscount} for more details.
      #
      #   @param adjustment_type [Symbol, Orb::Models::NewAmountDiscount::AdjustmentType]
      #
      #   @param amount_discount [String]
      #
      #   @param applies_to_all [Boolean, Orb::Models::NewAmountDiscount::AppliesToAll, nil] If set, the adjustment will apply to every price on the subscription.
      #
      #   @param applies_to_item_ids [Array<String>, nil] The set of item IDs to which this adjustment applies.
      #
      #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
      #
      #   @param currency [String, nil] If set, only prices in the specified currency will have the adjustment applied.
      #
      #   @param filters [Array<Orb::Models::TransformPriceFilter>, nil] A list of filters that determine which prices this adjustment will apply to.
      #
      #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
      #
      #   @param price_type [Symbol, Orb::Models::NewAmountDiscount::PriceType, nil] If set, only prices of the specified type will have the adjustment applied.

      # @see Orb::Models::NewAmountDiscount#adjustment_type
      module AdjustmentType
        extend Orb::Internal::Type::Enum

        AMOUNT_DISCOUNT = :amount_discount

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # If set, the adjustment will apply to every price on the subscription.
      #
      # @see Orb::Models::NewAmountDiscount#applies_to_all
      module AppliesToAll
        extend Orb::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end

      # If set, only prices of the specified type will have the adjustment applied.
      #
      # @see Orb::Models::NewAmountDiscount#price_type
      module PriceType
        extend Orb::Internal::Type::Enum

        USAGE = :usage
        FIXED_IN_ADVANCE = :fixed_in_advance
        FIXED_IN_ARREARS = :fixed_in_arrears
        FIXED = :fixed
        IN_ARREARS = :in_arrears

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
