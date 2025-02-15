# typed: strong

module Orb
  module Models
    class TopLevelPingResponse < Orb::BaseModel
      sig { returns(String) }
      def response
      end

      sig { params(_: String).returns(String) }
      def response=(_)
      end

      sig { params(response: String).void }
      def initialize(response:)
      end

      sig { override.returns({response: String}) }
      def to_hash
      end
    end
  end
end
