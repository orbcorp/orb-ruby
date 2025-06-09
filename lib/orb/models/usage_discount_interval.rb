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
      #   @return [Array<Orb::Models::TransformPriceFilter>]
      required :filters, -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] }

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
      #   @param filters [Array<Orb::Models::TransformPriceFilter>] The filters that determine which prices this discount interval applies to.
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
    end
  end
end
