# typed: strong

module Orb
  module Models
    class CustomExpiration < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::CustomExpiration, Orb::Internal::AnyHash) }

      sig { returns(Integer) }
      attr_accessor :duration

      sig { returns(Orb::CustomExpiration::DurationUnit::OrSymbol) }
      attr_accessor :duration_unit

      sig do
        params(
          duration: Integer,
          duration_unit: Orb::CustomExpiration::DurationUnit::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(duration:, duration_unit:)
      end

      sig do
        override.returns(
          {
            duration: Integer,
            duration_unit: Orb::CustomExpiration::DurationUnit::OrSymbol
          }
        )
      end
      def to_hash
      end

      module DurationUnit
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::CustomExpiration::DurationUnit) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DAY = T.let(:day, Orb::CustomExpiration::DurationUnit::TaggedSymbol)
        MONTH = T.let(:month, Orb::CustomExpiration::DurationUnit::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::CustomExpiration::DurationUnit::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
