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

      # Configuration for unit pricing
      sig do
        params(unit_amount: String, prorated: T::Boolean).returns(
          T.attached_class
        )
      end
      def self.new(
        # Rate per unit of usage
        unit_amount:,
        # If true, subtotals from this price are prorated based on the service period
        prorated: nil
      )
      end

      sig { override.returns({ unit_amount: String, prorated: T::Boolean }) }
      def to_hash
      end
    end
  end
end
