# frozen_string_literal: true

module Orb
  module Models
    class MatrixSubLineItem < Orb::Internal::Type::BaseModel
      # @!attribute amount
      #   The total amount for this sub line item.
      #
      #   @return [String]
      required :amount, String

      # @!attribute grouping
      #
      #   @return [Orb::Models::SubLineItemGrouping, nil]
      required :grouping, -> { Orb::SubLineItemGrouping }, nil?: true

      # @!attribute matrix_config
      #
      #   @return [Orb::Models::SubLineItemMatrixConfig]
      required :matrix_config, -> { Orb::SubLineItemMatrixConfig }

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
      #   @return [Symbol, Orb::Models::MatrixSubLineItem::Type]
      required :type, enum: -> { Orb::MatrixSubLineItem::Type }

      # @!method initialize(amount:, grouping:, matrix_config:, name:, quantity:, type:)
      #   @param amount [String] The total amount for this sub line item.
      #
      #   @param grouping [Orb::Models::SubLineItemGrouping, nil]
      #
      #   @param matrix_config [Orb::Models::SubLineItemMatrixConfig]
      #
      #   @param name [String]
      #
      #   @param quantity [Float]
      #
      #   @param type [Symbol, Orb::Models::MatrixSubLineItem::Type]

      # @see Orb::Models::MatrixSubLineItem#type
      module Type
        extend Orb::Internal::Type::Enum

        MATRIX = :matrix

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
