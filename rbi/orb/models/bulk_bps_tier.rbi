# typed: strong

module Orb
  module Models
    class BulkBPSTier < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::BulkBPSTier, Orb::Internal::AnyHash) }

      # Basis points to rate on
      sig { returns(Float) }
      attr_accessor :bps

      # Upper bound for tier
      sig { returns(T.nilable(String)) }
      attr_accessor :maximum_amount

      # The maximum amount to charge for any one event
      sig { returns(T.nilable(String)) }
      attr_accessor :per_unit_maximum

      sig do
        params(
          bps: Float,
          maximum_amount: T.nilable(String),
          per_unit_maximum: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Basis points to rate on
        bps:,
        # Upper bound for tier
        maximum_amount: nil,
        # The maximum amount to charge for any one event
        per_unit_maximum: nil
      )
      end

      sig do
        override.returns(
          {
            bps: Float,
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
