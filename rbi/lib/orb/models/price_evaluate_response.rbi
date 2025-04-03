# typed: strong

module Orb
  module Models
    class PriceEvaluateResponse < Orb::BaseModel
      sig { returns(T::Array[Orb::Models::EvaluatePriceGroup]) }
      attr_accessor :data

      sig do
        params(data: T::Array[T.any(Orb::Models::EvaluatePriceGroup, Orb::Internal::Util::AnyHash)])
          .returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({data: T::Array[Orb::Models::EvaluatePriceGroup]}) }
      def to_hash
      end
    end
  end
end
