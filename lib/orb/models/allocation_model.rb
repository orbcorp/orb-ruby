# frozen_string_literal: true

module Orb
  module Models
    class AllocationModel < Orb::BaseModel
      # @!attribute allows_rollover
      #
      #   @return [Boolean]
      required :allows_rollover, Orb::BooleanModel

      # @!attribute currency
      #
      #   @return [String]
      required :currency, String

      # @!parse
      #   # @param allows_rollover [Boolean]
      #   # @param currency [String]
      #   #
      #   def initialize(allows_rollover:, currency:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
