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

      # @!method initialize(amount:, tax_rate_description:, tax_rate_percentage:)
      #   @param amount [String] The amount of additional tax incurred by this tax rate.
      #
      #   @param tax_rate_description [String] The human-readable description of the applied tax rate.
      #
      #   @param tax_rate_percentage [String, nil] The tax rate percentage, out of 100.
    end
  end
end
