# frozen_string_literal: true

module Orb
  module Models
    class NewAvalaraTaxConfiguration < Orb::Internal::Type::BaseModel
      # @!attribute tax_exempt
      #
      #   @return [Boolean]
      required :tax_exempt, Orb::Internal::Type::Boolean

      # @!attribute tax_provider
      #
      #   @return [Symbol, Orb::Models::NewAvalaraTaxConfiguration::TaxProvider]
      required :tax_provider, enum: -> { Orb::NewAvalaraTaxConfiguration::TaxProvider }

      # @!attribute tax_exemption_code
      #
      #   @return [String, nil]
      optional :tax_exemption_code, String, nil?: true

      # @!method initialize(tax_exempt:, tax_provider:, tax_exemption_code: nil)
      #   @param tax_exempt [Boolean]
      #   @param tax_provider [Symbol, Orb::Models::NewAvalaraTaxConfiguration::TaxProvider]
      #   @param tax_exemption_code [String, nil]

      # @see Orb::Models::NewAvalaraTaxConfiguration#tax_provider
      module TaxProvider
        extend Orb::Internal::Type::Enum

        AVALARA = :avalara

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
