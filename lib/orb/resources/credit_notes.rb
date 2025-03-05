# frozen_string_literal: true

module Orb
  module Resources
    class CreditNotes
      # This endpoint is used to create a single
      #   [`Credit Note`](/invoicing/credit-notes).
      #
      # @param params [Orb::Models::CreditNoteCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<Orb::Models::CreditNoteCreateParams::LineItem>] :line_items
      #
      #   @option params [String, nil] :memo An optional memo to attach to the credit note.
      #
      #   @option params [Symbol, Orb::Models::CreditNoteCreateParams::Reason, nil] :reason An optional reason for the credit note.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::CreditNote]
      #
      def create(params)
        parsed, options = Orb::Models::CreditNoteCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "credit_notes",
          body: parsed,
          model: Orb::Models::CreditNote,
          options: options
        )
      end

      # Get a paginated list of CreditNotes. Users can also filter by customer_id,
      #   subscription_id, or external_customer_id. The credit notes will be returned in
      #   reverse chronological order by `creation_time`.
      #
      # @param params [Orb::Models::CreditNoteListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :cursor Cursor for pagination. This can be populated by the `next_cursor` value returned
      #     from the initial request.
      #
      #   @option params [Integer] :limit The number of items to fetch. Defaults to 20.
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Page<Orb::Models::CreditNote>]
      #
      def list(params = {})
        parsed, options = Orb::Models::CreditNoteListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "credit_notes",
          query: parsed,
          page: Orb::Page,
          model: Orb::Models::CreditNote,
          options: options
        )
      end

      # This endpoint is used to fetch a single [`Credit Note`](/invoicing/credit-notes)
      #   given an identifier.
      #
      # @param credit_note_id [String]
      #
      # @param params [Orb::Models::CreditNoteFetchParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Orb::Models::CreditNote]
      #
      def fetch(credit_note_id, params = {})
        @client.request(
          method: :get,
          path: ["credit_notes/%0s", credit_note_id],
          model: Orb::Models::CreditNote,
          options: params[:request_options]
        )
      end

      # @param client [Orb::Client]
      #
      def initialize(client:)
        @client = client
      end
    end
  end
end
