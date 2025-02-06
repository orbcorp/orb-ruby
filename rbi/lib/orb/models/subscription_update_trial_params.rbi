# typed: strong

module Orb
  module Models
    class SubscriptionUpdateTrialParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            trial_end_date: Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate::Variants,
            shift: T::Boolean
          },
          Orb::RequestParameters::Shape
        )
      end

      sig { returns(Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate::Variants) }
      attr_accessor :trial_end_date

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :shift

      sig { params(shift: T::Boolean).void }
      attr_writer :shift

      sig do
        params(
          trial_end_date: Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate::Variants,
          shift: T::Boolean,
          request_options: Orb::RequestOpts
        ).void
      end
      def initialize(trial_end_date:, shift: nil, request_options: {}); end

      sig { returns(Orb::Models::SubscriptionUpdateTrialParams::Shape) }
      def to_h; end

      class TrialEndDate < Orb::Union
        abstract!

        Variants = T.type_alias { T.any(Time, Symbol) }

        class UnionMember1 < Orb::Enum
          abstract!

          IMMEDIATE = :immediate

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end

        sig { override.returns([[NilClass, Time], [NilClass, Symbol]]) }
        private_class_method def self.variants; end
      end
    end
  end
end
