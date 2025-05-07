# typed: strong

module Orb
  module Models
    class ItemCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash = T.type_alias { T.any(T.self_type, Orb::Internal::AnyHash) }

      # The name of the item.
      sig { returns(String) }
      attr_accessor :name

      sig do
        params(
          name: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The name of the item.
        name:,
        request_options: {}
      )
      end

      sig do
        override.returns({ name: String, request_options: Orb::RequestOptions })
      end
      def to_hash
      end
    end
  end
end
