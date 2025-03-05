# frozen_string_literal: true

module Orb
  module Models
    class CustomerCostsModel < Orb::BaseModel
      # @!attribute data
      #
      #   @return [Array<Orb::Models::AggregatedCostModel>]
      required :data, -> { Orb::ArrayOf[Orb::Models::AggregatedCostModel] }

      # @!parse
      #   # @param data [Array<Orb::Models::AggregatedCostModel>]
      #   #
      #   def initialize(data:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
