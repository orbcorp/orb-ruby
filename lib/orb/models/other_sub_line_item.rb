# frozen_string_literal: true

module Orb
  module Models
    class OtherSubLineItem < Orb::Internal::Type::BaseModel
      # @!attribute amount
      #   The total amount for this sub line item.
      #
      #   @return [String]
      required :amount, String

      # @!attribute grouping
      #
      #   @return [Orb::Models::SubLineItemGrouping, nil]
      required :grouping, -> { Orb::SubLineItemGrouping }, nil?: true

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute quantity
      #
      #   @return [Float]
      required :quantity, Float

      # @!attribute type
      #
      #   @return [Symbol, Orb::Models::OtherSubLineItem::Type]
      required :type, enum: -> { Orb::OtherSubLineItem::Type }

      # @!method initialize(amount:, grouping:, name:, quantity:, type:)
      #   @param amount [String] The total amount for this sub line item.
      #
      #   @param grouping [Orb::Models::SubLineItemGrouping, nil]
      #
      #   @param name [String]
      #
      #   @param quantity [Float]
      #
      #   @param type [Symbol, Orb::Models::OtherSubLineItem::Type]

      # @see Orb::Models::OtherSubLineItem#type
      module Type
        extend Orb::Internal::Type::Enum

        NULL = :"'null'"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
