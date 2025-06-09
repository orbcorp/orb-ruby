# typed: strong

module Orb
  module Models
    class Tier < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::Tier, Orb::Internal::AnyHash) }

      # Exclusive tier starting value
      sig { returns(Float) }
      attr_accessor :first_unit

      # Amount per unit
      sig { returns(String) }
      attr_accessor :unit_amount

      # Inclusive tier ending value. If null, this is treated as the last tier
      sig { returns(T.nilable(Float)) }
      attr_accessor :last_unit

      sig do
        params(
          first_unit: Float,
          unit_amount: String,
          last_unit: T.nilable(Float)
        ).returns(T.attached_class)
      end
      def self.new(
        # Exclusive tier starting value
        first_unit:,
        # Amount per unit
        unit_amount:,
        # Inclusive tier ending value. If null, this is treated as the last tier
        last_unit: nil
      )
      end

      sig do
        override.returns(
          {
            first_unit: Float,
            unit_amount: String,
            last_unit: T.nilable(Float)
          }
        )
      end
      def to_hash
      end
    end
  end
end
