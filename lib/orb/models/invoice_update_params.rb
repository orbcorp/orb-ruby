# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Invoices#update
    class InvoiceUpdateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute auto_collection
      #   Determines whether this invoice will automatically attempt to charge a saved
      #   payment method, if any. Can only be modified on draft invoices. If not
      #   specified, the invoice's existing setting is unchanged.
      #
      #   @return [Boolean, nil]
      optional :auto_collection, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute due_date
      #   An optional custom due date for the invoice. If not set, the due date will be
      #   calculated based on the `net_terms` value.
      #
      #   @return [Date, Time, nil]
      optional :due_date, union: -> { Orb::InvoiceUpdateParams::DueDate }, nil?: true

      # @!attribute invoice_date
      #   The date of the invoice. Can only be modified for one-off draft invoices.
      #
      #   @return [Date, Time, nil]
      optional :invoice_date, union: -> { Orb::InvoiceUpdateParams::InvoiceDate }, nil?: true

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!attribute net_terms
      #   The net terms determines the due date of the invoice. Due date is calculated
      #   based on the invoice or issuance date, depending on the account's configured due
      #   date calculation method. A value of '0' here represents that the invoice is due
      #   on issue, whereas a value of '30' represents that the customer has 30 days to
      #   pay the invoice. Do not set this field if you want to set a custom due date.
      #
      #   @return [Integer, nil]
      optional :net_terms, Integer, nil?: true

      # @!method initialize(auto_collection: nil, due_date: nil, invoice_date: nil, metadata: nil, net_terms: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoiceUpdateParams} for more details.
      #
      #   @param auto_collection [Boolean, nil] Determines whether this invoice will automatically attempt to charge a saved pay
      #
      #   @param due_date [Date, Time, nil] An optional custom due date for the invoice. If not set, the due date will be ca
      #
      #   @param invoice_date [Date, Time, nil] The date of the invoice. Can only be modified for one-off draft invoices.
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      #   @param net_terms [Integer, nil] The net terms determines the due date of the invoice. Due date is calculated bas
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      # An optional custom due date for the invoice. If not set, the due date will be
      # calculated based on the `net_terms` value.
      module DueDate
        extend Orb::Internal::Type::Union

        variant Date

        variant Time

        # @!method self.variants
        #   @return [Array(Date, Time)]
      end

      # The date of the invoice. Can only be modified for one-off draft invoices.
      module InvoiceDate
        extend Orb::Internal::Type::Union

        variant Date

        variant Time

        # @!method self.variants
        #   @return [Array(Date, Time)]
      end
    end
  end
end
