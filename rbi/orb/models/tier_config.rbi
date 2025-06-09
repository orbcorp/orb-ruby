# typed: strong

module Orb
  module Models
    class TierConfig < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::TierConfig, Orb::Internal::AnyHash) }

      sig { returns(Float) }
      attr_accessor :first_unit

      sig { returns(T.nilable(Float)) }
      attr_accessor :last_unit

      sig { returns(String) }
      attr_accessor :unit_amount

      sig do
        params(
          first_unit: Float,
          last_unit: T.nilable(Float),
          unit_amount: String
        ).returns(T.attached_class)
      end
      def self.new(first_unit:, last_unit:, unit_amount:)
      end

      sig do
        override.returns(
          {
            first_unit: Float,
            last_unit: T.nilable(Float),
            unit_amount: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
