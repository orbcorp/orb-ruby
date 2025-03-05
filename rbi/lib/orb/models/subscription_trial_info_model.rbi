# typed: strong

module Orb
  module Models
    class SubscriptionTrialInfoModel < Orb::BaseModel
      sig { returns(T.nilable(Time)) }
      def end_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def end_date=(_)
      end

      sig { params(end_date: T.nilable(Time)).void }
      def initialize(end_date:)
      end

      sig { override.returns({end_date: T.nilable(Time)}) }
      def to_hash
      end
    end
  end
end
