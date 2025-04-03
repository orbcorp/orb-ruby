# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#update
    class SubscriptionUpdateParams < Orb::Internal::Type::BaseModel
      # @!parse
      #   extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute auto_collection
      #   Determines whether issued invoices for this subscription will automatically be
      #     charged with the saved payment method on the due date. This property defaults to
      #     the plan's behavior.
      #
      #   @return [Boolean, nil]
      optional :auto_collection, Orb::Internal::Type::BooleanModel, nil?: true

      # @!attribute default_invoice_memo
      #   Determines the default memo on this subscription's invoices. Note that if this
      #     is not provided, it is determined by the plan configuration.
      #
      #   @return [String, nil]
      optional :default_invoice_memo, String, nil?: true

      # @!attribute invoicing_threshold
      #   When this subscription's accrued usage reaches this threshold, an invoice will
      #     be issued for the subscription. If not specified, invoices will only be issued
      #     at the end of the billing period.
      #
      #   @return [String, nil]
      optional :invoicing_threshold, String, nil?: true

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!attribute net_terms
      #   Determines the difference between the invoice issue date for subscription
      #     invoices as the date that they are due. A value of `0` here represents that the
      #     invoice is due on issue, whereas a value of `30` represents that the customer
      #     has a month to pay the invoice.
      #
      #   @return [Integer, nil]
      optional :net_terms, Integer, nil?: true

      # @!parse
      #   # @param auto_collection [Boolean, nil]
      #   # @param default_invoice_memo [String, nil]
      #   # @param invoicing_threshold [String, nil]
      #   # @param metadata [Hash{Symbol=>String, nil}, nil]
      #   # @param net_terms [Integer, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     auto_collection: nil,
      #     default_invoice_memo: nil,
      #     invoicing_threshold: nil,
      #     metadata: nil,
      #     net_terms: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
    end
  end
end
