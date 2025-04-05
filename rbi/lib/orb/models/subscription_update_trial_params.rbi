# typed: strong

module Orb
  module Models
    class SubscriptionUpdateTrialParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # The new date that the trial should end, or the literal string `immediate` to end
      #   the trial immediately.
      sig { returns(T.any(Time, Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate::OrSymbol)) }
      attr_accessor :trial_end_date

      # If true, shifts subsequent price and adjustment intervals (preserving their
      #   durations, but adjusting their absolute dates).
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :shift

      sig { params(shift: T::Boolean).void }
      attr_writer :shift

      sig do
        params(
          trial_end_date: T.any(Time, Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate::OrSymbol),
          shift: T::Boolean,
          request_options: T.any(Orb::RequestOptions, Orb::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(trial_end_date:, shift: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              trial_end_date: T.any(Time, Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate::OrSymbol),
              shift: T::Boolean,
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash; end

      # The new date that the trial should end, or the literal string `immediate` to end
      #   the trial immediately.
      module TrialEndDate
        extend Orb::Internal::Type::Union

        sig { override.returns([Time, Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate::OrSymbol]) }
        def self.variants; end

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate::TaggedSymbol) }

        IMMEDIATE = T.let(:immediate, Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate::TaggedSymbol)
      end
    end
  end
end
