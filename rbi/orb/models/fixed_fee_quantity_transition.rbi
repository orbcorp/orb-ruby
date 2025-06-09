# typed: strong

module Orb
  module Models
    class FixedFeeQuantityTransition < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::FixedFeeQuantityTransition, Orb::Internal::AnyHash)
        end

      sig { returns(Time) }
      attr_accessor :effective_date

      sig { returns(String) }
      attr_accessor :price_id

      sig { returns(Integer) }
      attr_accessor :quantity

      sig do
        params(
          effective_date: Time,
          price_id: String,
          quantity: Integer
        ).returns(T.attached_class)
      end
      def self.new(effective_date:, price_id:, quantity:)
      end

      sig do
        override.returns(
          { effective_date: Time, price_id: String, quantity: Integer }
        )
      end
      def to_hash
      end
    end
  end
end
