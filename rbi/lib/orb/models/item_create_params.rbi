# typed: strong

module Orb
  module Models
    class ItemCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(String) }
      attr_accessor :name

      sig do
        params(name: String, request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])).void
      end
      def initialize(name:, request_options: {}); end

      sig { override.returns({name: String, request_options: Orb::RequestOptions}) }
      def to_hash; end
    end
  end
end
