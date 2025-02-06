# typed: strong

module Orb
  module Models
    class EventUpdateResponse < Orb::BaseModel
      Shape = T.type_alias { {amended: String} }

      sig { returns(String) }
      attr_accessor :amended

      sig { params(amended: String).void }
      def initialize(amended:); end

      sig { returns(Orb::Models::EventUpdateResponse::Shape) }
      def to_h; end
    end
  end
end
