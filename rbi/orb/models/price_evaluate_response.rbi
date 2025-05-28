# typed: strong

module Orb
  module Models
    class PriceEvaluateResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::Models::PriceEvaluateResponse, Orb::Internal::AnyHash)
        end

      sig { returns(T::Array[Orb::EvaluatePriceGroup]) }
      attr_accessor :data

      sig do
        params(data: T::Array[Orb::EvaluatePriceGroup::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig { override.returns({ data: T::Array[Orb::EvaluatePriceGroup] }) }
      def to_hash
      end
    end
  end
end
