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
      #   @return [String]
      required :provider_type, String

      # @!method initialize(external_provider_id:, provider_type:)
      #   @param external_provider_id [String]
      #   @param provider_type [String]
    end
  end
end
