# frozen_string_literal: true

module Orb
  module Models
    class AutoCollectionModel < Orb::BaseModel
      # @!attribute enabled
      #   True only if auto-collection is enabled for this invoice.
      #
      #   @return [Boolean, nil]
      required :enabled, Orb::BooleanModel, nil?: true

      # @!attribute next_attempt_at
      #   If the invoice is scheduled for auto-collection, this field will reflect when
      #     the next attempt will occur. If dunning has been exhausted, or auto-collection
      #     is not enabled for this invoice, this field will be `null`.
      #
      #   @return [Time, nil]
      required :next_attempt_at, Time, nil?: true

      # @!attribute num_attempts
      #   Number of auto-collection payment attempts.
      #
      #   @return [Integer, nil]
      required :num_attempts, Integer, nil?: true

      # @!attribute previously_attempted_at
      #   If Orb has ever attempted payment auto-collection for this invoice, this field
      #     will reflect when that attempt occurred. In conjunction with `next_attempt_at`,
      #     this can be used to tell whether the invoice is currently in dunning (that is,
      #     `previously_attempted_at` is non-null, and `next_attempt_time` is non-null), or
      #     if dunning has been exhausted (`previously_attempted_at` is non-null, but
      #     `next_attempt_time` is null).
      #
      #   @return [Time, nil]
      required :previously_attempted_at, Time, nil?: true

      # @!parse
      #   # @param enabled [Boolean, nil]
      #   # @param next_attempt_at [Time, nil]
      #   # @param num_attempts [Integer, nil]
      #   # @param previously_attempted_at [Time, nil]
      #   #
      #   def initialize(enabled:, next_attempt_at:, num_attempts:, previously_attempted_at:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
