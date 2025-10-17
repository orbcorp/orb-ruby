# frozen_string_literal: true

module Orb
  module Models
    class PercentageDiscountInterval < Orb::Internal::Type::BaseModel
      # @!attribute applies_to_price_interval_ids
      #   The price interval ids that this discount interval applies to.
      #
      #   @return [Array<String>]
      required :applies_to_price_interval_ids, Orb::Internal::Type::ArrayOf[String]

      # @!attribute discount_type
      #
      #   @return [Symbol, Orb::Models::PercentageDiscountInterval::DiscountType]
      required :discount_type, enum: -> { Orb::PercentageDiscountInterval::DiscountType }

      # @!attribute end_date
      #   The end date of the discount interval.
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute filters
      #   The filters that determine which prices this discount interval applies to.
      #
      #   @return [Array<Orb::Models::PercentageDiscountInterval::Filter>]
      required :filters, -> { Orb::Internal::Type::ArrayOf[Orb::PercentageDiscountInterval::Filter] }

      # @!attribute percentage_discount
      #   Only available if discount_type is `percentage`.This is a number between 0
      #   and 1.
      #
      #   @return [Float]
      required :percentage_discount, Float

      # @!attribute start_date
      #   The start date of the discount interval.
      #
      #   @return [Time]
      required :start_date, Time

      # @!method initialize(applies_to_price_interval_ids:, discount_type:, end_date:, filters:, percentage_discount:, start_date:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::PercentageDiscountInterval} for more details.
      #
      #   @param applies_to_price_interval_ids [Array<String>] The price interval ids that this discount interval applies to.
      #
      #   @param discount_type [Symbol, Orb::Models::PercentageDiscountInterval::DiscountType]
      #
      #   @param end_date [Time, nil] The end date of the discount interval.
      #
      #   @param filters [Array<Orb::Models::PercentageDiscountInterval::Filter>] The filters that determine which prices this discount interval applies to.
      #
      #   @param percentage_discount [Float] Only available if discount_type is `percentage`.This is a number between 0 and 1
      #
      #   @param start_date [Time] The start date of the discount interval.

      # @see Orb::Models::PercentageDiscountInterval#discount_type
      module DiscountType
        extend Orb::Internal::Type::Enum

        PERCENTAGE = :percentage

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Filter < Orb::Internal::Type::BaseModel
        # @!attribute field
        #   The property of the price to filter on.
        #
        #   @return [Symbol, Orb::Models::PercentageDiscountInterval::Filter::Field]
        required :field, enum: -> { Orb::PercentageDiscountInterval::Filter::Field }

        # @!attribute operator
        #   Should prices that match the filter be included or excluded.
        #
        #   @return [Symbol, Orb::Models::PercentageDiscountInterval::Filter::Operator]
        required :operator, enum: -> { Orb::PercentageDiscountInterval::Filter::Operator }

        # @!attribute values
        #   The IDs or values that match this filter.
        #
        #   @return [Array<String>]
        required :values, Orb::Internal::Type::ArrayOf[String]

        # @!method initialize(field:, operator:, values:)
        #   @param field [Symbol, Orb::Models::PercentageDiscountInterval::Filter::Field] The property of the price to filter on.
        #
        #   @param operator [Symbol, Orb::Models::PercentageDiscountInterval::Filter::Operator] Should prices that match the filter be included or excluded.
        #
        #   @param values [Array<String>] The IDs or values that match this filter.

        # The property of the price to filter on.
        #
        # @see Orb::Models::PercentageDiscountInterval::Filter#field
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
        # @see Orb::Models::PercentageDiscountInterval::Filter#operator
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
