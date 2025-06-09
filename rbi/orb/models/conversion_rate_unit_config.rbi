# typed: strong

module Orb
  module Models
    class ConversionRateUnitConfig < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::ConversionRateUnitConfig, Orb::Internal::AnyHash)
        end

      # Amount per unit of overage
      sig { returns(String) }
      attr_accessor :unit_amount

      sig { params(unit_amount: String).returns(T.attached_class) }
      def self.new(
        # Amount per unit of overage
        unit_amount:
      )
      end

      sig { override.returns({ unit_amount: String }) }
      def to_hash
      end
    end
  end
end
