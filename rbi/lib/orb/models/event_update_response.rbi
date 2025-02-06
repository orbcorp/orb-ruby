# typed: strong

module Orb
  module Models
    class EventUpdateResponse < Orb::BaseModel
      sig { returns(String) }
      attr_accessor :amended

      sig { params(amended: String).void }
      def initialize(amended:)
      end

      sig { override.returns({amended: String}) }
      def to_hash
      end
    end
  end
end
