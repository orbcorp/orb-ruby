# frozen_string_literal: true

module Orb
  module Models
    module SubscriptionStatusFilter
      extend Orb::Internal::Type::Enum

      ACTIVE = :active
      ENDED = :ended
      UPCOMING = :upcoming

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
