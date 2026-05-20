# frozen_string_literal: true

module Orb
  module Models
    class AccountingProviderConfig < Orb::Internal::Type::BaseModel
      # @!attribute external_provider_id
      #
      #   @return [String]
      required :external_provider_id, String

      # @!attribute provider_type
      #
      #   @return [Symbol, Orb::Models::AccountingProviderConfig::ProviderType]
      required :provider_type, enum: -> { Orb::AccountingProviderConfig::ProviderType }

      # @!method initialize(external_provider_id:, provider_type:)
      #   @param external_provider_id [String]
      #   @param provider_type [Symbol, Orb::Models::AccountingProviderConfig::ProviderType]

      # @see Orb::Models::AccountingProviderConfig#provider_type
      module ProviderType
        extend Orb::Internal::Type::Enum

        QUICKBOOKS = :quickbooks
        NETSUITE = :netsuite

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
