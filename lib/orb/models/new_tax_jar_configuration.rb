# frozen_string_literal: true

module Orb
  module Models
    class NewTaxJarConfiguration < Orb::Internal::Type::BaseModel
      # @!attribute tax_exempt
      #
      #   @return [Boolean]
      required :tax_exempt, Orb::Internal::Type::Boolean

      # @!attribute tax_provider
      #
      #   @return [Symbol, Orb::Models::NewTaxJarConfiguration::TaxProvider]
      required :tax_provider, enum: -> { Orb::NewTaxJarConfiguration::TaxProvider }

      # @!attribute automatic_tax_enabled
      #   Whether to automatically calculate tax for this customer. When null, inherits
      #   from account-level setting. When true or false, overrides the account setting.
      #
      #   @return [Boolean, nil]
      optional :automatic_tax_enabled, Orb::Internal::Type::Boolean, nil?: true

      # @!method initialize(tax_exempt:, tax_provider:, automatic_tax_enabled: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::NewTaxJarConfiguration} for more details.
      #
      #   @param tax_exempt [Boolean]
      #
      #   @param tax_provider [Symbol, Orb::Models::NewTaxJarConfiguration::TaxProvider]
      #
      #   @param automatic_tax_enabled [Boolean, nil] Whether to automatically calculate tax for this customer. When null, inherits fr

      # @see Orb::Models::NewTaxJarConfiguration#tax_provider
      module TaxProvider
        extend Orb::Internal::Type::Enum

        TAXJAR = :taxjar

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
