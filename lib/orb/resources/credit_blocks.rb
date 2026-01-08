# frozen_string_literal: true

module Orb
  module Resources
    class CreditBlocks
      # This endpoint returns a credit block identified by its block_id.
      #
      # @overload retrieve(block_id, request_options: {})
      #
      # @param block_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::CreditBlockRetrieveResponse]
      #
      # @see Orb::Models::CreditBlockRetrieveParams
      def retrieve(block_id, params = {})
        @client.request(
          method: :get,
          path: ["credit_blocks/%1$s", block_id],
          model: Orb::Models::CreditBlockRetrieveResponse,
          options: params[:request_options]
        )
      end

      # This endpoint deletes a credit block by its ID.
      #
      # When a credit block is deleted:
      #
      # - The block is removed from the customer's credit ledger.
      # - Any usage of the credit block is reversed, and the ledger is replayed as if
      #   the block never existed.
      # - If invoices were generated from the purchase of the credit block, they will be
      #   deleted if in draft status, voided if issued, or a credit note will be issued
      #   if the invoice is paid.
      #
      # <Note>
      # Issued invoices that had credits applied from this block will not be regenerated, but the ledger will
      # reflect the state as if credits from the deleted block were never applied.
      # </Note>
      #
      # @overload delete(block_id, request_options: {})
      #
      # @param block_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Orb::Models::CreditBlockDeleteParams
      def delete(block_id, params = {})
        @client.request(
          method: :delete,
          path: ["credit_blocks/%1$s", block_id],
          model: NilClass,
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
