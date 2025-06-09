# typed: strong

module Orb
  module Models
    class InvoiceTiny < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::InvoiceTiny, Orb::Internal::AnyHash) }

      # The Invoice id
      sig { returns(String) }
      attr_accessor :id

      sig { params(id: String).returns(T.attached_class) }
      def self.new(
        # The Invoice id
        id:
      )
      end

      sig { override.returns({ id: String }) }
      def to_hash
      end
    end
  end
end
