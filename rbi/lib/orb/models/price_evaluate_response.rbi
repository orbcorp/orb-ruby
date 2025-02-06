# typed: strong

module Orb
  module Models
    class PriceEvaluateResponse < Orb::BaseModel
      Shape = T.type_alias { {data: T::Array[Orb::Models::EvaluatePriceGroup]} }

      sig { returns(T::Array[Orb::Models::EvaluatePriceGroup]) }
      attr_accessor :data

      sig { params(data: T::Array[Orb::Models::EvaluatePriceGroup]).void }
      def initialize(data:); end

      sig { returns(Orb::Models::PriceEvaluateResponse::Shape) }
      def to_h; end
    end
  end
end
