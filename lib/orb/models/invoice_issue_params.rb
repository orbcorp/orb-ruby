# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Invoices#issue
    class InvoiceIssueParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute synchronous
      #   If true, the invoice will be issued synchronously. If false, the invoice will be
      #   issued asynchronously. The synchronous option is only available for invoices
      #   that have no usage fees. If the invoice is configured to sync to an external
      #   provider, a successful response from this endpoint guarantees the invoice is
      #   present in the provider.
      #
      #   @return [Boolean, nil]
      optional :synchronous, Orb::Internal::Type::Boolean

      # @!method initialize(synchronous: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoiceIssueParams} for more details.
      #
      #   @param synchronous [Boolean] If true, the invoice will be issued synchronously. If false, the invoice will be
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
