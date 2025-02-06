# typed: strong

module Orb
  module Models
    class EventDeprecateResponse < Orb::BaseModel
      Shape = T.type_alias { {deprecated: String} }

      sig { returns(String) }
      attr_accessor :deprecated

      sig { params(deprecated: String).void }
      def initialize(deprecated:); end

      sig { returns(Orb::Models::EventDeprecateResponse::Shape) }
      def to_h; end
    end
  end
end
