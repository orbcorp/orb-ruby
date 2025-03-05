# frozen_string_literal: true

module Orb
  module Models
    class NewAccountingSyncConfigurationModel < Orb::BaseModel
      # @!attribute accounting_providers
      #
      #   @return [Array<Orb::Models::NewAccountingSyncConfigurationModel::AccountingProvider>, nil]
      optional :accounting_providers,
               -> { Orb::ArrayOf[Orb::Models::NewAccountingSyncConfigurationModel::AccountingProvider] },
               nil?: true

      # @!attribute excluded
      #
      #   @return [Boolean, nil]
      optional :excluded, Orb::BooleanModel, nil?: true

      # @!parse
      #   # @param accounting_providers [Array<Orb::Models::NewAccountingSyncConfigurationModel::AccountingProvider>, nil]
      #   # @param excluded [Boolean, nil]
      #   #
      #   def initialize(accounting_providers: nil, excluded: nil, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      class AccountingProvider < Orb::BaseModel
        # @!attribute external_provider_id
        #
        #   @return [String]
        required :external_provider_id, String

        # @!attribute provider_type
        #
        #   @return [String]
        required :provider_type, String

        # @!parse
        #   # @param external_provider_id [String]
        #   # @param provider_type [String]
        #   #
        #   def initialize(external_provider_id:, provider_type:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
