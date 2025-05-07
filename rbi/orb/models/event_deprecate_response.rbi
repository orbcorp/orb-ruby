# typed: strong

module Orb
  module Models
    class EventDeprecateResponse < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

      # event_id of the deprecated event, if successfully updated
      sig { returns(String) }
      attr_accessor :deprecated

      sig { params(deprecated: String).returns(T.attached_class) }
      def self.new(
        # event_id of the deprecated event, if successfully updated
        deprecated:
      )
      end

      sig { override.returns({ deprecated: String }) }
      def to_hash
      end
    end
  end
end
