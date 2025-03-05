# typed: strong

module Orb
  module Models
    class CustomerCostsModel < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::AggregatedCostModel]) }
      def data
      end

      sig { params(_: T::Array[Orb::Models::AggregatedCostModel]).returns(T::Array[Orb::Models::AggregatedCostModel]) }
      def data=(_)
      end

      sig { params(data: T::Array[Orb::Models::AggregatedCostModel]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[Orb::Models::AggregatedCostModel]}) }
      def to_hash
      end
    end
  end
end
