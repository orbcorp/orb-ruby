# typed: strong

module Orb
  module Models
    module BillingCycleRelativeDate
      extend Orb::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::BillingCycleRelativeDate) }
      OrSymbol = T.type_alias { T.any(Symbol, Orb::Models::BillingCycleRelativeDate::TaggedSymbol) }

      START_OF_TERM = T.let(:start_of_term, Orb::Models::BillingCycleRelativeDate::TaggedSymbol)
      END_OF_TERM = T.let(:end_of_term, Orb::Models::BillingCycleRelativeDate::TaggedSymbol)

      class << self
        sig { override.returns(T::Array[Orb::Models::BillingCycleRelativeDate::TaggedSymbol]) }
        def values
        end
      end
    end
  end
end
