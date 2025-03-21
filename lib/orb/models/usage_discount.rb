# frozen_string_literal: true

module Orb
  module Models
    class UsageDiscount < Orb::BaseModel
      # @!attribute applies_to_price_ids
      #   List of price_ids that this discount applies to. For plan/plan phase discounts,
      #     this can be a subset of prices.
      #
      #   @return [Array<String>]
      required :applies_to_price_ids, Orb::ArrayOf[String]

      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::UsageDiscount::DiscountType]
      required :discount_type, enum: -> { Orb::Models::UsageDiscount::DiscountType }

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
      #   # @param discount_type [Symbol, Orb::Models::UsageDiscount::DiscountType]
      #   # @param usage_discount [Float]
      #   # @param reason [String, nil]
      #   #
      #   def initialize(applies_to_price_ids:, discount_type:, usage_discount:, reason: nil, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      module DiscountType
        extend Orb::Enum

        USAGE = :usage

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
