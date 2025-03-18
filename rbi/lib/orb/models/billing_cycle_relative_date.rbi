# typed: strong

module Orb
  module Models
    class BillingCycleRelativeDate < Orb::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      START_OF_TERM = :start_of_term
      END_OF_TERM = :end_of_term
    end
  end
end
