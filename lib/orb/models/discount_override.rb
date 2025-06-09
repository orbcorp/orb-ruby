# frozen_string_literal: true

module Orb
  module Models
    class DiscountOverride < Orb::Internal::Type::BaseModel
      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::DiscountOverride::DiscountType]
      required :discount_type, enum: -> { Orb::DiscountOverride::DiscountType }

      # @!attribute amount_discount
      #   Only available if discount_type is `amount`.
      #
      #   @return [String, nil]
      optional :amount_discount, String, nil?: true

      # @!attribute percentage_discount
      #   Only available if discount_type is `percentage`. This is a number between 0
      #   and 1.
      #
      #   @return [Float, nil]
      optional :percentage_discount, Float, nil?: true

      # @!attribute usage_discount
      #   Only available if discount_type is `usage`. Number of usage units that this
      #   discount is for
      #
      #   @return [Float, nil]
      optional :usage_discount, Float, nil?: true

      # @!method initialize(discount_type:, amount_discount: nil, percentage_discount: nil, usage_discount: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::DiscountOverride} for more details.
      #
      #   @param discount_type [Symbol, Orb::Models::DiscountOverride::DiscountType]
      #
      #   @param amount_discount [String, nil] Only available if discount_type is `amount`.
      #
      #   @param percentage_discount [Float, nil] Only available if discount_type is `percentage`. This is a number between 0 and
      #
      #   @param usage_discount [Float, nil] Only available if discount_type is `usage`. Number of usage units that this disc

      # @see Orb::Models::DiscountOverride#discount_type
      module DiscountType
        extend Orb::Internal::Type::Enum

        PERCENTAGE = :percentage
        USAGE = :usage
        AMOUNT = :amount

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
