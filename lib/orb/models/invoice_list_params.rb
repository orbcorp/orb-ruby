# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Invoices#list
    class InvoiceListParams < Orb::Internal::Type::BaseModel
      # @!parse
      #   extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute amount
      #
      #   @return [String, nil]
      optional :amount, String, nil?: true

      # @!attribute amount_gt
      #
      #   @return [String, nil]
      optional :amount_gt, String, api_name: :"amount[gt]", nil?: true

      # @!attribute amount_lt
      #
      #   @return [String, nil]
      optional :amount_lt, String, api_name: :"amount[lt]", nil?: true

      # @!attribute cursor
      #   Cursor for pagination. This can be populated by the `next_cursor` value returned
      #   from the initial request.
      #
      #   @return [String, nil]
      optional :cursor, String, nil?: true

      # @!attribute customer_id
      #
      #   @return [String, nil]
      optional :customer_id, String, nil?: true

      # @!attribute date_type
      #
      #   @return [Symbol, Orb::Models::InvoiceListParams::DateType, nil]
      optional :date_type, enum: -> { Orb::Models::InvoiceListParams::DateType }, nil?: true

      # @!attribute due_date
      #
      #   @return [Date, nil]
      optional :due_date, Date, nil?: true

      # @!attribute due_date_window
      #   Filters invoices by their due dates within a specific time range in the past.
      #   Specify the range as a number followed by 'd' (days) or 'm' (months). For
      #   example, '7d' filters invoices due in the last 7 days, and '2m' filters those
      #   due in the last 2 months.
      #
      #   @return [String, nil]
      optional :due_date_window, String, nil?: true

      # @!attribute due_date_gt
      #
      #   @return [Date, nil]
      optional :due_date_gt, Date, api_name: :"due_date[gt]", nil?: true

      # @!attribute due_date_lt
      #
      #   @return [Date, nil]
      optional :due_date_lt, Date, api_name: :"due_date[lt]", nil?: true

      # @!attribute external_customer_id
      #
      #   @return [String, nil]
      optional :external_customer_id, String, nil?: true

      # @!attribute invoice_date_gt
      #
      #   @return [Time, nil]
      optional :invoice_date_gt, Time, api_name: :"invoice_date[gt]", nil?: true

      # @!attribute invoice_date_gte
      #
      #   @return [Time, nil]
      optional :invoice_date_gte, Time, api_name: :"invoice_date[gte]", nil?: true

      # @!attribute invoice_date_lt
      #
      #   @return [Time, nil]
      optional :invoice_date_lt, Time, api_name: :"invoice_date[lt]", nil?: true

      # @!attribute invoice_date_lte
      #
      #   @return [Time, nil]
      optional :invoice_date_lte, Time, api_name: :"invoice_date[lte]", nil?: true

      # @!attribute is_recurring
      #
      #   @return [Boolean, nil]
      optional :is_recurring, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute [r] limit
      #   The number of items to fetch. Defaults to 20.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute status
      #
      #   @return [Array<Symbol, Orb::Models::InvoiceListParams::Status>, nil]
      optional :status,
               -> { Orb::Internal::Type::ArrayOf[enum: Orb::Models::InvoiceListParams::Status] },
               nil?: true

      # @!attribute subscription_id
      #
      #   @return [String, nil]
      optional :subscription_id, String, nil?: true

      # @!parse
      #   # @param amount [String, nil]
      #   # @param amount_gt [String, nil]
      #   # @param amount_lt [String, nil]
      #   # @param cursor [String, nil]
      #   # @param customer_id [String, nil]
      #   # @param date_type [Symbol, Orb::Models::InvoiceListParams::DateType, nil]
      #   # @param due_date [Date, nil]
      #   # @param due_date_window [String, nil]
      #   # @param due_date_gt [Date, nil]
      #   # @param due_date_lt [Date, nil]
      #   # @param external_customer_id [String, nil]
      #   # @param invoice_date_gt [Time, nil]
      #   # @param invoice_date_gte [Time, nil]
      #   # @param invoice_date_lt [Time, nil]
      #   # @param invoice_date_lte [Time, nil]
      #   # @param is_recurring [Boolean, nil]
      #   # @param limit [Integer]
      #   # @param status [Array<Symbol, Orb::Models::InvoiceListParams::Status>, nil]
      #   # @param subscription_id [String, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     amount: nil,
      #     amount_gt: nil,
      #     amount_lt: nil,
      #     cursor: nil,
      #     customer_id: nil,
      #     date_type: nil,
      #     due_date: nil,
      #     due_date_window: nil,
      #     due_date_gt: nil,
      #     due_date_lt: nil,
      #     external_customer_id: nil,
      #     invoice_date_gt: nil,
      #     invoice_date_gte: nil,
      #     invoice_date_lt: nil,
      #     invoice_date_lte: nil,
      #     is_recurring: nil,
      #     limit: nil,
      #     status: nil,
      #     subscription_id: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

      module DateType
        extend Orb::Internal::Type::Enum

        DUE_DATE = :due_date
        INVOICE_DATE = :invoice_date

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end

      module Status
        extend Orb::Internal::Type::Enum

        DRAFT = :draft
        ISSUED = :issued
        PAID = :paid
        SYNCED = :synced
        VOID = :void

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
