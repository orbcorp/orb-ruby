# typed: strong

module Orb
  module Models
    class BPSTier < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::BPSTier, Orb::Internal::AnyHash) }

      # Per-event basis point rate
      sig { returns(Float) }
      attr_accessor :bps

      # Exclusive tier starting value
      sig { returns(String) }
      attr_accessor :minimum_amount

      # Inclusive tier ending value
      sig { returns(T.nilable(String)) }
      attr_accessor :maximum_amount

      # Per unit maximum to charge
      sig { returns(T.nilable(String)) }
      attr_accessor :per_unit_maximum

      sig do
        params(
          bps: Float,
          minimum_amount: String,
          maximum_amount: T.nilable(String),
          per_unit_maximum: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Per-event basis point rate
        bps:,
        # Exclusive tier starting value
        minimum_amount:,
        # Inclusive tier ending value
        maximum_amount: nil,
        # Per unit maximum to charge
        per_unit_maximum: nil
      )
      end

      sig do
        override.returns(
          {
            bps: Float,
            minimum_amount: String,
            maximum_amount: T.nilable(String),
            per_unit_maximum: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
