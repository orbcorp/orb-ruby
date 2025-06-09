# typed: strong

module Orb
  module Models
    class BulkTier < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::BulkTier, Orb::Internal::AnyHash) }

      # Amount per unit
      sig { returns(String) }
      attr_accessor :unit_amount

      # Upper bound for this tier
      sig { returns(T.nilable(Float)) }
      attr_accessor :maximum_units

      sig do
        params(unit_amount: String, maximum_units: T.nilable(Float)).returns(
          T.attached_class
        )
      end
      def self.new(
        # Amount per unit
        unit_amount:,
        # Upper bound for this tier
        maximum_units: nil
      )
      end

      sig do
        override.returns(
          { unit_amount: String, maximum_units: T.nilable(Float) }
        )
      end
      def to_hash
      end
    end
  end
end
