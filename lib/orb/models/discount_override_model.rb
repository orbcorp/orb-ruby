# frozen_string_literal: true

module Orb
  module Models
    class DiscountOverrideModel < Orb::BaseModel
      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::DiscountOverrideModel::DiscountType]
      required :discount_type, enum: -> { Orb::Models::DiscountOverrideModel::DiscountType }

      # @!attribute amount_discount
      #   Only available if discount_type is `amount`.
      #
      #   @return [String, nil]
      optional :amount_discount, String, nil?: true

      # @!attribute percentage_discount
      #   Only available if discount_type is `percentage`. This is a number between 0
      #     and 1.
      #
      #   @return [Float, nil]
      optional :percentage_discount, Float, nil?: true

      # @!attribute usage_discount
      #   Only available if discount_type is `usage`. Number of usage units that this
      #     discount is for
      #
      #   @return [Float, nil]
      optional :usage_discount, Float, nil?: true

      # @!parse
      #   # @param discount_type [Symbol, Orb::Models::DiscountOverrideModel::DiscountType]
      #   # @param amount_discount [String, nil]
      #   # @param percentage_discount [Float, nil]
      #   # @param usage_discount [Float, nil]
      #   #
      #   def initialize(discount_type:, amount_discount: nil, percentage_discount: nil, usage_discount: nil, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      #
      # @example
      # ```ruby
      # case discount_type
      # in :percentage
      #   # ...
      # in :usage
      #   # ...
      # in :amount
      #   # ...
      # end
      # ```
      class DiscountType < Orb::Enum
        PERCENTAGE = :percentage
        USAGE = :usage
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
