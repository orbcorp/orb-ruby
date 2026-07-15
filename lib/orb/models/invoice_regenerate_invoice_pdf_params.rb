# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Invoices#regenerate_invoice_pdf
    class InvoiceRegenerateInvoicePdfParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute invoice_id
      #
      #   @return [String]
      required :invoice_id, String

      # @!method initialize(invoice_id:, request_options: {})
      #   @param invoice_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
