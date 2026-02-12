# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::CreditBlocks#list_invoices
    class CreditBlockListInvoicesParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
