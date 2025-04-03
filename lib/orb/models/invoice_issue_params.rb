# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Invoices#issue
    class InvoiceIssueParams < Orb::BaseModel
      # @!parse
      #   extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute [r] synchronous
      #   If true, the invoice will be issued synchronously. If false, the invoice will be
      #     issued asynchronously. The synchronous option is only available for invoices
      #     that have no usage fees. If the invoice is configured to sync to an external
      #     provider, a successful response from this endpoint guarantees the invoice is
      #     present in the provider.
      #
      #   @return [Boolean, nil]
      optional :synchronous, Orb::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :synchronous

      # @!parse
      #   # @param synchronous [Boolean]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(synchronous: nil, request_options: {}, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
