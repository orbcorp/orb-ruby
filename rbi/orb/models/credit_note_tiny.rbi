# typed: strong

module Orb
  module Models
    class CreditNoteTiny < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::CreditNoteTiny, Orb::Internal::AnyHash) }

      # The id of the Credit note
      sig { returns(String) }
      attr_accessor :id

      sig { params(id: String).returns(T.attached_class) }
      def self.new(
        # The id of the Credit note
        id:
      )
      end

      sig { override.returns({ id: String }) }
      def to_hash
      end
    end
  end
end
