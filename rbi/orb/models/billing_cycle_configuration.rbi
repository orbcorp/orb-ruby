# typed: strong

module Orb
  module Models
    class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::BillingCycleConfiguration, Orb::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :duration

      sig do
        returns(Orb::BillingCycleConfiguration::DurationUnit::TaggedSymbol)
      end
      attr_accessor :duration_unit

      sig do
        params(
          duration: Integer,
          duration_unit: Orb::BillingCycleConfiguration::DurationUnit::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(duration:, duration_unit:)
      end

      sig do
        override.returns(
          {
            duration: Integer,
            duration_unit:
              Orb::BillingCycleConfiguration::DurationUnit::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module DurationUnit
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::BillingCycleConfiguration::DurationUnit)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAY =
          T.let(
            :day,
            Orb::BillingCycleConfiguration::DurationUnit::TaggedSymbol
          )
        MONTH =
          T.let(
            :month,
            Orb::BillingCycleConfiguration::DurationUnit::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::BillingCycleConfiguration::DurationUnit::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
