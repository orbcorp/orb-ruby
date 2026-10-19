# frozen_string_literal: true

module Orb
  module Models
    class TaxAmount < Orb::Internal::Type::BaseModel
      # @!attribute amount
      #   The amount of additional tax incurred by this tax rate.
      #
      #   @return [String]
      required :amount, String

      # @!attribute tax_rate_description
      #   The human-readable description of the applied tax rate.
      #
      #   @return [String]
      required :tax_rate_description, String

      # @!attribute tax_rate_percentage
      #   The tax rate percentage, out of 100.
      #
      #   @return [String, nil]
      required :tax_rate_percentage, String, nil?: true

      # @!attribute tax_reason
      #   Why this tax was or was not charged, such as reverse_charge or customer_exempt.
      #   Null on tax calculated before reasons were recorded.
      #
      #   @return [Symbol, Orb::Models::TaxAmount::TaxReason, nil]
      optional :tax_reason, enum: -> { Orb::TaxAmount::TaxReason }, nil?: true

      # @!method initialize(amount:, tax_rate_description:, tax_rate_percentage:, tax_reason: nil)
      #   Some parameter documentations has been truncated, see {Orb::Models::TaxAmount}
      #   for more details.
      #
      #   @param amount [String] The amount of additional tax incurred by this tax rate.
      #
      #   @param tax_rate_description [String] The human-readable description of the applied tax rate.
      #
      #   @param tax_rate_percentage [String, nil] The tax rate percentage, out of 100.
      #
      #   @param tax_reason [Symbol, Orb::Models::TaxAmount::TaxReason, nil] Why this tax was or was not charged, such as reverse_charge or customer_exempt.

      # Why this tax was or was not charged, such as reverse_charge or customer_exempt.
      # Null on tax calculated before reasons were recorded.
      #
      # @see Orb::Models::TaxAmount#tax_reason
      module TaxReason
        extend Orb::Internal::Type::Enum

        TAXED = :taxed
        REVERSE_CHARGE = :reverse_charge
        CUSTOMER_EXEMPT = :customer_exempt
        PRODUCT_EXEMPT = :product_exempt
        NOT_REGISTERED = :not_registered
        ZERO_RATED = :zero_rated
        NOT_TAXED_OTHER = :not_taxed_other

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
