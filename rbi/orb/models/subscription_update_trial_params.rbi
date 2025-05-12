# typed: strong

module Orb
  module Models
    class SubscriptionUpdateTrialParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::SubscriptionUpdateTrialParams, Orb::Internal::AnyHash)
        end

      # The new date that the trial should end, or the literal string `immediate` to end
      # the trial immediately.
      sig do
        returns(
          T.any(
            Time,
            Orb::SubscriptionUpdateTrialParams::TrialEndDate::OrSymbol
          )
        )
      end
      attr_accessor :trial_end_date

      # If true, shifts subsequent price and adjustment intervals (preserving their
      # durations, but adjusting their absolute dates).
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :shift

      sig { params(shift: T::Boolean).void }
      attr_writer :shift

      sig do
        params(
          trial_end_date:
            T.any(
              Time,
              Orb::SubscriptionUpdateTrialParams::TrialEndDate::OrSymbol
            ),
          shift: T::Boolean,
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The new date that the trial should end, or the literal string `immediate` to end
        # the trial immediately.
        trial_end_date:,
        # If true, shifts subsequent price and adjustment intervals (preserving their
        # durations, but adjusting their absolute dates).
        shift: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            trial_end_date:
              T.any(
                Time,
                Orb::SubscriptionUpdateTrialParams::TrialEndDate::OrSymbol
              ),
            shift: T::Boolean,
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The new date that the trial should end, or the literal string `immediate` to end
      # the trial immediately.
      module TrialEndDate
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Time,
              Orb::SubscriptionUpdateTrialParams::TrialEndDate::TaggedSymbol
            )
          end

        sig do
          override.returns(
            T::Array[Orb::SubscriptionUpdateTrialParams::TrialEndDate::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::SubscriptionUpdateTrialParams::TrialEndDate)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        IMMEDIATE =
          T.let(
            :immediate,
            Orb::SubscriptionUpdateTrialParams::TrialEndDate::TaggedSymbol
          )
      end
    end
  end
end
