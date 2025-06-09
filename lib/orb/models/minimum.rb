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
      #   @return [Array<Orb::Models::TransformPriceFilter>]
      required :filters, -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] }

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
      #   @param filters [Array<Orb::Models::TransformPriceFilter>] The filters that determine which prices to apply this minimum to.
      #
      #   @param minimum_amount [String] Minimum amount applied
    end
  end
end
