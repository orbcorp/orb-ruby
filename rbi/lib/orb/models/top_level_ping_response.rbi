# typed: strong

module Orb
  module Models
    class TopLevelPingResponse < Orb::BaseModel
      sig { returns(String) }
      attr_accessor :response

      sig { params(response: String).returns(T.attached_class) }
      def self.new(response:)
      end

      sig { override.returns({response: String}) }
      def to_hash
      end
    end
  end
end
