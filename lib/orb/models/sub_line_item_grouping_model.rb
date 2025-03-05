# frozen_string_literal: true

module Orb
  module Models
    class SubLineItemGroupingModel < Orb::BaseModel
      # @!attribute key
      #
      #   @return [String]
      required :key, String

      # @!attribute value
      #   No value indicates the default group
      #
      #   @return [String, nil]
      required :value, String, nil?: true

      # @!parse
      #   # @param key [String]
      #   # @param value [String, nil]
      #   #
      #   def initialize(key:, value:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
