# frozen_string_literal: true

module Orb
  module Models
    class AffectedBlockModel < Orb::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute expiry_date
      #
      #   @return [Time, nil]
      required :expiry_date, Time, nil?: true

      # @!attribute per_unit_cost_basis
      #
      #   @return [String, nil]
      required :per_unit_cost_basis, String, nil?: true

      # @!parse
      #   # @param id [String]
      #   # @param expiry_date [Time, nil]
      #   # @param per_unit_cost_basis [String, nil]
      #   #
      #   def initialize(id:, expiry_date:, per_unit_cost_basis:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
