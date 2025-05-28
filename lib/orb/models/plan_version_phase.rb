# frozen_string_literal: true

module Orb
  module Models
    class PlanVersionPhase < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute description
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute duration
      #   How many terms of length `duration_unit` this phase is active for. If null, this
      #   phase is evergreen and active indefinitely
      #
      #   @return [Integer, nil]
      required :duration, Integer, nil?: true

      # @!attribute duration_unit
      #
      #   @return [Symbol, Orb::Models::PlanVersionPhase::DurationUnit, nil]
      required :duration_unit, enum: -> { Orb::PlanVersionPhase::DurationUnit }, nil?: true

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute order
      #   Determines the ordering of the phase in a plan's lifecycle. 1 = first phase.
      #
      #   @return [Integer]
      required :order, Integer

      # @!method initialize(id:, description:, duration:, duration_unit:, name:, order:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::PlanVersionPhase} for more details.
      #
      #   @param id [String]
      #
      #   @param description [String, nil]
      #
      #   @param duration [Integer, nil] How many terms of length `duration_unit` this phase is active for. If null, this
      #
      #   @param duration_unit [Symbol, Orb::Models::PlanVersionPhase::DurationUnit, nil]
      #
      #   @param name [String]
      #
      #   @param order [Integer] Determines the ordering of the phase in a plan's lifecycle. 1 = first phase.

      # @see Orb::Models::PlanVersionPhase#duration_unit
      module DurationUnit
        extend Orb::Internal::Type::Enum

        DAILY = :daily
        MONTHLY = :monthly
        QUARTERLY = :quarterly
        SEMI_ANNUAL = :semi_annual
        ANNUAL = :annual

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
