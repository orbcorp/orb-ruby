# typed: strong

module Orb
  module Models
    class ItemSlim < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::ItemSlim, Orb::Internal::AnyHash) }

      # The Orb-assigned unique identifier for the item.
      sig { returns(String) }
      attr_accessor :id

      # The name of the item.
      sig { returns(String) }
      attr_accessor :name

      # A minimal representation of an Item containing only the essential identifying
      # information.
      sig { params(id: String, name: String).returns(T.attached_class) }
      def self.new(
        # The Orb-assigned unique identifier for the item.
        id:,
        # The name of the item.
        name:
      )
      end

      sig { override.returns({ id: String, name: String }) }
      def to_hash
      end
    end
  end
end
