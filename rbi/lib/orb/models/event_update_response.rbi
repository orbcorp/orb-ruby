# typed: strong

module Orb
  module Models
    class EventUpdateResponse < Orb::BaseModel
      sig { returns(String) }
      def amended
      end

      sig { params(_: String).returns(String) }
      def amended=(_)
      end

      sig { params(amended: String).void }
      def initialize(amended:)
      end

      sig { override.returns({amended: String}) }
      def to_hash
      end
    end
  end
end
