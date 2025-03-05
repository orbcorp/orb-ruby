# typed: strong

module Orb
  module Models
    class UnitConfigModel < Orb::BaseModel
      sig { returns(String) }
      def unit_amount
      end

      sig { params(_: String).returns(String) }
      def unit_amount=(_)
      end

      sig { params(unit_amount: String).void }
      def initialize(unit_amount:)
      end

      sig { override.returns({unit_amount: String}) }
      def to_hash
      end
    end
  end
end
