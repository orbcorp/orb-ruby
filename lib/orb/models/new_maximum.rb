# frozen_string_literal: true

module Orb
  module Models
    class NewMaximum < Orb::Internal::Type::BaseModel
      # @!attribute adjustment_type
      #
      #   @return [Symbol, Orb::Models::NewMaximum::AdjustmentType]
      required :adjustment_type, enum: -> { Orb::NewMaximum::AdjustmentType }

      # @!attribute maximum_amount
      #
      #   @return [String]
      required :maximum_amount, String

      # @!attribute applies_to_all
      #   If set, the adjustment will apply to every price on the subscription.
      #
      #   @return [Boolean, Orb::Models::NewMaximum::AppliesToAll, nil]
      optional :applies_to_all, enum: -> { Orb::NewMaximum::AppliesToAll }, nil?: true

      # @!attribute applies_to_item_ids
      #   The set of item IDs to which this adjustment applies.
      #
      #   @return [Array<String>, nil]
      optional :applies_to_item_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute applies_to_price_ids
      #   The set of price IDs to which this adjustment applies.
      #
      #   @return [Array<String>, nil]
      optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute currency
      #   If set, only prices in the specified currency will have the adjustment applied.
      #
      #   @return [String, nil]
      optional :currency, String, nil?: true

      # @!attribute filters
      #   A list of filters that determine which prices this adjustment will apply to.
      #
      #   @return [Array<Orb::Models::NewMaximum::Filter>, nil]
      optional :filters, -> { Orb::Internal::Type::ArrayOf[Orb::NewMaximum::Filter] }, nil?: true

      # @!attribute is_invoice_level
      #   When false, this adjustment will be applied to a single price. Otherwise, it
      #   will be applied at the invoice level, possibly to multiple prices.
      #
      #   @return [Boolean, nil]
      optional :is_invoice_level, Orb::Internal::Type::Boolean

      # @!attribute price_type
      #   If set, only prices of the specified type will have the adjustment applied.
      #
      #   @return [Symbol, Orb::Models::NewMaximum::PriceType, nil]
      optional :price_type, enum: -> { Orb::NewMaximum::PriceType }, nil?: true

      # @!method initialize(adjustment_type:, maximum_amount:, applies_to_all: nil, applies_to_item_ids: nil, applies_to_price_ids: nil, currency: nil, filters: nil, is_invoice_level: nil, price_type: nil)
      #   Some parameter documentations has been truncated, see {Orb::Models::NewMaximum}
      #   for more details.
      #
      #   @param adjustment_type [Symbol, Orb::Models::NewMaximum::AdjustmentType]
      #
      #   @param maximum_amount [String]
      #
      #   @param applies_to_all [Boolean, Orb::Models::NewMaximum::AppliesToAll, nil] If set, the adjustment will apply to every price on the subscription.
      #
      #   @param applies_to_item_ids [Array<String>, nil] The set of item IDs to which this adjustment applies.
      #
      #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
      #
      #   @param currency [String, nil] If set, only prices in the specified currency will have the adjustment applied.
      #
      #   @param filters [Array<Orb::Models::NewMaximum::Filter>, nil] A list of filters that determine which prices this adjustment will apply to.
      #
      #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
      #
      #   @param price_type [Symbol, Orb::Models::NewMaximum::PriceType, nil] If set, only prices of the specified type will have the adjustment applied.

      # @see Orb::Models::NewMaximum#adjustment_type
      module AdjustmentType
        extend Orb::Internal::Type::Enum

        MAXIMUM = :maximum

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # If set, the adjustment will apply to every price on the subscription.
      #
      # @see Orb::Models::NewMaximum#applies_to_all
      module AppliesToAll
        extend Orb::Internal::Type::Enum

        TRUE = true

        # @!method self.values
        #   @return [Array<Boolean>]
      end

      class Filter < Orb::Internal::Type::BaseModel
        # @!attribute field
        #   The property of the price to filter on.
        #
        #   @return [Symbol, Orb::Models::NewMaximum::Filter::Field]
        required :field, enum: -> { Orb::NewMaximum::Filter::Field }

        # @!attribute operator
        #   Should prices that match the filter be included or excluded.
        #
        #   @return [Symbol, Orb::Models::NewMaximum::Filter::Operator]
        required :operator, enum: -> { Orb::NewMaximum::Filter::Operator }

        # @!attribute values
        #   The IDs or values that match this filter.
        #
        #   @return [Array<String>]
        required :values, Orb::Internal::Type::ArrayOf[String]

        # @!method initialize(field:, operator:, values:)
        #   @param field [Symbol, Orb::Models::NewMaximum::Filter::Field] The property of the price to filter on.
        #
        #   @param operator [Symbol, Orb::Models::NewMaximum::Filter::Operator] Should prices that match the filter be included or excluded.
        #
        #   @param values [Array<String>] The IDs or values that match this filter.

        # The property of the price to filter on.
        #
        # @see Orb::Models::NewMaximum::Filter#field
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
        # @see Orb::Models::NewMaximum::Filter#operator
        module Operator
          extend Orb::Internal::Type::Enum

          INCLUDES = :includes
          EXCLUDES = :excludes

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # If set, only prices of the specified type will have the adjustment applied.
      #
      # @see Orb::Models::NewMaximum#price_type
      module PriceType
        extend Orb::Internal::Type::Enum

        USAGE = :usage
        FIXED_IN_ADVANCE = :fixed_in_advance
        FIXED_IN_ARREARS = :fixed_in_arrears
        FIXED = :fixed
        IN_ARREARS = :in_arrears

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
