# typed: strong

module Orb
  module Models
    class EventUpdateResponse < Orb::Internal::Type::BaseModel
      # event_id of the amended event, if successfully ingested
      sig { returns(String) }
      attr_accessor :amended

      sig { params(amended: String).returns(T.attached_class) }
      def self.new(amended:); end

      sig { override.returns({amended: String}) }
      def to_hash; end
    end
  end
end
