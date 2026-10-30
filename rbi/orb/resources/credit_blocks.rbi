# typed: strong

module Orb
  module Resources
    # The [Credit Ledger Entry resource](/product-catalog/prepurchase) models prepaid
    # credits within Orb.
    class CreditBlocks
      # This endpoint returns a credit block identified by its block_id. A deleted
      # credit block is returned with a `status` of `void` and a `balance` of 0.
      sig do
        params(
          block_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::CreditBlockRetrieveResponse)
      end
      def retrieve(block_id, request_options: {})
      end

      # This endpoint updates the `metadata` of a credit block. Keys you pass are added
      # to the block's existing metadata or overwrite the value already stored for that
      # key, and setting a key to `null` removes it. Passing `null` for `metadata`
      # clears all of the block's metadata. The block's `increment` entry in the
      # [credits ledger](fetch-customer-credits-ledger) reports the block's metadata, so
      # it shows the update too.
      #
      # Other fields on a credit block cannot be changed through this endpoint. Deleted
      # credit blocks return a 404.
      sig do
        params(
          block_id: String,
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::CreditBlockUpdateResponse)
      end
      def update(
        block_id,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        request_options: {}
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
      sig do
        params(
          block_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).void
      end
      def delete(block_id, request_options: {})
      end

      # This endpoint returns the credit block and its associated purchasing invoices.
      #
      # If a credit block was purchased (as opposed to being manually added), this
      # endpoint returns the invoices that were created to charge the customer for the
      # credit block. For credit blocks with payment schedules spanning multiple periods
      # (e.g., monthly payments over 12 months), multiple invoices will be returned.
      #
      # For credit blocks created by subscription allocation prices, this endpoint
      # returns the subscription invoice containing the allocation line item that
      # created the block.
      #
      # If the credit block was not purchased (e.g., manual increment), an empty
      # invoices list is returned.
      #
      # **Note: This endpoint is currently experimental and its interface may change in
      # future releases. Please contact support before building production integrations
      # against this endpoint.**
      sig do
        params(
          block_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::CreditBlockListInvoicesResponse)
      end
      def list_invoices(block_id, request_options: {})
      end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
