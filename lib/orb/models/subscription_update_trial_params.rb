# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionUpdateTrialParams < Orb::BaseModel
      # @!parse
      #   extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute trial_end_date
      #   The new date that the trial should end, or the literal string `immediate` to end
      #     the trial immediately.
      #
      #   @return [Time, Symbol]
      required :trial_end_date, union: -> { Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate }

      # @!attribute [r] shift
      #   If true, shifts subsequent price and adjustment intervals (preserving their
      #     durations, but adjusting their absolute dates).
      #
      #   @return [Boolean, nil]
      optional :shift, Orb::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :shift

      # @!parse
      #   # @param trial_end_date [Time, Symbol]
      #   # @param shift [Boolean]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(trial_end_date:, shift: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # The new date that the trial should end, or the literal string `immediate` to end
      #   the trial immediately.
      module TrialEndDate
        extend Orb::Union

        variant Time

        variant const: -> { Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate::IMMEDIATE }

        # @!parse
        #   # @return [Array(Time, Symbol)]
        #   def self.variants; end

        # @!group

        IMMEDIATE = :immediate

        # @!endgroup
      end
    end
  end
end
