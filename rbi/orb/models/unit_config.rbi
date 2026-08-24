# typed: strong

module Orb
  module Models
    class UnitConfig < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::UnitConfig, Orb::Internal::AnyHash) }

      # Rate per unit of usage
      sig { returns(String) }
      attr_accessor :unit_amount

      # If true, subtotals from this price are prorated based on the service period
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :prorated

      sig { params(prorated: T::Boolean).void }
      attr_writer :prorated

      # Optional multiplier applied to rated quantity before unit_amount.
      sig { returns(T.nilable(Float)) }
      attr_accessor :scaling_factor

      # Configuration for unit pricing
      sig do
        params(
          unit_amount: String,
          prorated: T::Boolean,
          scaling_factor: T.nilable(Float)
        ).returns(T.attached_class)
      end
      def self.new(
        # Rate per unit of usage
        unit_amount:,
        # If true, subtotals from this price are prorated based on the service period
        prorated: nil,
        # Optional multiplier applied to rated quantity before unit_amount.
        scaling_factor: nil
      )
      end

      sig do
        override.returns(
          {
            unit_amount: String,
            prorated: T::Boolean,
            scaling_factor: T.nilable(Float)
          }
        )
      end
      def to_hash
      end
    end
  end
end
