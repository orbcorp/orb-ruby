# typed: strong

module Orb
  module Models
    class BillingCycleConfigurationModel < Orb::BaseModel
      sig { returns(Integer) }
      def duration
      end

      sig { params(_: Integer).returns(Integer) }
      def duration=(_)
      end

      sig { returns(Symbol) }
      def duration_unit
      end

      sig { params(_: Symbol).returns(Symbol) }
      def duration_unit=(_)
      end

      sig { params(duration: Integer, duration_unit: Symbol).void }
      def initialize(duration:, duration_unit:)
      end

      sig { override.returns({duration: Integer, duration_unit: Symbol}) }
      def to_hash
      end

      class DurationUnit < Orb::Enum
        abstract!

        DAY = :day
        MONTH = :month

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
