# typed: strong

module Orb
  module Models
    class PaymentAttemptModel < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(String) }
      def amount
      end

      sig { params(_: String).returns(String) }
      def amount=(_)
      end

      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def payment_provider
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def payment_provider=(_)
      end

      sig { returns(T.nilable(String)) }
      def payment_provider_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def payment_provider_id=(_)
      end

      sig { returns(T::Boolean) }
      def succeeded
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def succeeded=(_)
      end

      sig do
        params(
          id: String,
          amount: String,
          created_at: Time,
          payment_provider: T.nilable(Symbol),
          payment_provider_id: T.nilable(String),
          succeeded: T::Boolean
        )
          .void
      end
      def initialize(id:, amount:, created_at:, payment_provider:, payment_provider_id:, succeeded:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              amount: String,
              created_at: Time,
              payment_provider: T.nilable(Symbol),
              payment_provider_id: T.nilable(String),
              succeeded: T::Boolean
            }
          )
      end
      def to_hash
      end

      class PaymentProvider < Orb::Enum
        abstract!

        STRIPE = T.let(:stripe, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
