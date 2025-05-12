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
      #   @return [Time, Symbol, Orb::SubscriptionUpdateTrialParams::TrialEndDate]
      required :trial_end_date, union: -> { Orb::SubscriptionUpdateTrialParams::TrialEndDate }

      # @!attribute shift
      #   If true, shifts subsequent price and adjustment intervals (preserving their
      #   durations, but adjusting their absolute dates).
      #
      #   @return [Boolean, nil]
      optional :shift, Orb::Internal::Type::Boolean

      # @!method initialize(trial_end_date:, shift: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionUpdateTrialParams} for more details.
      #
      #   @param trial_end_date [Time, Symbol, Orb::SubscriptionUpdateTrialParams::TrialEndDate] The new date that the trial should end, or the literal string `immediate` to end
      #
      #   @param shift [Boolean] If true, shifts subsequent price and adjustment intervals (preserving their dura
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      # The new date that the trial should end, or the literal string `immediate` to end
      # the trial immediately.
      module TrialEndDate
        extend Orb::Internal::Type::Union

        variant Time

        variant const: -> { Orb::SubscriptionUpdateTrialParams::TrialEndDate::IMMEDIATE }

        # @!method self.variants
        #   @return [Array(Time, Symbol)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(Time, Orb::SubscriptionUpdateTrialParams::TrialEndDate::TaggedSymbol) }
        end

        # @!group

        IMMEDIATE = :immediate

        # @!endgroup
      end
    end
  end
end
