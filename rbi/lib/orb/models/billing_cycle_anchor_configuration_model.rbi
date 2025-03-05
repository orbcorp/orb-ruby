# typed: strong

module Orb
  module Models
    class BillingCycleAnchorConfigurationModel < Orb::BaseModel
      sig { returns(Integer) }
      def day
      end

      sig { params(_: Integer).returns(Integer) }
      def day=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def month
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def month=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def year
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def year=(_)
      end

      sig { params(day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)).void }
      def initialize(day:, month: nil, year: nil)
      end

      sig { override.returns({day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)}) }
      def to_hash
      end
    end
  end
end
