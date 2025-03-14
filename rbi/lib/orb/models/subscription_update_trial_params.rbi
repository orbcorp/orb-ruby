# typed: strong

module Orb
  module Models
    class SubscriptionUpdateTrialParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # The new date that the trial should end, or the literal string `immediate` to end
      #   the trial immediately.
      sig { returns(T.any(Time, Symbol)) }
      def trial_end_date
      end

      sig { params(_: T.any(Time, Symbol)).returns(T.any(Time, Symbol)) }
      def trial_end_date=(_)
      end

      # If true, shifts subsequent price and adjustment intervals (preserving their
      #   durations, but adjusting their absolute dates).
      sig { returns(T.nilable(T::Boolean)) }
      def shift
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def shift=(_)
      end

      sig do
        params(
          trial_end_date: T.any(Time, Symbol),
          shift: T::Boolean,
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(trial_end_date:, shift: nil, request_options: {})
      end

      sig do
        override
          .returns({
                     trial_end_date: T.any(Time, Symbol),
                     shift: T::Boolean,
                     request_options: Orb::RequestOptions
                   })
      end
      def to_hash
      end

      # The new date that the trial should end, or the literal string `immediate` to end
      #   the trial immediately.
      class TrialEndDate < Orb::Union
        abstract!

        class UnionMember1 < Orb::Enum
          abstract!

          IMMEDIATE = :immediate

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end

        class << self
          sig { override.returns([Time, Symbol]) }
          def variants
          end
        end
      end
    end
  end
end
