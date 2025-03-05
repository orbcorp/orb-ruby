# typed: strong

module Orb
  module Models
    class RemoveSubscriptionPriceParams < Orb::BaseModel
      sig { returns(T.nilable(String)) }
      def external_price_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_price_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def price_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def price_id=(_)
      end

      sig { params(external_price_id: T.nilable(String), price_id: T.nilable(String)).void }
      def initialize(external_price_id: nil, price_id: nil)
      end

      sig { override.returns({external_price_id: T.nilable(String), price_id: T.nilable(String)}) }
      def to_hash
      end
    end
  end
end
