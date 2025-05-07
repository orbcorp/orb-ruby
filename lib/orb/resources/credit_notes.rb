# frozen_string_literal: true

module Orb
  module Resources
    class CreditNotes
      # This endpoint is used to create a single
      # [`Credit Note`](/invoicing/credit-notes).
      #
      # @overload create(line_items:, memo: nil, reason: nil, request_options: {})
      #
      # @param line_items [Array<Orb::CreditNoteCreateParams::LineItem>]
      #
      # @param memo [String, nil] An optional memo to attach to the credit note.
      #
      # @param reason [Symbol, Orb::CreditNoteCreateParams::Reason, nil] An optional reason for the credit note.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::CreditNote]
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
      # @return [Orb::Internal::Page<Orb::CreditNote>]
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
      # @return [Orb::CreditNote]
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
