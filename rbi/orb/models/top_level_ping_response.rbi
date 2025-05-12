# typed: strong

module Orb
  module Models
    class TopLevelPingResponse < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::Models::TopLevelPingResponse, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :response

      sig { params(response: String).returns(T.attached_class) }
      def self.new(response:)
      end

      sig { override.returns({ response: String }) }
      def to_hash
      end
    end
  end
end
