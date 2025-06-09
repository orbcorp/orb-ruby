# frozen_string_literal: true

module Orb
  module Models
    class SubLineItemGrouping < Orb::Internal::Type::BaseModel
      # @!attribute key
      #
      #   @return [String]
      required :key, String

      # @!attribute value
      #   No value indicates the default group
      #
      #   @return [String, nil]
      required :value, String, nil?: true

      # @!method initialize(key:, value:)
      #   @param key [String]
      #
      #   @param value [String, nil] No value indicates the default group
    end
  end
end
