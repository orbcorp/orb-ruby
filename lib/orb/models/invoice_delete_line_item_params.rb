# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Invoices#delete_line_item
    class InvoiceDeleteLineItemParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute invoice_id
      #
      #   @return [String]
      required :invoice_id, String

      # @!attribute line_item_id
      #
      #   @return [String]
      required :line_item_id, String

      # @!method initialize(invoice_id:, line_item_id:, request_options: {})
      #   @param invoice_id [String]
      #   @param line_item_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
