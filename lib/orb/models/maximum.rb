# frozen_string_literal: true

module Orb
  module Models
    class Maximum < Orb::Internal::Type::BaseModel
      # @!attribute applies_to_price_ids
      #   @deprecated
      #
      #   List of price_ids that this maximum amount applies to. For plan/plan phase
      #   maximums, this can be a subset of prices.
      #
      #   @return [Array<String>]
      required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

      # @!attribute filters
      #   The filters that determine which prices to apply this maximum to.
      #
      #   @return [Array<Orb::Models::Maximum::Filter>]
      required :filters, -> { Orb::Internal::Type::ArrayOf[Orb::Maximum::Filter] }

      # @!attribute maximum_amount
      #   Maximum amount applied
      #
      #   @return [String]
      required :maximum_amount, String

      # @!method initialize(applies_to_price_ids:, filters:, maximum_amount:)
      #   Some parameter documentations has been truncated, see {Orb::Models::Maximum} for
      #   more details.
      #
      #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
      #
      #   @param filters [Array<Orb::Models::Maximum::Filter>] The filters that determine which prices to apply this maximum to.
      #
      #   @param maximum_amount [String] Maximum amount applied

      class Filter < Orb::Internal::Type::BaseModel
        # @!attribute field
        #   The property of the price to filter on.
        #
        #   @return [Symbol, Orb::Models::Maximum::Filter::Field]
        required :field, enum: -> { Orb::Maximum::Filter::Field }

        # @!attribute operator
        #   Should prices that match the filter be included or excluded.
        #
        #   @return [Symbol, Orb::Models::Maximum::Filter::Operator]
        required :operator, enum: -> { Orb::Maximum::Filter::Operator }

        # @!attribute values
        #   The IDs or values that match this filter.
        #
        #   @return [Array<String>]
        required :values, Orb::Internal::Type::ArrayOf[String]

        # @!method initialize(field:, operator:, values:)
        #   @param field [Symbol, Orb::Models::Maximum::Filter::Field] The property of the price to filter on.
        #
        #   @param operator [Symbol, Orb::Models::Maximum::Filter::Operator] Should prices that match the filter be included or excluded.
        #
        #   @param values [Array<String>] The IDs or values that match this filter.

        # The property of the price to filter on.
        #
        # @see Orb::Models::Maximum::Filter#field
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
        # @see Orb::Models::Maximum::Filter#operator
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
end
