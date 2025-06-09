# frozen_string_literal: true

module Orb
  module Models
    class NewAccountingSyncConfiguration < Orb::Internal::Type::BaseModel
      # @!attribute accounting_providers
      #
      #   @return [Array<Orb::Models::AccountingProviderConfig>, nil]
      optional :accounting_providers,
               -> { Orb::Internal::Type::ArrayOf[Orb::AccountingProviderConfig] },
               nil?: true

      # @!attribute excluded
      #
      #   @return [Boolean, nil]
      optional :excluded, Orb::Internal::Type::Boolean, nil?: true

      # @!method initialize(accounting_providers: nil, excluded: nil)
      #   @param accounting_providers [Array<Orb::Models::AccountingProviderConfig>, nil]
      #   @param excluded [Boolean, nil]
    end
  end
end
