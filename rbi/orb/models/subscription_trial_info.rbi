# typed: strong

module Orb
  module Models
    class SubscriptionTrialInfo < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::SubscriptionTrialInfo, Orb::Internal::AnyHash)
        end

      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      sig { params(end_date: T.nilable(Time)).returns(T.attached_class) }
      def self.new(end_date:)
      end

      sig { override.returns({ end_date: T.nilable(Time) }) }
      def to_hash
      end
    end
  end
end
