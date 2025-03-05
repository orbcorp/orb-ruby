# typed: strong

module Orb
  module Models
    class PriceIntervalFixedFeeQuantityTransitionModel < Orb::BaseModel
      sig { returns(Time) }
      def effective_date
      end

      sig { params(_: Time).returns(Time) }
      def effective_date=(_)
      end

      sig { returns(Integer) }
      def quantity
      end

      sig { params(_: Integer).returns(Integer) }
      def quantity=(_)
      end

      sig { params(effective_date: Time, quantity: Integer).void }
      def initialize(effective_date:, quantity:)
      end

      sig { override.returns({effective_date: Time, quantity: Integer}) }
      def to_hash
      end
    end
  end
end
