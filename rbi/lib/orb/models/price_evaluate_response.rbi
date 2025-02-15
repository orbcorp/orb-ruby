# typed: strong

module Orb
  module Models
    class PriceEvaluateResponse < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::EvaluatePriceGroup]) }
      def data
      end

      sig do
        params(_: T::Array[Orb::Models::EvaluatePriceGroup]).returns(T::Array[Orb::Models::EvaluatePriceGroup])
      end
      def data=(_)
      end

      sig { params(data: T::Array[Orb::Models::EvaluatePriceGroup]).void }
      def initialize(data:)
      end

      sig { override.returns({data: T::Array[Orb::Models::EvaluatePriceGroup]}) }
      def to_hash
      end
    end
  end
end
