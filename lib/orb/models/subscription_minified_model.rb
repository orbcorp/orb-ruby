# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionMinifiedModel < Orb::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!parse
      #   # @param id [String]
      #   #
      #   def initialize(id:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
