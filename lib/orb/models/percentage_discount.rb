# frozen_string_literal: true

module Orb
  module Models
    class PercentageDiscount < Orb::BaseModel
      # @!attribute applies_to_price_ids
      #   List of price_ids that this discount applies to. For plan/plan phase discounts,
      #     this can be a subset of prices.
      #
      #   @return [Array<String>]
      required :applies_to_price_ids, Orb::ArrayOf[String]

      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::PercentageDiscount::DiscountType]
      required :discount_type, enum: -> { Orb::Models::PercentageDiscount::DiscountType }

      # @!attribute percentage_discount
      #   Only available if discount_type is `percentage`. This is a number between 0
      #     and 1.
      #
      #   @return [Float]
      required :percentage_discount, Float

      # @!attribute reason
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!parse
      #   # @param applies_to_price_ids [Array<String>]
      #   # @param discount_type [Symbol, Orb::Models::PercentageDiscount::DiscountType]
      #   # @param percentage_discount [Float]
      #   # @param reason [String, nil]
      #   #
      #   def initialize(applies_to_price_ids:, discount_type:, percentage_discount:, reason: nil, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      #
      # @example
      # ```ruby
      # case discount_type
      # in :percentage
      #   # ...
      # end
      # ```
      class DiscountType < Orb::Enum
        PERCENTAGE = :percentage

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end
    end
  end
end
