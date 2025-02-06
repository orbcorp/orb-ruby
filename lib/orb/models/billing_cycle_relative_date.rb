# frozen_string_literal: true

module Orb
  module Models
    # @abstract
    #
    # @example
    # ```ruby
    # case billing_cycle_relative_date
    # in :start_of_term
    #   # ...
    # in :end_of_term
    #   # ...
    # end
    # ```
    class BillingCycleRelativeDate < Orb::Enum
      START_OF_TERM = :start_of_term
      END_OF_TERM = :end_of_term

      finalize!

      # @!parse
      #   # @return [Array<Symbol>]
      #   #
      #   def self.values; end
    end
  end
end
