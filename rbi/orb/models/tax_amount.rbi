# typed: strong

module Orb
  module Models
    class TaxAmount < Orb::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Orb::TaxAmount, Orb::Internal::AnyHash) }

      # The amount of additional tax incurred by this tax rate.
      sig { returns(String) }
      attr_accessor :amount

      # The human-readable description of the applied tax rate.
      sig { returns(String) }
      attr_accessor :tax_rate_description

      # The tax rate percentage, out of 100.
      sig { returns(T.nilable(String)) }
      attr_accessor :tax_rate_percentage

      sig do
        params(
          amount: String,
          tax_rate_description: String,
          tax_rate_percentage: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The amount of additional tax incurred by this tax rate.
        amount:,
        # The human-readable description of the applied tax rate.
        tax_rate_description:,
        # The tax rate percentage, out of 100.
        tax_rate_percentage:
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            tax_rate_description: String,
            tax_rate_percentage: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
