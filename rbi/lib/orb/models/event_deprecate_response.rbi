# typed: strong

module Orb
  module Models
    class EventDeprecateResponse < Orb::BaseModel
      sig { returns(String) }
      def deprecated
      end

      sig { params(_: String).returns(String) }
      def deprecated=(_)
      end

      sig { params(deprecated: String).void }
      def initialize(deprecated:)
      end

      sig { override.returns({deprecated: String}) }
      def to_hash
      end
    end
  end
end
