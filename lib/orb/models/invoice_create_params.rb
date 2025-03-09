# frozen_string_literal: true

module Orb
  module Models
    class InvoiceCreateParams < Orb::BaseModel
      # @!parse
      #   extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute currency
      #   An ISO 4217 currency string. Must be the same as the customer's currency if it
      #     is set.
      #
      #   @return [String]
      required :currency, String

      # @!attribute invoice_date
      #   Optional invoice date to set. Must be in the past, if not set, `invoice_date` is
      #     set to the current time in the customer's timezone.
      #
      #   @return [Time]
      required :invoice_date, Time

      # @!attribute line_items
      #
      #   @return [Array<Orb::Models::InvoiceCreateParams::LineItem>]
      required :line_items, -> { Orb::ArrayOf[Orb::Models::InvoiceCreateParams::LineItem] }

      # @!attribute net_terms
      #   Determines the difference between the invoice issue date for subscription
      #     invoices as the date that they are due. A value of '0' here represents that the
      #     invoice is due on issue, whereas a value of 30 represents that the customer has
      #     30 days to pay the invoice.
      #
      #   @return [Integer]
      required :net_terms, Integer

      # @!attribute customer_id
      #   The id of the `Customer` to create this invoice for. One of `customer_id` and
      #     `external_customer_id` are required.
      #
      #   @return [String, nil]
      optional :customer_id, String, nil?: true

      # @!attribute discount
      #   An optional discount to attach to the invoice.
      #
      #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
      optional :discount, union: -> { Orb::Models::Discount }, nil?: true

      # @!attribute external_customer_id
      #   The `external_customer_id` of the `Customer` to create this invoice for. One of
      #     `customer_id` and `external_customer_id` are required.
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
      #     by setting the value to `null`, and the entire metadata mapping can be cleared
      #     by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

      # @!attribute [r] will_auto_issue
      #   When true, this invoice will automatically be issued upon creation. When false,
      #     the resulting invoice will require manual review to issue. Defaulted to false.
      #
      #   @return [Boolean, nil]
      optional :will_auto_issue, Orb::BooleanModel

      # @!parse
      #   # @return [Boolean]
      #   attr_writer :will_auto_issue

      # @!parse
      #   # @param currency [String]
      #   # @param invoice_date [Time]
      #   # @param line_items [Array<Orb::Models::InvoiceCreateParams::LineItem>]
      #   # @param net_terms [Integer]
      #   # @param customer_id [String, nil]
      #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
      #   # @param external_customer_id [String, nil]
      #   # @param memo [String, nil]
      #   # @param metadata [Hash{Symbol=>String, nil}, nil]
      #   # @param will_auto_issue [Boolean]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     currency:,
      #     invoice_date:,
      #     line_items:,
      #     net_terms:,
      #     customer_id: nil,
      #     discount: nil,
      #     external_customer_id: nil,
      #     memo: nil,
      #     metadata: nil,
      #     will_auto_issue: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::BaseModel) -> void

      class LineItem < Orb::BaseModel
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
        required :model_type, enum: -> { Orb::Models::InvoiceCreateParams::LineItem::ModelType }

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
        #   @return [Orb::Models::InvoiceCreateParams::LineItem::UnitConfig]
        required :unit_config, -> { Orb::Models::InvoiceCreateParams::LineItem::UnitConfig }

        # @!parse
        #   # @param end_date [Date]
        #   # @param item_id [String]
        #   # @param model_type [Symbol, Orb::Models::InvoiceCreateParams::LineItem::ModelType]
        #   # @param name [String]
        #   # @param quantity [Float]
        #   # @param start_date [Date]
        #   # @param unit_config [Orb::Models::InvoiceCreateParams::LineItem::UnitConfig]
        #   #
        #   def initialize(end_date:, item_id:, model_type:, name:, quantity:, start_date:, unit_config:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        class ModelType < Orb::Enum
          UNIT = :unit

          finalize!
        end

        class UnitConfig < Orb::BaseModel
          # @!attribute unit_amount
          #   Rate per unit of usage
          #
          #   @return [String]
          required :unit_amount, String

          # @!parse
          #   # @param unit_amount [String]
          #   #
          #   def initialize(unit_amount:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end
    end
  end
end
