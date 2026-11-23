# frozen_string_literal: true

module Orb
  module Models
    module Account
      # @see Orb::Resources::Account::BillingEntities#archive_by_external_id
      class BillingEntityArchiveByExternalIDParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute external_billing_entity_id
        #
        #   @return [String]
        required :external_billing_entity_id, String

        # @!method initialize(external_billing_entity_id:, request_options: {})
        #   @param external_billing_entity_id [String]
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
