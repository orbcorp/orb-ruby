# typed: strong

module Orb
  module Models
    module BillingCycleRelativeDate
      extend Orb::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Orb::BillingCycleRelativeDate) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      START_OF_TERM =
        T.let(:start_of_term, Orb::BillingCycleRelativeDate::TaggedSymbol)
      END_OF_TERM =
        T.let(:end_of_term, Orb::BillingCycleRelativeDate::TaggedSymbol)

      sig do
        override.returns(T::Array[Orb::BillingCycleRelativeDate::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
