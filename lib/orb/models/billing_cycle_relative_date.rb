# frozen_string_literal: true

module Orb
  module Models
    # @abstract
    class BillingCycleRelativeDate < Orb::Enum
      START_OF_TERM = :start_of_term
      END_OF_TERM = :end_of_term

      finalize!
    end
  end
end
