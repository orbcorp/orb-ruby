# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Invoices#fetch
    class InvoiceFetchParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute invoice_id
      #
      #   @return [String]
      required :invoice_id, String

      # @!attribute include_zero_quantity_line_items
      #   Whether to return line items with a quantity of zero. When omitted, Orb returns
      #   every line item. A line item that is grouped as part of a line item minimum is
      #   always returned; an invoice-level minimum does not exempt it.
      #
      #   @return [Boolean, nil]
      optional :include_zero_quantity_line_items, Orb::Internal::Type::Boolean, nil?: true

      # @!method initialize(invoice_id:, include_zero_quantity_line_items: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoiceFetchParams} for more details.
      #
      #   @param invoice_id [String]
      #
      #   @param include_zero_quantity_line_items [Boolean, nil] Whether to return line items with a quantity of zero. When omitted, Orb returns
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
