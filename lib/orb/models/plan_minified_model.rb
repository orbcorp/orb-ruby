# frozen_string_literal: true

module Orb
  module Models
    class PlanMinifiedModel < Orb::BaseModel
      # @!attribute id
      #
      #   @return [String, nil]
      required :id, String, nil?: true

      # @!attribute external_plan_id
      #   An optional user-defined ID for this plan resource, used throughout the system
      #     as an alias for this Plan. Use this field to identify a plan by an existing
      #     identifier in your system.
      #
      #   @return [String, nil]
      required :external_plan_id, String, nil?: true

      # @!attribute name
      #
      #   @return [String, nil]
      required :name, String, nil?: true

      # @!parse
      #   # @param id [String, nil]
      #   # @param external_plan_id [String, nil]
      #   # @param name [String, nil]
      #   #
      #   def initialize(id:, external_plan_id:, name:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
