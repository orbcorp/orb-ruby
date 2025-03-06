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
      #   @return [Time, Symbol, Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate::UnionMember1]
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
      #   # @param trial_end_date [Time, Symbol, Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate::UnionMember1]
      #   # @param shift [Boolean]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(trial_end_date:, shift: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      #
      # The new date that the trial should end, or the literal string `immediate` to end
      #   the trial immediately.
      class TrialEndDate < Orb::Union
        variant Time

        variant enum: -> { Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate::UnionMember1 }

        # @abstract
        #
        class UnionMember1 < Orb::Enum
          IMMEDIATE = :immediate

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
