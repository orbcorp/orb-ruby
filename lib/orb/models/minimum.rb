# frozen_string_literal: true

module Orb
  module Models
    class Minimum < Orb::Internal::Type::BaseModel
      # @!attribute applies_to_price_ids
      #   @deprecated
      #
      #   List of price_ids that this minimum amount applies to. For plan/plan phase
      #   minimums, this can be a subset of prices.
      #
      #   @return [Array<String>]
      required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

      # @!attribute filters
      #   The filters that determine which prices to apply this minimum to.
      #
      #   @return [Array<Orb::Models::Minimum::Filter>]
      required :filters, -> { Orb::Internal::Type::ArrayOf[Orb::Minimum::Filter] }

      # @!attribute minimum_amount
      #   Minimum amount applied
      #
      #   @return [String]
      required :minimum_amount, String

      # @!method initialize(applies_to_price_ids:, filters:, minimum_amount:)
      #   Some parameter documentations has been truncated, see {Orb::Models::Minimum} for
      #   more details.
      #
      #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
      #
      #   @param filters [Array<Orb::Models::Minimum::Filter>] The filters that determine which prices to apply this minimum to.
      #
      #   @param minimum_amount [String] Minimum amount applied

      class Filter < Orb::Internal::Type::BaseModel
        # @!attribute field
        #   The property of the price to filter on.
        #
        #   @return [Symbol, Orb::Models::Minimum::Filter::Field]
        required :field, enum: -> { Orb::Minimum::Filter::Field }

        # @!attribute operator
        #   Should prices that match the filter be included or excluded.
        #
        #   @return [Symbol, Orb::Models::Minimum::Filter::Operator]
        required :operator, enum: -> { Orb::Minimum::Filter::Operator }

        # @!attribute values
        #   The IDs or values that match this filter.
        #
        #   @return [Array<String>]
        required :values, Orb::Internal::Type::ArrayOf[String]

        # @!method initialize(field:, operator:, values:)
        #   @param field [Symbol, Orb::Models::Minimum::Filter::Field] The property of the price to filter on.
        #
        #   @param operator [Symbol, Orb::Models::Minimum::Filter::Operator] Should prices that match the filter be included or excluded.
        #
        #   @param values [Array<String>] The IDs or values that match this filter.

        # The property of the price to filter on.
        #
        # @see Orb::Models::Minimum::Filter#field
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
        # @see Orb::Models::Minimum::Filter#operator
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
