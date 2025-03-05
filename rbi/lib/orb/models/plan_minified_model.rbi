# typed: strong

module Orb
  module Models
    class PlanMinifiedModel < Orb::BaseModel
      sig { returns(T.nilable(String)) }
      def id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def id=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_plan_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_plan_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      sig { params(id: T.nilable(String), external_plan_id: T.nilable(String), name: T.nilable(String)).void }
      def initialize(id:, external_plan_id:, name:)
      end

      sig do
        override.returns(
          {
            id: T.nilable(String),
            external_plan_id: T.nilable(String),
            name: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
