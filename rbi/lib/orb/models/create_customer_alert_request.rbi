# typed: strong

module Orb
  module Models
    class CreateCustomerAlertRequest < Orb::BaseModel
      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { returns(Symbol) }
      def type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def type=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::ThresholdModel])) }
      def thresholds
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::ThresholdModel]))
          .returns(T.nilable(T::Array[Orb::Models::ThresholdModel]))
      end
      def thresholds=(_)
      end

      sig { params(currency: String, type: Symbol, thresholds: T.nilable(T::Array[Orb::Models::ThresholdModel])).void }
      def initialize(currency:, type:, thresholds: nil)
      end

      sig do
        override
          .returns({currency: String, type: Symbol, thresholds: T.nilable(T::Array[Orb::Models::ThresholdModel])})
      end
      def to_hash
      end

      class Type < Orb::Enum
        abstract!

        USAGE_EXCEEDED = :usage_exceeded
        COST_EXCEEDED = :cost_exceeded
        CREDIT_BALANCE_DEPLETED = :credit_balance_depleted
        CREDIT_BALANCE_DROPPED = :credit_balance_dropped
        CREDIT_BALANCE_RECOVERED = :credit_balance_recovered

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
