# frozen_string_literal: true

module Orb
  module Models
    class UsageDiscountInterval < Orb::Internal::Type::BaseModel
      # @!attribute applies_to_price_interval_ids
      #   The price interval ids that this discount interval applies to.
      #
      #   @return [Array<String>]
      required :applies_to_price_interval_ids, Orb::Internal::Type::ArrayOf[String]

      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::UsageDiscountInterval::DiscountType]
      required :discount_type, enum: -> { Orb::UsageDiscountInterval::DiscountType }

      # @!attribute end_date
      #   The end date of the discount interval.
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute filters
      #   The filters that determine which prices this discount interval applies to.
      #
      #   @return [Array<Orb::Models::UsageDiscountInterval::Filter>]
      required :filters, -> { Orb::Internal::Type::ArrayOf[Orb::UsageDiscountInterval::Filter] }

      # @!attribute start_date
      #   The start date of the discount interval.
      #
      #   @return [Time]
      required :start_date, Time

      # @!attribute usage_discount
      #   Only available if discount_type is `usage`. Number of usage units that this
      #   discount is for
      #
      #   @return [Float]
      required :usage_discount, Float

      # @!method initialize(applies_to_price_interval_ids:, discount_type:, end_date:, filters:, start_date:, usage_discount:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::UsageDiscountInterval} for more details.
      #
      #   @param applies_to_price_interval_ids [Array<String>] The price interval ids that this discount interval applies to.
      #
      #   @param discount_type [Symbol, Orb::Models::UsageDiscountInterval::DiscountType]
      #
      #   @param end_date [Time, nil] The end date of the discount interval.
      #
      #   @param filters [Array<Orb::Models::UsageDiscountInterval::Filter>] The filters that determine which prices this discount interval applies to.
      #
      #   @param start_date [Time] The start date of the discount interval.
      #
      #   @param usage_discount [Float] Only available if discount_type is `usage`. Number of usage units that this disc

      # @see Orb::Models::UsageDiscountInterval#discount_type
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
        #   @return [Symbol, Orb::Models::UsageDiscountInterval::Filter::Field]
        required :field, enum: -> { Orb::UsageDiscountInterval::Filter::Field }

        # @!attribute operator
        #   Should prices that match the filter be included or excluded.
        #
        #   @return [Symbol, Orb::Models::UsageDiscountInterval::Filter::Operator]
        required :operator, enum: -> { Orb::UsageDiscountInterval::Filter::Operator }

        # @!attribute values
        #   The IDs or values that match this filter.
        #
        #   @return [Array<String>]
        required :values, Orb::Internal::Type::ArrayOf[String]

        # @!method initialize(field:, operator:, values:)
        #   @param field [Symbol, Orb::Models::UsageDiscountInterval::Filter::Field] The property of the price to filter on.
        #
        #   @param operator [Symbol, Orb::Models::UsageDiscountInterval::Filter::Operator] Should prices that match the filter be included or excluded.
        #
        #   @param values [Array<String>] The IDs or values that match this filter.

        # The property of the price to filter on.
        #
        # @see Orb::Models::UsageDiscountInterval::Filter#field
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
        # @see Orb::Models::UsageDiscountInterval::Filter#operator
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
