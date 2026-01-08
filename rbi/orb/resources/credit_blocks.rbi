# typed: strong

module Orb
  module Resources
    class CreditBlocks
      # This endpoint returns a credit block identified by its block_id.
      sig do
        params(
          block_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::CreditBlockRetrieveResponse)
      end
      def retrieve(block_id, request_options: {})
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
      sig do
        params(
          block_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).void
      end
      def delete(block_id, request_options: {})
      end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
