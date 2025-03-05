# typed: strong

module Orb
  module Models
    class AllocationModel < Orb::BaseModel
      sig { returns(T::Boolean) }
      def allows_rollover
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def allows_rollover=(_)
      end

      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { params(allows_rollover: T::Boolean, currency: String).void }
      def initialize(allows_rollover:, currency:)
      end

      sig { override.returns({allows_rollover: T::Boolean, currency: String}) }
      def to_hash
      end
    end
  end
end
