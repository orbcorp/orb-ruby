# typed: strong

module Orb
  module Models
    class ItemArchiveParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::ItemArchiveParams, Orb::Internal::AnyHash) }

      sig do
        params(request_options: Orb::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Orb::RequestOptions }) }
      def to_hash
      end
    end
  end
end
