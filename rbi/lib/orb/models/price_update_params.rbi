# typed: strong

module Orb
  module Models
    class PriceUpdateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all({metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])}, Orb::RequestParameters::Shape)
      end

      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      sig do
        params(
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: Orb::RequestOpts
        ).void
      end
      def initialize(metadata: nil, request_options: {}); end

      sig { returns(Orb::Models::PriceUpdateParams::Shape) }
      def to_h; end
    end
  end
end
