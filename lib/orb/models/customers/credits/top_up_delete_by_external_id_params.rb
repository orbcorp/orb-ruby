# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        # @see Orb::Resources::Customers::Credits::TopUps#delete_by_external_id
        class TopUpDeleteByExternalIDParams < Orb::Internal::Type::BaseModel
          # @!parse
          #   extend Orb::Internal::Type::RequestParameters::Converter
          include Orb::Internal::Type::RequestParameters

          # @!attribute external_customer_id
          #
          #   @return [String]
          required :external_customer_id, String

          # @!method initialize(external_customer_id:, request_options: {})
          #   @param external_customer_id [String]
          #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
