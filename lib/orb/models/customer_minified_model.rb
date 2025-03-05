# frozen_string_literal: true

module Orb
  module Models
    class CustomerMinifiedModel < Orb::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute external_customer_id
      #
      #   @return [String, nil]
      required :external_customer_id, String, nil?: true

      # @!parse
      #   # @param id [String]
      #   # @param external_customer_id [String, nil]
      #   #
      #   def initialize(id:, external_customer_id:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
