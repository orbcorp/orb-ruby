# typed: strong

module Orb
  module Models
    class SubscriptionUpdateTrialParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.any(Time, Symbol)) }
      def trial_end_date
      end

      sig { params(_: T.any(Time, Symbol)).returns(T.any(Time, Symbol)) }
      def trial_end_date=(_)
      end

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
        ).void
      end
      def initialize(trial_end_date:, shift: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            trial_end_date: T.any(Time, Symbol),
            shift: T::Boolean,
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      class TrialEndDate < Orb::Union
        abstract!

        class UnionMember1 < Orb::Enum
          abstract!

          IMMEDIATE = :immediate

          sig { override.returns(T::Array[Symbol]) }
          def self.values
          end
        end

        sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
        private_class_method def self.variants
        end
      end
    end
  end
end
