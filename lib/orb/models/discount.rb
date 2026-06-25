# frozen_string_literal: true

module Orb
  module Models
    module Discount
      extend Orb::Internal::Type::Union

      discriminator :discount_type

      variant :percentage, -> { Orb::PercentageDiscount }

      variant :trial, -> { Orb::TrialDiscount }

      variant :usage, -> { Orb::UsageDiscount }

      variant :amount, -> { Orb::AmountDiscount }

      variant :tiered_percentage, -> { Orb::Discount::TieredPercentage }

      class TieredPercentage < Orb::Internal::Type::BaseModel
        # @!attribute discount_type
        #
        #   @return [Symbol, :tiered_percentage]
        required :discount_type, const: :tiered_percentage

        # @!attribute tiers
        #   Only available if discount_type is `tiered_percentage`. The ordered, contiguous
        #   bands of cumulative eligible spend, each discounted at its own percentage
        #   (progressive fill-a-tier).
        #
        #   @return [Array<Orb::Models::Discount::TieredPercentage::Tier>]
        required :tiers, -> { Orb::Internal::Type::ArrayOf[Orb::Discount::TieredPercentage::Tier] }

        # @!attribute applies_to_price_ids
        #   List of price_ids that this discount applies to. For plan/plan phase discounts,
        #   this can be a subset of prices.
        #
        #   @return [Array<String>, nil]
        optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute filters
        #   The filters that determine which prices to apply this discount to.
        #
        #   @return [Array<Orb::Models::Discount::TieredPercentage::Filter>, nil]
        optional :filters,
                 -> { Orb::Internal::Type::ArrayOf[Orb::Discount::TieredPercentage::Filter] },
                 nil?: true

        # @!attribute reason
        #
        #   @return [String, nil]
        optional :reason, String, nil?: true

        # @!method initialize(tiers:, applies_to_price_ids: nil, filters: nil, reason: nil, discount_type: :tiered_percentage)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Discount::TieredPercentage} for more details.
        #
        #   @param tiers [Array<Orb::Models::Discount::TieredPercentage::Tier>] Only available if discount_type is `tiered_percentage`. The ordered, contiguous
        #
        #   @param applies_to_price_ids [Array<String>, nil] List of price_ids that this discount applies to. For plan/plan phase discounts,
        #
        #   @param filters [Array<Orb::Models::Discount::TieredPercentage::Filter>, nil] The filters that determine which prices to apply this discount to.
        #
        #   @param reason [String, nil]
        #
        #   @param discount_type [Symbol, :tiered_percentage]

        class Tier < Orb::Internal::Type::BaseModel
          # @!attribute lower_bound
          #   Exclusive lower bound of cumulative spend for this tier.
          #
          #   @return [Float]
          required :lower_bound, Float

          # @!attribute percentage
          #   The percentage (between 0 and 1) discounted from spend that falls within this
          #   tier.
          #
          #   @return [Float]
          required :percentage, Float

          # @!attribute upper_bound
          #   Inclusive upper bound of cumulative spend for this tier; null for the final
          #   open-ended tier.
          #
          #   @return [Float, nil]
          optional :upper_bound, Float, nil?: true

          # @!method initialize(lower_bound:, percentage:, upper_bound: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Discount::TieredPercentage::Tier} for more details.
          #
          #   One band of a tiered percentage discount. Bounds are denominated in the
          #   discount's currency. `lower_bound` is the exclusive start of the band and
          #   `upper_bound` is the inclusive end; `upper_bound` is null only for the
          #   open-ended final tier.
          #
          #   @param lower_bound [Float] Exclusive lower bound of cumulative spend for this tier.
          #
          #   @param percentage [Float] The percentage (between 0 and 1) discounted from spend that falls within this ti
          #
          #   @param upper_bound [Float, nil] Inclusive upper bound of cumulative spend for this tier; null for the final open
        end

        class Filter < Orb::Internal::Type::BaseModel
          # @!attribute field
          #   The property of the price to filter on.
          #
          #   @return [Symbol, Orb::Models::Discount::TieredPercentage::Filter::Field]
          required :field, enum: -> { Orb::Discount::TieredPercentage::Filter::Field }

          # @!attribute operator
          #   Should prices that match the filter be included or excluded.
          #
          #   @return [Symbol, Orb::Models::Discount::TieredPercentage::Filter::Operator]
          required :operator, enum: -> { Orb::Discount::TieredPercentage::Filter::Operator }

          # @!attribute values
          #   The IDs or values that match this filter.
          #
          #   @return [Array<String>]
          required :values, Orb::Internal::Type::ArrayOf[String]

          # @!method initialize(field:, operator:, values:)
          #   @param field [Symbol, Orb::Models::Discount::TieredPercentage::Filter::Field] The property of the price to filter on.
          #
          #   @param operator [Symbol, Orb::Models::Discount::TieredPercentage::Filter::Operator] Should prices that match the filter be included or excluded.
          #
          #   @param values [Array<String>] The IDs or values that match this filter.

          # The property of the price to filter on.
          #
          # @see Orb::Models::Discount::TieredPercentage::Filter#field
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
          # @see Orb::Models::Discount::TieredPercentage::Filter#operator
          module Operator
            extend Orb::Internal::Type::Enum

            INCLUDES = :includes
            EXCLUDES = :excludes

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # @!method self.variants
      #   @return [Array(Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, Orb::Models::Discount::TieredPercentage)]
    end
  end
end
