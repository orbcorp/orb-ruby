# typed: strong

module Orb
  module Models
    class UnitConfig < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::UnitConfig, Orb::Internal::AnyHash) }

      # Rate per unit of usage
      sig { returns(String) }
      attr_accessor :unit_amount

      # Multiplier to scale rated quantity by
      sig { returns(T.nilable(Float)) }
      attr_accessor :scaling_factor

      # Configuration for unit pricing
      sig do
        params(unit_amount: String, scaling_factor: T.nilable(Float)).returns(
          T.attached_class
        )
      end
      def self.new(
        # Rate per unit of usage
        unit_amount:,
        # Multiplier to scale rated quantity by
        scaling_factor: nil
      )
      end

      sig do
        override.returns(
          { unit_amount: String, scaling_factor: T.nilable(Float) }
        )
      end
      def to_hash
      end
    end
  end
end
