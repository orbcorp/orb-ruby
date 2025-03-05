# typed: strong

module Orb
  module Models
    class ThresholdModel < Orb::BaseModel
      sig { returns(Float) }
      def value
      end

      sig { params(_: Float).returns(Float) }
      def value=(_)
      end

      sig { params(value: Float).void }
      def initialize(value:)
      end

      sig { override.returns({value: Float}) }
      def to_hash
      end
    end
  end
end
