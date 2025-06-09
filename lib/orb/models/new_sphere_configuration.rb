# frozen_string_literal: true

module Orb
  module Models
    class NewSphereConfiguration < Orb::Internal::Type::BaseModel
      # @!attribute tax_exempt
      #
      #   @return [Boolean]
      required :tax_exempt, Orb::Internal::Type::Boolean

      # @!attribute tax_provider
      #
      #   @return [Symbol, Orb::Models::NewSphereConfiguration::TaxProvider]
      required :tax_provider, enum: -> { Orb::NewSphereConfiguration::TaxProvider }

      # @!method initialize(tax_exempt:, tax_provider:)
      #   @param tax_exempt [Boolean]
      #   @param tax_provider [Symbol, Orb::Models::NewSphereConfiguration::TaxProvider]

      # @see Orb::Models::NewSphereConfiguration#tax_provider
      module TaxProvider
        extend Orb::Internal::Type::Enum

        SPHERE = :sphere

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
