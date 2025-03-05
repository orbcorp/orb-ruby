# typed: strong

module Orb
  module Models
    class UpdatePriceRequestParams < Orb::BaseModel
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      def metadata
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
          .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
      end
      def metadata=(_)
      end

      sig { params(metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])).void }
      def initialize(metadata: nil)
      end

      sig { override.returns({metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])}) }
      def to_hash
      end
    end
  end
end
