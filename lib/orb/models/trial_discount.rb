# frozen_string_literal: true

module Orb
  module Models
    class TrialDiscount < Orb::Internal::Type::BaseModel
      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::TrialDiscount::DiscountType]
      required :discount_type, enum: -> { Orb::TrialDiscount::DiscountType }

      # @!attribute applies_to_price_ids
      #   List of price_ids that this discount applies to. For plan/plan phase discounts,
      #   this can be a subset of prices.
      #
      #   @return [Array<String>, nil]
      optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute filters
      #   The filters that determine which prices to apply this discount to.
      #
      #   @return [Array<Orb::Models::TrialDiscount::Filter>, nil]
      optional :filters, -> { Orb::Internal::Type::ArrayOf[Orb::TrialDiscount::Filter] }, nil?: true

      # @!attribute reason
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!attribute trial_amount_discount
      #   Only available if discount_type is `trial`
      #
      #   @return [String, nil]
      optional :trial_amount_discount, String, nil?: true

      # @!attribute trial_percentage_discount
      #   Only available if discount_type is `trial`
      #
      #   @return [Float, nil]
      optional :trial_percentage_discount, Float, nil?: true

      # @!method initialize(discount_type:, applies_to_price_ids: nil, filters: nil, reason: nil, trial_amount_discount: nil, trial_percentage_discount: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::TrialDiscount} for more details.
      #
      #   @param discount_type [Symbol, Orb::Models::TrialDiscount::DiscountType]
      #
      #   @param applies_to_price_ids [Array<String>, nil] List of price_ids that this discount applies to. For plan/plan phase discounts,
      #
      #   @param filters [Array<Orb::Models::TrialDiscount::Filter>, nil] The filters that determine which prices to apply this discount to.
      #
      #   @param reason [String, nil]
      #
      #   @param trial_amount_discount [String, nil] Only available if discount_type is `trial`
      #
      #   @param trial_percentage_discount [Float, nil] Only available if discount_type is `trial`

      # @see Orb::Models::TrialDiscount#discount_type
      module DiscountType
        extend Orb::Internal::Type::Enum

        TRIAL = :trial

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Filter < Orb::Internal::Type::BaseModel
        # @!attribute field
        #   The property of the price to filter on.
        #
        #   @return [Symbol, Orb::Models::TrialDiscount::Filter::Field]
        required :field, enum: -> { Orb::TrialDiscount::Filter::Field }

        # @!attribute operator
        #   Should prices that match the filter be included or excluded.
        #
        #   @return [Symbol, Orb::Models::TrialDiscount::Filter::Operator]
        required :operator, enum: -> { Orb::TrialDiscount::Filter::Operator }

        # @!attribute values
        #   The IDs or values that match this filter.
        #
        #   @return [Array<String>]
        required :values, Orb::Internal::Type::ArrayOf[String]

        # @!method initialize(field:, operator:, values:)
        #   @param field [Symbol, Orb::Models::TrialDiscount::Filter::Field] The property of the price to filter on.
        #
        #   @param operator [Symbol, Orb::Models::TrialDiscount::Filter::Operator] Should prices that match the filter be included or excluded.
        #
        #   @param values [Array<String>] The IDs or values that match this filter.

        # The property of the price to filter on.
        #
        # @see Orb::Models::TrialDiscount::Filter#field
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
        # @see Orb::Models::TrialDiscount::Filter#operator
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
