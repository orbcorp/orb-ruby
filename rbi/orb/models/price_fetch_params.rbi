# typed: strong

module Orb
  module Models
    class PriceFetchParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      sig do
        params(request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)).returns(T.attached_class)
      end
      def self.new(request_options: {}); end

      sig { override.returns({request_options: Orb::RequestOptions}) }
      def to_hash; end
    end
  end
end
