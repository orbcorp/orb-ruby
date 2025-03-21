# frozen_string_literal: true

module Orb
  module Models
    module BillingCycleRelativeDate
      extend Orb::Enum

      START_OF_TERM = :start_of_term
      END_OF_TERM = :end_of_term

      finalize!

      # @!parse
      #   # @return [Array<Symbol>]
      #   def self.values; end
    end
  end
end
