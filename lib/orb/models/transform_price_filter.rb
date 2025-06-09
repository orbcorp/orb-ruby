# frozen_string_literal: true

module Orb
  module Models
    class TransformPriceFilter < Orb::Internal::Type::BaseModel
      # @!attribute field
      #   The property of the price to filter on.
      #
      #   @return [Symbol, Orb::Models::TransformPriceFilter::Field]
      required :field, enum: -> { Orb::TransformPriceFilter::Field }

      # @!attribute operator
      #   Should prices that match the filter be included or excluded.
      #
      #   @return [Symbol, Orb::Models::TransformPriceFilter::Operator]
      required :operator, enum: -> { Orb::TransformPriceFilter::Operator }

      # @!attribute values
      #   The IDs or values that match this filter.
      #
      #   @return [Array<String>]
      required :values, Orb::Internal::Type::ArrayOf[String]

      # @!method initialize(field:, operator:, values:)
      #   @param field [Symbol, Orb::Models::TransformPriceFilter::Field] The property of the price to filter on.
      #
      #   @param operator [Symbol, Orb::Models::TransformPriceFilter::Operator] Should prices that match the filter be included or excluded.
      #
      #   @param values [Array<String>] The IDs or values that match this filter.

      # The property of the price to filter on.
      #
      # @see Orb::Models::TransformPriceFilter#field
      module Field
        extend Orb::Internal::Type::Enum

        PRICE_ID = :price_id
        ITEM_ID = :item_id
        PRICE_TYPE = :price_type
        CURRENCY = :currency
        PRICING_UNIT_ID = :pricing_unit_id

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Should prices that match the filter be included or excluded.
      #
      # @see Orb::Models::TransformPriceFilter#operator
      module Operator
        extend Orb::Internal::Type::Enum

        INCLUDES = :includes
        EXCLUDES = :excludes

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
