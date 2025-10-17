# frozen_string_literal: true

module Orb
  module Models
    class MaximumInterval < Orb::Internal::Type::BaseModel
      # @!attribute applies_to_price_interval_ids
      #   The price interval ids that this maximum interval applies to.
      #
      #   @return [Array<String>]
      required :applies_to_price_interval_ids, Orb::Internal::Type::ArrayOf[String]

      # @!attribute end_date
      #   The end date of the maximum interval.
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute filters
      #   The filters that determine which prices this maximum interval applies to.
      #
      #   @return [Array<Orb::Models::MaximumInterval::Filter>]
      required :filters, -> { Orb::Internal::Type::ArrayOf[Orb::MaximumInterval::Filter] }

      # @!attribute maximum_amount
      #   The maximum amount to charge in a given billing period for the price intervals
      #   this transform applies to.
      #
      #   @return [String]
      required :maximum_amount, String

      # @!attribute start_date
      #   The start date of the maximum interval.
      #
      #   @return [Time]
      required :start_date, Time

      # @!method initialize(applies_to_price_interval_ids:, end_date:, filters:, maximum_amount:, start_date:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::MaximumInterval} for more details.
      #
      #   @param applies_to_price_interval_ids [Array<String>] The price interval ids that this maximum interval applies to.
      #
      #   @param end_date [Time, nil] The end date of the maximum interval.
      #
      #   @param filters [Array<Orb::Models::MaximumInterval::Filter>] The filters that determine which prices this maximum interval applies to.
      #
      #   @param maximum_amount [String] The maximum amount to charge in a given billing period for the price intervals t
      #
      #   @param start_date [Time] The start date of the maximum interval.

      class Filter < Orb::Internal::Type::BaseModel
        # @!attribute field
        #   The property of the price to filter on.
        #
        #   @return [Symbol, Orb::Models::MaximumInterval::Filter::Field]
        required :field, enum: -> { Orb::MaximumInterval::Filter::Field }

        # @!attribute operator
        #   Should prices that match the filter be included or excluded.
        #
        #   @return [Symbol, Orb::Models::MaximumInterval::Filter::Operator]
        required :operator, enum: -> { Orb::MaximumInterval::Filter::Operator }

        # @!attribute values
        #   The IDs or values that match this filter.
        #
        #   @return [Array<String>]
        required :values, Orb::Internal::Type::ArrayOf[String]

        # @!method initialize(field:, operator:, values:)
        #   @param field [Symbol, Orb::Models::MaximumInterval::Filter::Field] The property of the price to filter on.
        #
        #   @param operator [Symbol, Orb::Models::MaximumInterval::Filter::Operator] Should prices that match the filter be included or excluded.
        #
        #   @param values [Array<String>] The IDs or values that match this filter.

        # The property of the price to filter on.
        #
        # @see Orb::Models::MaximumInterval::Filter#field
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
        # @see Orb::Models::MaximumInterval::Filter#operator
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
