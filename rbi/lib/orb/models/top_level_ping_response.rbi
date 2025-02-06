# typed: strong

module Orb
  module Models
    class TopLevelPingResponse < Orb::BaseModel
      Shape = T.type_alias { {response: String} }

      sig { returns(String) }
      attr_accessor :response

      sig { params(response: String).void }
      def initialize(response:); end

      sig { returns(Orb::Models::TopLevelPingResponse::Shape) }
      def to_h; end
    end
  end
end
