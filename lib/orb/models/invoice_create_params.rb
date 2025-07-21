# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Invoices#create
    class InvoiceCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute currency
      #   An ISO 4217 currency string. Must be the same as the customer's currency if it
      #   is set.
      #
      #   @return [String]
      required :currency, String

      # @!attribute invoice_date
      #   Optional invoice date to set. Must be in the past, if not set, `invoice_date` is
      #   set to the current time in the customer's timezone.
      #
      #   @return [Time]
      required :invoice_date, Time

      # @!attribute line_items
      #
      #   @return [Array<Orb::Models::InvoiceCreateParams::LineItem>]
      required :line_items, -> { Orb::Internal::Type::ArrayOf[Orb::InvoiceCreateParams::LineItem] }

      # @!attribute customer_id
      #   The id of the `Customer` to create this invoice for. One of `customer_id` and
      #   `external_customer_id` are required.
      #
      #   @return [String, nil]
      optional :customer_id, String, nil?: true

      # @!attribute discount
      #   An optional discount to attach to the invoice.
      #
      #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
      optional :discount, union: -> { Orb::Discount }, nil?: true

      # @!attribute external_customer_id
      #   The `external_customer_id` of the `Customer` to create this invoice for. One of
      #   `customer_id` and `external_customer_id` are required.
      #
      #   @return [String, nil]
      optional :external_customer_id, String, nil?: true

      # @!attribute memo
      #   An optional memo to attach to the invoice.
      #
      #   @return [String, nil]
      optional :memo, String, nil?: true

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!attribute net_terms
      #   Determines the difference between the invoice issue date for subscription
      #   invoices as the date that they are due. A value of '0' here represents that the
      #   invoice is due on issue, whereas a value of 30 represents that the customer has
      #   30 days to pay the invoice.
      #
      #   @return [Integer, nil]
      optional :net_terms, Integer, nil?: true

      # @!attribute will_auto_issue
      #   When true, this invoice will be submitted for issuance upon creation. When
      #   false, the resulting invoice will require manual review to issue. Defaulted to
      #   false.
      #
      #   @return [Boolean, nil]
      optional :will_auto_issue, Orb::Internal::Type::Boolean

      # @!method initialize(currency:, invoice_date:, line_items:, customer_id: nil, discount: nil, external_customer_id: nil, memo: nil, metadata: nil, net_terms: nil, will_auto_issue: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoiceCreateParams} for more details.
      #
      #   @param currency [String] An ISO 4217 currency string. Must be the same as the customer's currency if it i
      #
      #   @param invoice_date [Time] Optional invoice date to set. Must be in the past, if not set, `invoice_date` is
      #
      #   @param line_items [Array<Orb::Models::InvoiceCreateParams::LineItem>]
      #
      #   @param customer_id [String, nil] The id of the `Customer` to create this invoice for. One of `customer_id` and `e
      #
      #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil] An optional discount to attach to the invoice.
      #
      #   @param external_customer_id [String, nil] The `external_customer_id` of the `Customer` to create this invoice for. One of
      #
      #   @param memo [String, nil] An optional memo to attach to the invoice.
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
      #
      #   @param net_terms [Integer, nil] Determines the difference between the invoice issue date for subscription invoic
      #
      #   @param will_auto_issue [Boolean] When true, this invoice will be submitted for issuance upon creation. When false
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      class LineItem < Orb::Internal::Type::BaseModel
        # @!attribute end_date
        #   A date string to specify the line item's end date in the customer's timezone.
        #
        #   @return [Date]
        required :end_date, Date

        # @!attribute item_id
        #
        #   @return [String]
        required :item_id, String

        # @!attribute model_type
        #
        #   @return [Symbol, Orb::Models::InvoiceCreateParams::LineItem::ModelType]
        required :model_type, enum: -> { Orb::InvoiceCreateParams::LineItem::ModelType }

        # @!attribute name
        #   The name of the line item.
        #
        #   @return [String]
        required :name, String

        # @!attribute quantity
        #   The number of units on the line item
        #
        #   @return [Float]
        required :quantity, Float

        # @!attribute start_date
        #   A date string to specify the line item's start date in the customer's timezone.
        #
        #   @return [Date]
        required :start_date, Date

        # @!attribute unit_config
        #
        #   @return [Orb::Models::UnitConfig]
        required :unit_config, -> { Orb::UnitConfig }

        # @!method initialize(end_date:, item_id:, model_type:, name:, quantity:, start_date:, unit_config:)
        #   @param end_date [Date] A date string to specify the line item's end date in the customer's timezone.
        #
        #   @param item_id [String]
        #
        #   @param model_type [Symbol, Orb::Models::InvoiceCreateParams::LineItem::ModelType]
        #
        #   @param name [String] The name of the line item.
        #
        #   @param quantity [Float] The number of units on the line item
        #
        #   @param start_date [Date] A date string to specify the line item's start date in the customer's timezone.
        #
        #   @param unit_config [Orb::Models::UnitConfig]

        # @see Orb::Models::InvoiceCreateParams::LineItem#model_type
        module ModelType
          extend Orb::Internal::Type::Enum

          UNIT = :unit

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
