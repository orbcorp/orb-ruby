# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::Costs#list_by_external_id
      class CostListByExternalIDResponse < Orb::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Orb::Models::AggregatedCost>]
        required :data, -> { Orb::Internal::Type::ArrayOf[Orb::AggregatedCost] }

        # @!method initialize(data:)
        #   @param data [Array<Orb::Models::AggregatedCost>]
      end
    end
  end
end
