# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#update_trial
    class SubscriptionUpdateTrialParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute trial_end_date
      #   The new date that the trial should end, or the literal string `immediate` to end
      #   the trial immediately.
      #
      #   @return [Time, Symbol, Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate]
      required :trial_end_date, union: -> { Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate }

      # @!attribute shift
      #   If true, shifts subsequent price and adjustment intervals (preserving their
      #   durations, but adjusting their absolute dates).
      #
      #   @return [Boolean, nil]
      optional :shift, Orb::Internal::Type::Boolean

      # @!method initialize(trial_end_date:, shift: nil, request_options: {})
      #   @param trial_end_date [Time, Symbol, Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate]
      #   @param shift [Boolean]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      # The new date that the trial should end, or the literal string `immediate` to end
      # the trial immediately.
      module TrialEndDate
        extend Orb::Internal::Type::Union

        variant Time

        variant const: -> { Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate::IMMEDIATE }

        # @!method self.variants
        #   @return [Array(Time, Symbol)]

        # @!group

        IMMEDIATE = :immediate

        # @!endgroup
      end
    end
  end
end
