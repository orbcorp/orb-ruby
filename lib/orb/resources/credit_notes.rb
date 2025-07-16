# frozen_string_literal: true

module Orb
  module Resources
    class CreditNotes
      # Some parameter documentations has been truncated, see
      # {Orb::Models::CreditNoteCreateParams} for more details.
      #
      # This endpoint is used to create a single
      # [`Credit Note`](/invoicing/credit-notes).
      #
      # The credit note service period configuration supports two explicit modes:
      #
      # 1. Global service periods: Specify start_date and end_date at the credit note
      #    level. These dates will be applied to all line items uniformly.
      #
      # 2. Individual service periods: Specify start_date and end_date for each line
      #    item. When using this mode, ALL line items must have individual periods
      #    specified.
      #
      # 3. Default behavior: If no service periods are specified (neither global nor
      #    individual), the original invoice line item service periods will be used.
      #
      # Note: Mixing global and individual service periods in the same request is not
      # allowed to prevent confusion.
      #
      # Service period dates are normalized to the start of the day in the customer's
      # timezone to ensure consistent handling across different timezones.
      #
      # Date Format: Use start_date and end_date with format "YYYY-MM-DD" (e.g.,
      # "2023-09-22") to match other Orb APIs like /v1/invoice_line_items.
      #
      # Note: Both start_date and end_date are inclusive - the service period will cover
      # both the start date and end date completely (from start of start_date to end of
      # end_date).
      #
      # @overload create(line_items:, reason:, end_date: nil, memo: nil, start_date: nil, request_options: {})
      #
      # @param line_items [Array<Orb::Models::CreditNoteCreateParams::LineItem>]
      #
      # @param reason [Symbol, Orb::Models::CreditNoteCreateParams::Reason] An optional reason for the credit note.
      #
      # @param end_date [Date, nil] An optional date string to specify the global credit note service period end dat
      #
      # @param memo [String, nil] An optional memo to attach to the credit note.
      #
      # @param start_date [Date, nil] An optional date string to specify the global credit note service period end dat
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::CreditNote]
      #
      # @see Orb::Models::CreditNoteCreateParams
      def create(params)
        parsed, options = Orb::CreditNoteCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "credit_notes",
          body: parsed,
          model: Orb::CreditNote,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::CreditNoteListParams} for more details.
      #
      # Get a paginated list of CreditNotes. Users can also filter by customer_id,
      # subscription_id, or external_customer_id. The credit notes will be returned in
      # reverse chronological order by `creation_time`.
      #
      # @overload list(created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, cursor: nil, limit: nil, request_options: {})
      #
      # @param created_at_gt [Time, nil]
      #
      # @param created_at_gte [Time, nil]
      #
      # @param created_at_lt [Time, nil]
      #
      # @param created_at_lte [Time, nil]
      #
      # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #
      # @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Models::CreditNote>]
      #
      # @see Orb::Models::CreditNoteListParams
      def list(params = {})
        parsed, options = Orb::CreditNoteListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "credit_notes",
          query: parsed.transform_keys(
            created_at_gt: "created_at[gt]",
            created_at_gte: "created_at[gte]",
            created_at_lt: "created_at[lt]",
            created_at_lte: "created_at[lte]"
          ),
          page: Orb::Internal::Page,
          model: Orb::CreditNote,
          options: options
        )
      end

      # This endpoint is used to fetch a single [`Credit Note`](/invoicing/credit-notes)
      # given an identifier.
      #
      # @overload fetch(credit_note_id, request_options: {})
      #
      # @param credit_note_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::CreditNote]
      #
      # @see Orb::Models::CreditNoteFetchParams
      def fetch(credit_note_id, params = {})
        @client.request(
          method: :get,
          path: ["credit_notes/%1$s", credit_note_id],
          model: Orb::CreditNote,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
