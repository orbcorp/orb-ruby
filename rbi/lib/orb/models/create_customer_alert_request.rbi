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

      sig { returns(T.nilable(T::Array[Orb::Models::CreateCustomerAlertRequest::Threshold])) }
      def thresholds
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::CreateCustomerAlertRequest::Threshold]))
          .returns(T.nilable(T::Array[Orb::Models::CreateCustomerAlertRequest::Threshold]))
      end
      def thresholds=(_)
      end

      sig do
        params(
          currency: String,
          type: Symbol,
          thresholds: T.nilable(T::Array[Orb::Models::CreateCustomerAlertRequest::Threshold])
        )
          .void
      end
      def initialize(currency:, type:, thresholds: nil)
      end

      sig do
        override
          .returns(
            {
              currency: String,
              type: Symbol,
              thresholds: T.nilable(T::Array[Orb::Models::CreateCustomerAlertRequest::Threshold])
            }
          )
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

      class Threshold < Orb::BaseModel
        sig { returns(Float) }
        def value
        end

        sig { params(_: Float).returns(Float) }
        def value=(_)
        end

        sig { params(value: Float).void }
        def initialize(value:)
        end

        sig { override.returns({value: Float}) }
        def to_hash
        end
      end
    end
  end
end
