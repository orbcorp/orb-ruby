# typed: strong

module Orb
  module Models
    class ItemCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # The name of the item.
      sig { returns(String) }
      attr_accessor :name

      sig do
        params(name: String, request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash))
          .returns(T.attached_class)
      end
      def self.new(name:, request_options: {}); end

      sig { override.returns({name: String, request_options: Orb::RequestOptions}) }
      def to_hash; end
    end
  end
end
