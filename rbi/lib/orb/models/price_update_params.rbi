# typed: strong

module Orb
  module Models
    class PriceUpdateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      def metadata
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
          .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
      end
      def metadata=(_)
      end

      sig do
        params(
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(metadata: nil, request_options: {})
      end

      sig do
        override
          .returns({
                     metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                     request_options: Orb::RequestOptions
                   })
      end
      def to_hash
      end
    end
  end
end
