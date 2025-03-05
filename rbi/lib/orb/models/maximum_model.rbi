# typed: strong

module Orb
  module Models
    class MaximumModel < Orb::BaseModel
      sig { returns(T::Array[String]) }
      def applies_to_price_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def applies_to_price_ids=(_)
      end

      sig { returns(String) }
      def maximum_amount
      end

      sig { params(_: String).returns(String) }
      def maximum_amount=(_)
      end

      sig { params(applies_to_price_ids: T::Array[String], maximum_amount: String).void }
      def initialize(applies_to_price_ids:, maximum_amount:)
      end

      sig { override.returns({applies_to_price_ids: T::Array[String], maximum_amount: String}) }
      def to_hash
      end
    end
  end
end
