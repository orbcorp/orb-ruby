# typed: strong

module Orb
  module Models
    module SubscriptionStatusFilter
      extend Orb::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Orb::SubscriptionStatusFilter) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACTIVE = T.let(:active, Orb::SubscriptionStatusFilter::TaggedSymbol)
      ENDED = T.let(:ended, Orb::SubscriptionStatusFilter::TaggedSymbol)
      UPCOMING = T.let(:upcoming, Orb::SubscriptionStatusFilter::TaggedSymbol)

      sig do
        override.returns(T::Array[Orb::SubscriptionStatusFilter::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
