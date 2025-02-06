# typed: strong

module Orb
  module Models
    class EventDeprecateResponse < Orb::BaseModel
      sig { returns(String) }
      attr_accessor :deprecated

      sig { params(deprecated: String).void }
      def initialize(deprecated:)
      end

      sig { override.returns({deprecated: String}) }
      def to_hash
      end
    end
  end
end
