# frozen_string_literal: true

module Orb
  module Models
    module Account
      # @see Orb::Resources::Account::BillingEntities#archive
      class BillingEntityArchiveParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute billing_entity_id
        #
        #   @return [String]
        required :billing_entity_id, String

        # @!method initialize(billing_entity_id:, request_options: {})
        #   @param billing_entity_id [String]
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
