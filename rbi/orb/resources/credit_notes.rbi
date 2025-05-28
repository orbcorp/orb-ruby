# typed: strong

module Orb
  module Resources
    class CreditNotes
      # This endpoint is used to create a single
      # [`Credit Note`](/invoicing/credit-notes).
      sig do
        params(
          line_items: T::Array[Orb::CreditNoteCreateParams::LineItem::OrHash],
          reason: Orb::CreditNoteCreateParams::Reason::OrSymbol,
          memo: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::CreditNote)
      end
      def create(
        line_items:,
        # An optional reason for the credit note.
        reason:,
        # An optional memo to attach to the credit note.
        memo: nil,
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
