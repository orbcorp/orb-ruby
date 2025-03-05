# typed: strong

module Orb
  module Models
    class NewAllocationPriceModel < Orb::BaseModel
      sig { returns(String) }
      def amount
      end

      sig { params(_: String).returns(String) }
      def amount=(_)
      end

      sig { returns(Symbol) }
      def cadence
      end

      sig { params(_: Symbol).returns(Symbol) }
      def cadence=(_)
      end

      sig { returns(String) }
      def currency
      end

      sig { params(_: String).returns(String) }
      def currency=(_)
      end

      sig { returns(T::Boolean) }
      def expires_at_end_of_cadence
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def expires_at_end_of_cadence=(_)
      end

      sig do
        params(amount: String, cadence: Symbol, currency: String, expires_at_end_of_cadence: T::Boolean).void
      end
      def initialize(amount:, cadence:, currency:, expires_at_end_of_cadence:)
      end

      sig do
        override
          .returns({amount: String, cadence: Symbol, currency: String, expires_at_end_of_cadence: T::Boolean})
      end
      def to_hash
      end

      class Cadence < Orb::Enum
        abstract!

        ONE_TIME = :one_time
        MONTHLY = :monthly
        QUARTERLY = :quarterly
        SEMI_ANNUAL = :semi_annual
        ANNUAL = :annual
        CUSTOM = :custom

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
