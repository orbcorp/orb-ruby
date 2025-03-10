# typed: strong

module Orb
  module Models
    class BillingCycleRelativeDate < Orb::Enum
      abstract!

      START_OF_TERM = :start_of_term
      END_OF_TERM = :end_of_term

      class << self
        sig { override.returns(T::Array[Symbol]) }
        def values
        end
      end
    end
  end
end
