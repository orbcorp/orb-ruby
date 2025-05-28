# typed: strong

module Orb
  module Models
    class PlanVersionPhase < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::PlanVersionPhase, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # How many terms of length `duration_unit` this phase is active for. If null, this
      # phase is evergreen and active indefinitely
      sig { returns(T.nilable(Integer)) }
      attr_accessor :duration

      sig do
        returns(T.nilable(Orb::PlanVersionPhase::DurationUnit::TaggedSymbol))
      end
      attr_accessor :duration_unit

      sig { returns(String) }
      attr_accessor :name

      # Determines the ordering of the phase in a plan's lifecycle. 1 = first phase.
      sig { returns(Integer) }
      attr_accessor :order

      sig do
        params(
          id: String,
          description: T.nilable(String),
          duration: T.nilable(Integer),
          duration_unit:
            T.nilable(Orb::PlanVersionPhase::DurationUnit::OrSymbol),
          name: String,
          order: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        description:,
        # How many terms of length `duration_unit` this phase is active for. If null, this
        # phase is evergreen and active indefinitely
        duration:,
        duration_unit:,
        name:,
        # Determines the ordering of the phase in a plan's lifecycle. 1 = first phase.
        order:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            description: T.nilable(String),
            duration: T.nilable(Integer),
            duration_unit:
              T.nilable(Orb::PlanVersionPhase::DurationUnit::TaggedSymbol),
            name: String,
            order: Integer
          }
        )
      end
      def to_hash
      end

      module DurationUnit
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::PlanVersionPhase::DurationUnit) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAILY = T.let(:daily, Orb::PlanVersionPhase::DurationUnit::TaggedSymbol)
        MONTHLY =
          T.let(:monthly, Orb::PlanVersionPhase::DurationUnit::TaggedSymbol)
        QUARTERLY =
          T.let(:quarterly, Orb::PlanVersionPhase::DurationUnit::TaggedSymbol)
        SEMI_ANNUAL =
          T.let(:semi_annual, Orb::PlanVersionPhase::DurationUnit::TaggedSymbol)
        ANNUAL =
          T.let(:annual, Orb::PlanVersionPhase::DurationUnit::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::PlanVersionPhase::DurationUnit::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
