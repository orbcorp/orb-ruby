# frozen_string_literal: true

module Orb
  module Models
    class EditPlanModel < Orb::BaseModel
      # @!attribute external_plan_id
      #   An optional user-defined ID for this plan resource, used throughout the system
      #     as an alias for this Plan. Use this field to identify a plan by an existing
      #     identifier in your system.
      #
      #   @return [String, nil]
      optional :external_plan_id, String, nil?: true

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

      # @!parse
      #   # @param external_plan_id [String, nil]
      #   # @param metadata [Hash{Symbol=>String, nil}, nil]
      #   #
      #   def initialize(external_plan_id: nil, metadata: nil, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
