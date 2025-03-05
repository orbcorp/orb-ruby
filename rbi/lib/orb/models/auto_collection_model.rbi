# typed: strong

module Orb
  module Models
    class AutoCollectionModel < Orb::BaseModel
      sig { returns(T.nilable(T::Boolean)) }
      def enabled
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def enabled=(_)
      end

      sig { returns(T.nilable(Time)) }
      def next_attempt_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def next_attempt_at=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def num_attempts
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def num_attempts=(_)
      end

      sig { returns(T.nilable(Time)) }
      def previously_attempted_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def previously_attempted_at=(_)
      end

      sig do
        params(
          enabled: T.nilable(T::Boolean),
          next_attempt_at: T.nilable(Time),
          num_attempts: T.nilable(Integer),
          previously_attempted_at: T.nilable(Time)
        )
          .void
      end
      def initialize(enabled:, next_attempt_at:, num_attempts:, previously_attempted_at:)
      end

      sig do
        override
          .returns(
            {
              enabled: T.nilable(T::Boolean),
              next_attempt_at: T.nilable(Time),
              num_attempts: T.nilable(Integer),
              previously_attempted_at: T.nilable(Time)
            }
          )
      end
      def to_hash
      end
    end
  end
end
