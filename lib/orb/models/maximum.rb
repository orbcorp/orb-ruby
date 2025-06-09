# frozen_string_literal: true

module Orb
  module Models
    class Maximum < Orb::Internal::Type::BaseModel
      # @!attribute applies_to_price_ids
      #   @deprecated
      #
      #   List of price_ids that this maximum amount applies to. For plan/plan phase
      #   maximums, this can be a subset of prices.
      #
      #   @return [Array<String>]
      required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

      # @!attribute filters
      #   The filters that determine which prices to apply this maximum to.
      #
      #   @return [Array<Orb::Models::TransformPriceFilter>]
      required :filters, -> { Orb::Internal::Type::ArrayOf[Orb::TransformPriceFilter] }

      # @!attribute maximum_amount
      #   Maximum amount applied
      #
      #   @return [String]
      required :maximum_amount, String

      # @!method initialize(applies_to_price_ids:, filters:, maximum_amount:)
      #   Some parameter documentations has been truncated, see {Orb::Models::Maximum} for
      #   more details.
      #
      #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
      #
      #   @param filters [Array<Orb::Models::TransformPriceFilter>] The filters that determine which prices to apply this maximum to.
      #
      #   @param maximum_amount [String] Maximum amount applied
    end
  end
end
