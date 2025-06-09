# frozen_string_literal: true

module Orb
  module Models
    class Allocation < Orb::Internal::Type::BaseModel
      # @!attribute allows_rollover
      #
      #   @return [Boolean]
      required :allows_rollover, Orb::Internal::Type::Boolean

      # @!attribute currency
      #
      #   @return [String]
      required :currency, String

      # @!attribute custom_expiration
      #
      #   @return [Orb::Models::CustomExpiration, nil]
      required :custom_expiration, -> { Orb::CustomExpiration }, nil?: true

      # @!method initialize(allows_rollover:, currency:, custom_expiration:)
      #   @param allows_rollover [Boolean]
      #   @param currency [String]
      #   @param custom_expiration [Orb::Models::CustomExpiration, nil]
    end
  end
end
