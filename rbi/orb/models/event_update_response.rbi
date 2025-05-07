# typed: strong

module Orb
  module Models
    class EventUpdateResponse < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

      # event_id of the amended event, if successfully ingested
      sig { returns(String) }
      attr_accessor :amended

      sig { params(amended: String).returns(T.attached_class) }
      def self.new(
        # event_id of the amended event, if successfully ingested
        amended:
      )
      end

      sig { override.returns({ amended: String }) }
      def to_hash
      end
    end
  end
end
