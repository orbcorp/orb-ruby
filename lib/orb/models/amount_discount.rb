# frozen_string_literal: true

module Orb
  module Models
    # @example
    # ```ruby
    # amount_discount => {
    #   amount_discount: String,
    #   applies_to_price_ids: -> { Orb::ArrayOf[String] === _1 },
    #   discount_type: Orb::Models::AmountDiscount::DiscountType,
    #   reason: String
    # }
    # ```
    class AmountDiscount < Orb::BaseModel
      # @!attribute amount_discount
      #   Only available if discount_type is `amount`.
      #
      #   @return [String]
      required :amount_discount, String

      # @!attribute applies_to_price_ids
      #   List of price_ids that this discount applies to. For plan/plan phase discounts,
      #     this can be a subset of prices.
      #
      #   @return [Array<String>]
      required :applies_to_price_ids, Orb::ArrayOf[String]

      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::AmountDiscount::DiscountType]
      required :discount_type, enum: -> { Orb::Models::AmountDiscount::DiscountType }

      # @!attribute reason
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!parse
      #   # @param amount_discount [String]
      #   # @param applies_to_price_ids [Array<String>]
      #   # @param discount_type [Symbol, Orb::Models::AmountDiscount::DiscountType]
      #   # @param reason [String, nil]
      #   #
      #   def initialize(amount_discount:, applies_to_price_ids:, discount_type:, reason: nil, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      #
      # @example
      # ```ruby
      # case discount_type
      # in :amount
      #   # ...
      # end
      # ```
      class DiscountType < Orb::Enum
        AMOUNT = :amount

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
