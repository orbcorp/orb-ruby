# frozen_string_literal: true

module Orb
  module Models
    class UsageDiscount < Orb::Internal::Type::BaseModel
      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::UsageDiscount::DiscountType]
      required :discount_type, enum: -> { Orb::UsageDiscount::DiscountType }

      # @!attribute usage_discount
      #   Only available if discount_type is `usage`. Number of usage units that this
      #   discount is for
      #
      #   @return [Float]
      required :usage_discount, Float

      # @!attribute applies_to_price_ids
      #   List of price_ids that this discount applies to. For plan/plan phase discounts,
      #   this can be a subset of prices.
      #
      #   @return [Array<String>, nil]
      optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute filters
      #   The filters that determine which prices to apply this discount to.
      #
      #   @return [Array<Orb::Models::UsageDiscount::Filter>, nil]
      optional :filters, -> { Orb::Internal::Type::ArrayOf[Orb::UsageDiscount::Filter] }, nil?: true

      # @!attribute reason
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!method initialize(discount_type:, usage_discount:, applies_to_price_ids: nil, filters: nil, reason: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::UsageDiscount} for more details.
      #
      #   @param discount_type [Symbol, Orb::Models::UsageDiscount::DiscountType]
      #
      #   @param usage_discount [Float] Only available if discount_type is `usage`. Number of usage units that this disc
      #
      #   @param applies_to_price_ids [Array<String>, nil] List of price_ids that this discount applies to. For plan/plan phase discounts,
      #
      #   @param filters [Array<Orb::Models::UsageDiscount::Filter>, nil] The filters that determine which prices to apply this discount to.
      #
      #   @param reason [String, nil]

      # @see Orb::Models::UsageDiscount#discount_type
      module DiscountType
        extend Orb::Internal::Type::Enum

        USAGE = :usage

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Filter < Orb::Internal::Type::BaseModel
        # @!attribute field
        #   The property of the price to filter on.
        #
        #   @return [Symbol, Orb::Models::UsageDiscount::Filter::Field]
        required :field, enum: -> { Orb::UsageDiscount::Filter::Field }

        # @!attribute operator
        #   Should prices that match the filter be included or excluded.
        #
        #   @return [Symbol, Orb::Models::UsageDiscount::Filter::Operator]
        required :operator, enum: -> { Orb::UsageDiscount::Filter::Operator }

        # @!attribute values
        #   The IDs or values that match this filter.
        #
        #   @return [Array<String>]
        required :values, Orb::Internal::Type::ArrayOf[String]

        # @!method initialize(field:, operator:, values:)
        #   @param field [Symbol, Orb::Models::UsageDiscount::Filter::Field] The property of the price to filter on.
        #
        #   @param operator [Symbol, Orb::Models::UsageDiscount::Filter::Operator] Should prices that match the filter be included or excluded.
        #
        #   @param values [Array<String>] The IDs or values that match this filter.

        # The property of the price to filter on.
        #
        # @see Orb::Models::UsageDiscount::Filter#field
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
        # @see Orb::Models::UsageDiscount::Filter#operator
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
