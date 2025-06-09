# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#fetch_costs
    class SubscriptionFetchCostsResponse < Orb::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Orb::Models::AggregatedCost>]
      required :data, -> { Orb::Internal::Type::ArrayOf[Orb::AggregatedCost] }

      # @!method initialize(data:)
      #   @param data [Array<Orb::Models::AggregatedCost>]
    end
  end
end
