# frozen_string_literal: true

module Orb
  module Models
    class TierSubLineItem < Orb::Internal::Type::BaseModel
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

      # @!attribute tier_config
      #
      #   @return [Orb::Models::TierConfig]
      required :tier_config, -> { Orb::TierConfig }

      # @!attribute type
      #
      #   @return [Symbol, Orb::Models::TierSubLineItem::Type]
      required :type, enum: -> { Orb::TierSubLineItem::Type }

      # @!method initialize(amount:, grouping:, name:, quantity:, tier_config:, type:)
      #   @param amount [String] The total amount for this sub line item.
      #
      #   @param grouping [Orb::Models::SubLineItemGrouping, nil]
      #
      #   @param name [String]
      #
      #   @param quantity [Float]
      #
      #   @param tier_config [Orb::Models::TierConfig]
      #
      #   @param type [Symbol, Orb::Models::TierSubLineItem::Type]

      # @see Orb::Models::TierSubLineItem#type
      module Type
        extend Orb::Internal::Type::Enum

        TIER = :tier

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
