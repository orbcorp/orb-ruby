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

      # Why this tax was or was not charged, such as reverse_charge or customer_exempt.
      # Null on tax calculated before reasons were recorded.
      sig { returns(T.nilable(Orb::TaxAmount::TaxReason::TaggedSymbol)) }
      attr_accessor :tax_reason

      sig do
        params(
          amount: String,
          tax_rate_description: String,
          tax_rate_percentage: T.nilable(String),
          tax_reason: T.nilable(Orb::TaxAmount::TaxReason::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        # The amount of additional tax incurred by this tax rate.
        amount:,
        # The human-readable description of the applied tax rate.
        tax_rate_description:,
        # The tax rate percentage, out of 100.
        tax_rate_percentage:,
        # Why this tax was or was not charged, such as reverse_charge or customer_exempt.
        # Null on tax calculated before reasons were recorded.
        tax_reason: nil
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            tax_rate_description: String,
            tax_rate_percentage: T.nilable(String),
            tax_reason: T.nilable(Orb::TaxAmount::TaxReason::TaggedSymbol)
          }
        )
      end
      def to_hash
      end

      # Why this tax was or was not charged, such as reverse_charge or customer_exempt.
      # Null on tax calculated before reasons were recorded.
      module TaxReason
        extend Orb::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Orb::TaxAmount::TaxReason) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TAXED = T.let(:taxed, Orb::TaxAmount::TaxReason::TaggedSymbol)
        REVERSE_CHARGE =
          T.let(:reverse_charge, Orb::TaxAmount::TaxReason::TaggedSymbol)
        CUSTOMER_EXEMPT =
          T.let(:customer_exempt, Orb::TaxAmount::TaxReason::TaggedSymbol)
        PRODUCT_EXEMPT =
          T.let(:product_exempt, Orb::TaxAmount::TaxReason::TaggedSymbol)
        NOT_REGISTERED =
          T.let(:not_registered, Orb::TaxAmount::TaxReason::TaggedSymbol)
        ZERO_RATED = T.let(:zero_rated, Orb::TaxAmount::TaxReason::TaggedSymbol)
        NOT_TAXED_OTHER =
          T.let(:not_taxed_other, Orb::TaxAmount::TaxReason::TaggedSymbol)

        sig do
          override.returns(T::Array[Orb::TaxAmount::TaxReason::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
