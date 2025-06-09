# typed: strong

module Orb
  module Models
    class UnitConfig < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::UnitConfig, Orb::Internal::AnyHash) }

      # Rate per unit of usage
      sig { returns(String) }
      attr_accessor :unit_amount

      sig { params(unit_amount: String).returns(T.attached_class) }
      def self.new(
        # Rate per unit of usage
        unit_amount:
      )
      end

      sig { override.returns({ unit_amount: String }) }
      def to_hash
      end
    end
  end
end
