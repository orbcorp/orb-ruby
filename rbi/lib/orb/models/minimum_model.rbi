# typed: strong

module Orb
  module Models
    class MinimumModel < Orb::BaseModel
      sig { returns(T::Array[String]) }
      def applies_to_price_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def applies_to_price_ids=(_)
      end

      sig { returns(String) }
      def minimum_amount
      end

      sig { params(_: String).returns(String) }
      def minimum_amount=(_)
      end

      sig { params(applies_to_price_ids: T::Array[String], minimum_amount: String).void }
      def initialize(applies_to_price_ids:, minimum_amount:)
      end

      sig { override.returns({applies_to_price_ids: T::Array[String], minimum_amount: String}) }
      def to_hash
      end
    end
  end
end
