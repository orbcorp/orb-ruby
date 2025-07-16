# typed: strong

module Orb
  module Resources
    class CreditNotes
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
      sig do
        params(
          line_items: T::Array[Orb::CreditNoteCreateParams::LineItem::OrHash],
          reason: Orb::CreditNoteCreateParams::Reason::OrSymbol,
          end_date: T.nilable(Date),
          memo: T.nilable(String),
          start_date: T.nilable(Date),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::CreditNote)
      end
      def create(
        line_items:,
        # An optional reason for the credit note.
        reason:,
        # A date string to specify the global credit note service period end date in the
        # customer's timezone. This will be applied to all line items that don't have
        # their own individual service periods specified. If not provided, line items will
        # use their original invoice line item service periods. This date is inclusive.
        end_date: nil,
        # An optional memo to attach to the credit note.
        memo: nil,
        # A date string to specify the global credit note service period start date in the
        # customer's timezone. This will be applied to all line items that don't have
        # their own individual service periods specified. If not provided, line items will
        # use their original invoice line item service periods. This date is inclusive.
        start_date: nil,
        request_options: {}
      )
      end

      # Get a paginated list of CreditNotes. Users can also filter by customer_id,
      # subscription_id, or external_customer_id. The credit notes will be returned in
      # reverse chronological order by `creation_time`.
      sig do
        params(
          created_at_gt: T.nilable(Time),
          created_at_gte: T.nilable(Time),
          created_at_lt: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          cursor: T.nilable(String),
          limit: Integer,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Internal::Page[Orb::CreditNote])
      end
      def list(
        created_at_gt: nil,
        created_at_gte: nil,
        created_at_lt: nil,
        created_at_lte: nil,
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        request_options: {}
      )
      end

      # This endpoint is used to fetch a single [`Credit Note`](/invoicing/credit-notes)
      # given an identifier.
      sig do
        params(
          credit_note_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::CreditNote)
      end
      def fetch(credit_note_id, request_options: {})
      end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
