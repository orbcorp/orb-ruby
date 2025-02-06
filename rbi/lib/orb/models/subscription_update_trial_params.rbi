# typed: strong

module Orb
  module Models
    class SubscriptionUpdateTrialParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.any(Time, Symbol)) }
      attr_accessor :trial_end_date

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :shift

      sig { params(shift: T::Boolean).void }
      attr_writer :shift

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
