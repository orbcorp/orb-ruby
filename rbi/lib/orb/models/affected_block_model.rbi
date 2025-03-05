# typed: strong

module Orb
  module Models
    class AffectedBlockModel < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(Time)) }
      def expiry_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def expiry_date=(_)
      end

      sig { returns(T.nilable(String)) }
      def per_unit_cost_basis
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def per_unit_cost_basis=(_)
      end

      sig { params(id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String)).void }
      def initialize(id:, expiry_date:, per_unit_cost_basis:)
      end

      sig do
        override.returns({id: String, expiry_date: T.nilable(Time), per_unit_cost_basis: T.nilable(String)})
      end
      def to_hash
      end
    end
  end
end
