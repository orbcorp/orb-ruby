# typed: strong

module Orb
  module Models
    class BpsConfigModel < Orb::BaseModel
      sig { returns(Float) }
      def bps
      end

      sig { params(_: Float).returns(Float) }
      def bps=(_)
      end

      sig { returns(T.nilable(String)) }
      def per_unit_maximum
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def per_unit_maximum=(_)
      end

      sig { params(bps: Float, per_unit_maximum: T.nilable(String)).void }
      def initialize(bps:, per_unit_maximum: nil)
      end

      sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
      def to_hash
      end
    end
  end
end
