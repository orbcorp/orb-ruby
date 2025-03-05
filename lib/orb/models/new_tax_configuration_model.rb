# frozen_string_literal: true

module Orb
  module Models
    # @abstract
    #
    # @example
    # ```ruby
    # case new_tax_configuration_model
    # in {tax_provider: "avalara", tax_exempt: Orb::BooleanModel, tax_exemption_code: String}
    #   # Orb::Models::NewTaxConfigurationModel::NewAvalaraTaxConfiguration ...
    # in {tax_provider: "taxjar", tax_exempt: Orb::BooleanModel}
    #   # Orb::Models::NewTaxConfigurationModel::NewTaxJarConfiguration ...
    # end
    # ```
    #
    # @example
    # ```ruby
    # case new_tax_configuration_model
    # in Orb::Models::NewTaxConfigurationModel::NewAvalaraTaxConfiguration
    #   # ...
    # in Orb::Models::NewTaxConfigurationModel::NewTaxJarConfiguration
    #   # ...
    # end
    # ```
    class NewTaxConfigurationModel < Orb::Union
      discriminator :tax_provider

      variant :avalara, -> { Orb::Models::NewTaxConfigurationModel::NewAvalaraTaxConfiguration }

      variant :taxjar, -> { Orb::Models::NewTaxConfigurationModel::NewTaxJarConfiguration }

      class NewAvalaraTaxConfiguration < Orb::BaseModel
        # @!attribute tax_exempt
        #
        #   @return [Boolean]
        required :tax_exempt, Orb::BooleanModel

        # @!attribute tax_provider
        #
        #   @return [Symbol, :avalara]
        required :tax_provider, const: :avalara

        # @!attribute tax_exemption_code
        #
        #   @return [String, nil]
        optional :tax_exemption_code, String, nil?: true

        # @!parse
        #   # @param tax_exempt [Boolean]
        #   # @param tax_exemption_code [String, nil]
        #   # @param tax_provider [Symbol, :avalara]
        #   #
        #   def initialize(tax_exempt:, tax_exemption_code: nil, tax_provider: :avalara, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      class NewTaxJarConfiguration < Orb::BaseModel
        # @!attribute tax_exempt
        #
        #   @return [Boolean]
        required :tax_exempt, Orb::BooleanModel

        # @!attribute tax_provider
        #
        #   @return [Symbol, :taxjar]
        required :tax_provider, const: :taxjar

        # @!parse
        #   # @param tax_exempt [Boolean]
        #   # @param tax_provider [Symbol, :taxjar]
        #   #
        #   def initialize(tax_exempt:, tax_provider: :taxjar, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
