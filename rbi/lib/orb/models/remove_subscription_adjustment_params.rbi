# typed: strong

module Orb
  module Models
    class RemoveSubscriptionAdjustmentParams < Orb::BaseModel
      sig { returns(String) }
      def adjustment_id
      end

      sig { params(_: String).returns(String) }
      def adjustment_id=(_)
      end

      sig { params(adjustment_id: String).void }
      def initialize(adjustment_id:)
      end

      sig { override.returns({adjustment_id: String}) }
      def to_hash
      end
    end
  end
end
