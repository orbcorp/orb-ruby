# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Invoices#pay
    class InvoicePayParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute invoice_id
      #
      #   @return [String]
      required :invoice_id, String

      # @!attribute shared_payment_token_id
      #   The ID of a shared payment token granted by an agent to use for this payment.
      #
      #   @return [String]
      required :shared_payment_token_id, String

      # @!method initialize(invoice_id:, shared_payment_token_id:, request_options: {})
      #   @param invoice_id [String]
      #
      #   @param shared_payment_token_id [String] The ID of a shared payment token granted by an agent to use for this payment.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
