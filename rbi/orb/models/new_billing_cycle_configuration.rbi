# typed: strong

module Orb
  module Models
    class NewBillingCycleConfiguration < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::NewBillingCycleConfiguration, Orb::Internal::AnyHash)
        end

      # The duration of the billing period.
      sig { returns(Integer) }
      attr_accessor :duration

      # The unit of billing period duration.
      sig { returns(Orb::NewBillingCycleConfiguration::DurationUnit::OrSymbol) }
      attr_accessor :duration_unit

      sig do
        params(
          duration: Integer,
          duration_unit:
            Orb::NewBillingCycleConfiguration::DurationUnit::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The duration of the billing period.
        duration:,
        # The unit of billing period duration.
        duration_unit:
      )
      end

      sig do
        override.returns(
          {
            duration: Integer,
            duration_unit:
              Orb::NewBillingCycleConfiguration::DurationUnit::OrSymbol
          }
        )
      end
      def to_hash
      end

      # The unit of billing period duration.
      module DurationUnit
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::NewBillingCycleConfiguration::DurationUnit)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAY =
          T.let(
            :day,
            Orb::NewBillingCycleConfiguration::DurationUnit::TaggedSymbol
          )
        MONTH =
          T.let(
            :month,
            Orb::NewBillingCycleConfiguration::DurationUnit::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::NewBillingCycleConfiguration::DurationUnit::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
