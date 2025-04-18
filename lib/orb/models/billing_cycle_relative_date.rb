# frozen_string_literal: true

module Orb
  module Models
    module BillingCycleRelativeDate
      extend Orb::Internal::Type::Enum

      START_OF_TERM = :start_of_term
      END_OF_TERM = :end_of_term

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
