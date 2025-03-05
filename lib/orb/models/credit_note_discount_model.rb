# frozen_string_literal: true

module Orb
  module Models
    class CreditNoteDiscountModel < Orb::BaseModel
      # @!attribute amount_applied
      #
      #   @return [String]
      required :amount_applied, String

      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::CreditNoteDiscountModel::DiscountType]
      required :discount_type, enum: -> { Orb::Models::CreditNoteDiscountModel::DiscountType }

      # @!attribute percentage_discount
      #
      #   @return [Float]
      required :percentage_discount, Float

      # @!attribute applies_to_prices
      #
      #   @return [Array<Orb::Models::CreditNoteDiscountModel::AppliesToPrice>, nil]
      optional :applies_to_prices,
               -> { Orb::ArrayOf[Orb::Models::CreditNoteDiscountModel::AppliesToPrice] },
               nil?: true

      # @!attribute reason
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!parse
      #   # @param amount_applied [String]
      #   # @param discount_type [Symbol, Orb::Models::CreditNoteDiscountModel::DiscountType]
      #   # @param percentage_discount [Float]
      #   # @param applies_to_prices [Array<Orb::Models::CreditNoteDiscountModel::AppliesToPrice>, nil]
      #   # @param reason [String, nil]
      #   #
      #   def initialize(amount_applied:, discount_type:, percentage_discount:, applies_to_prices: nil, reason: nil, **) = super

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

      class AppliesToPrice < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!parse
        #   # @param id [String]
        #   # @param name [String]
        #   #
        #   def initialize(id:, name:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
