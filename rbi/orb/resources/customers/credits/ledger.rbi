# typed: strong

module Orb
  module Resources
    class Customers
      class Credits
        # The [Credit Ledger Entry resource](/product-catalog/prepurchase) models prepaid
        # credits within Orb.
        class Ledger
          # The credits ledger provides _auditing_ functionality over Orb's credits system
          # with a list of actions that have taken place to modify a customer's credit
          # balance. This [paginated endpoint](/api-reference/pagination) lists these
          # entries, starting from the most recent ledger entry.
          #
          # More details on using Orb's real-time credit feature are
          # [here](/product-catalog/prepurchase).
          #
          # There are four major types of modifications to credit balance, detailed below.
          #
          # ## Increment
          #
          # Credits (which optionally expire on a future date) can be added via the API
          # ([Add Ledger Entry](create-ledger-entry)). The ledger entry for such an action
          # will always contain the total eligible starting and ending balance for the
          # customer at the time the entry was added to the ledger.
          #
          # ## Decrement
          #
          # Deductions can occur as a result of an API call to create a ledger entry (see
          # [Add Ledger Entry](create-ledger-entry)), or automatically as a result of
          # incurring usage. Both ledger entries present the `decrement` entry type.
          #
          # As usage for a customer is reported into Orb, credits may be deducted according
          # to the customer's plan configuration. An automated deduction of this type will
          # result in a ledger entry, also with a starting and ending balance. Each day's
          # usage for a particular price, invoice, and block will be grouped into a single
          # entry.
          #
          # By default, Orb uses an algorithm that automatically deducts from the _soonest
          # expiring credit block_ first in order to ensure that all credits are utilized
          # appropriately. As an example, if trial credits with an expiration date of 2
          # weeks from now are present for a customer, they will be used before any
          # deductions take place from a non-expiring credit block.
          #
          # If there are multiple blocks with the same expiration date, Orb will deduct from
          # the block with the _lower cost basis_ first (e.g. trial credits with a \$0 cost
          # basis before paid credits with a \$5.00 cost basis).
          #
          # It's also possible for a single usage event's deduction to _span_ credit blocks.
          # In this case, Orb will deduct from the next block, ending at the credit block
          # which consists of unexpiring credits. Each of these deductions will lead to a
          # _separate_ ledger entry, one per credit block that is deducted from. By default,
          # the customer's total credit balance in Orb can be negative as a result of a
          # decrement.
          #
          # ## Expiration change
          #
          # The expiry of credits can be changed as a result of the API (See
          # [Add Ledger Entry](create-ledger-entry)). This will create a ledger entry that
          # specifies the balance as well as the initial and target expiry dates.
          #
          # Note that for this entry type, `starting_balance` will equal `ending_balance`,
          # and the `amount` represents the balance transferred. The credit block linked to
          # the ledger entry is the source credit block from which there was an expiration
          # change.
          #
          # ## Credits expiry
          #
          # When a set of credits expire on pre-set expiration date, the customer's balance
          # automatically reflects this change and adds an entry to the ledger indicating
          # this event. Note that credit expiry should always happen close to a date
          # boundary in the customer's timezone.
          #
          # ## Void initiated
          #
          # Credit blocks can be voided via the API. The `amount` on this entry corresponds
          # to the number of credits that were remaining in the block at time of void.
          # `void_reason` will be populated if the void is created with a reason.
          #
          # ## Void
          #
          # When a set of credits is voided, the customer's balance automatically reflects
          # this change and adds an entry to the ledger indicating this event.
          #
          # ## Amendment
          #
          # When credits are added to a customer's balance as a result of a correction, this
          # entry will be added to the ledger to indicate the adjustment of credits.
          sig do
            params(
              customer_id: String,
              created_at_gt: T.nilable(Time),
              created_at_gte: T.nilable(Time),
              created_at_lt: T.nilable(Time),
              created_at_lte: T.nilable(Time),
              currency: T.nilable(String),
              cursor: T.nilable(String),
              entry_status:
                T.nilable(
                  Orb::Customers::Credits::LedgerListParams::EntryStatus::OrSymbol
                ),
              entry_type:
                T.nilable(
                  Orb::Customers::Credits::LedgerListParams::EntryType::OrSymbol
                ),
              limit: Integer,
              minimum_amount: T.nilable(String),
              request_options: Orb::RequestOptions::OrHash
            ).returns(
              Orb::Internal::Page[
                Orb::Models::Customers::Credits::LedgerListResponse::Variants
              ]
            )
          end
          def list(
            customer_id,
            created_at_gt: nil,
            created_at_gte: nil,
            created_at_lt: nil,
            created_at_lte: nil,
            # The ledger currency or custom pricing unit to use.
            currency: nil,
            # Cursor for pagination. This can be populated by the `next_cursor` value returned
            # from the initial request.
            cursor: nil,
            entry_status: nil,
            entry_type: nil,
            # The number of items to fetch. Defaults to 20.
            limit: nil,
            minimum_amount: nil,
            request_options: {}
          )
          end

          # This endpoint allows you to create a new ledger entry for a specified customer's
          # balance. This can be used to increment balance, deduct credits, and change the
          # expiry date of existing credits.
          #
          # ## Effects of adding a ledger entry
          #
          # 1. After calling this endpoint, [Fetch Credit Balance](fetch-customer-credits)
          #    will return a credit block that represents the changes (i.e. balance changes
          #    or transfers).
          # 2. A ledger entry will be added to the credits ledger for this customer, and
          #    therefore returned in the
          #    [View Credits Ledger](fetch-customer-credits-ledger) response as well as
          #    serialized in the response to this request. In the case of deductions without
          #    a specified block, multiple ledger entries may be created if the deduction
          #    spans credit blocks.
          # 3. If `invoice_settings` is specified, an invoice will be created that reflects
          #    the cost of the credits (based on `amount` and `per_unit_cost_basis`).
          #
          # ## Adding credits
          #
          # Adding credits is done by creating an entry of type `increment`. This requires
          # the caller to specify a number of credits as well as an optional expiry date in
          # `YYYY-MM-DD` format. Orb also recommends specifying a description to assist with
          # auditing. When adding credits, the caller can also specify a cost basis
          # per-credit, to indicate how much in USD a customer paid for a single credit in a
          # block. This can later be used for revenue recognition.
          #
          # The following snippet illustrates a sample request body to increment credits
          # which will expire in January of 2022.
          #
          # ```json
          # {
          #   "entry_type": "increment",
          #   "amount": 100,
          #   "expiry_date": "2022-12-28",
          #   "per_unit_cost_basis": "0.20",
          #   "description": "Purchased 100 credits"
          # }
          # ```
          #
          # Note that by default, Orb will always first increment any _negative_ balance in
          # existing blocks before adding the remaining amount to the desired credit block.
          #
          # ### Invoicing for credits
          #
          # By default, Orb manipulates the credit ledger but does not charge for credits.
          # However, if you pass `invoice_settings` in the body of this request, Orb will
          # also generate a one-off invoice for the customer for the credits pre-purchase.
          # Note that you _must_ provide the `per_unit_cost_basis`, since the total charges
          # on the invoice are calculated by multiplying the cost basis with the number of
          # credit units added. If you invoice or handle payment of credits outside of Orb
          # (i.e. marketplace customers), set `mark_as_paid` in the `invoice_settings` to
          # `true` to prevent duplicate invoicing effects.
          #
          # - if `per_unit_cost_basis` is greater than zero, an invoice will be generated
          #   and `invoice_settings` must be included
          # - if `invoice_settings` is passed, one of either `custom_due_date` or
          #   `net_terms` is required to determine the due date
          #
          # ## Deducting Credits
          #
          # Orb allows you to deduct credits from a customer by creating an entry of type
          # `decrement`. A `decrement` entry records credits as usage and immediately
          # recognizes revenue at the block's `per_unit_cost_basis`.
          #
          # For most credit removals, use `void` (no revenue impact) or `expiration_change`
          # (revenue recognized on expiration) instead. Only use `decrement` when credits
          # were genuinely consumed outside of normal event ingestion.
          #
          # Orb matches the algorithm for automatic deductions for determining which credit
          # blocks to decrement from. In the case that the deduction leads to multiple
          # ledger entries, the response from this endpoint will be the final deduction. Orb
          # also optionally allows specifying a description to assist with auditing.
          #
          # The following snippet illustrates a sample request body to decrement credits.
          #
          # ```json
          # {
          #   "entry_type": "decrement",
          #   "amount": 20,
          #   "description": "Removing excess credits"
          # }
          # ```
          #
          # ## Changing credits expiry
          #
          # If you'd like to change when existing credits expire, you should create a ledger
          # entry of type `expiration_change`. For this entry, the required parameter
          # `expiry_date` identifies the _originating_ block, and the required parameter
          # `target_expiry_date` identifies when the transferred credits should now expire.
          # A new credit block will be created with expiry date `target_expiry_date`, with
          # the same cost basis data as the original credit block, if present.
          #
          # Note that the balance of the block with the given `expiry_date` must be at least
          # equal to the desired transfer amount determined by the `amount` parameter.
          #
          # The following snippet illustrates a sample request body to extend the expiration
          # date of credits by one year:
          #
          # ```json
          # {
          #   "entry_type": "expiration_change",
          #   "amount": 10,
          #   "expiry_date": "2022-12-28",
          #   "block_id": "UiUhFWeLHPrBY4Ad",
          #   "target_expiry_date": "2023-12-28",
          #   "description": "Extending credit validity"
          # }
          # ```
          #
          # ## Voiding credits
          #
          # If you'd like to void a credit block, create a ledger entry of type `void`. For
          # this entry, `block_id` is required to identify the block, and `amount` indicates
          # how many credits to void, up to the block's initial balance. Pass in a
          # `void_reason` of `refund` if the void is due to a refund.
          #
          # ## Amendment
          #
          # If you'd like to undo a decrement on a credit block, create a ledger entry of
          # type `amendment`. For this entry, `block_id` is required to identify the block
          # that was originally decremented from, and `amount` indicates how many credits to
          # return to the customer, up to the block's initial balance.
          sig do
            params(
              customer_id: String,
              body:
                T.any(
                  Orb::Customers::Credits::LedgerCreateEntryParams::Body::Increment::OrHash,
                  Orb::Customers::Credits::LedgerCreateEntryParams::Body::Decrement::OrHash,
                  Orb::Customers::Credits::LedgerCreateEntryParams::Body::ExpirationChange::OrHash,
                  Orb::Customers::Credits::LedgerCreateEntryParams::Body::Void::OrHash,
                  Orb::Customers::Credits::LedgerCreateEntryParams::Body::Amendment::OrHash
                ),
              request_options: Orb::RequestOptions::OrHash
            ).returns(
              Orb::Models::Customers::Credits::LedgerCreateEntryResponse::Variants
            )
          end
          def create_entry(customer_id, body:, request_options: {})
          end

          # This endpoint allows you to create a new ledger entry for a specified customer's
          # balance. This can be used to increment balance, deduct credits, and change the
          # expiry date of existing credits.
          #
          # ## Effects of adding a ledger entry
          #
          # 1. After calling this endpoint, [Fetch Credit Balance](fetch-customer-credits)
          #    will return a credit block that represents the changes (i.e. balance changes
          #    or transfers).
          # 2. A ledger entry will be added to the credits ledger for this customer, and
          #    therefore returned in the
          #    [View Credits Ledger](fetch-customer-credits-ledger) response as well as
          #    serialized in the response to this request. In the case of deductions without
          #    a specified block, multiple ledger entries may be created if the deduction
          #    spans credit blocks.
          # 3. If `invoice_settings` is specified, an invoice will be created that reflects
          #    the cost of the credits (based on `amount` and `per_unit_cost_basis`).
          #
          # ## Adding credits
          #
          # Adding credits is done by creating an entry of type `increment`. This requires
          # the caller to specify a number of credits as well as an optional expiry date in
          # `YYYY-MM-DD` format. Orb also recommends specifying a description to assist with
          # auditing. When adding credits, the caller can also specify a cost basis
          # per-credit, to indicate how much in USD a customer paid for a single credit in a
          # block. This can later be used for revenue recognition.
          #
          # The following snippet illustrates a sample request body to increment credits
          # which will expire in January of 2022.
          #
          # ```json
          # {
          #   "entry_type": "increment",
          #   "amount": 100,
          #   "expiry_date": "2022-12-28",
          #   "per_unit_cost_basis": "0.20",
          #   "description": "Purchased 100 credits"
          # }
          # ```
          #
          # Note that by default, Orb will always first increment any _negative_ balance in
          # existing blocks before adding the remaining amount to the desired credit block.
          #
          # ### Invoicing for credits
          #
          # By default, Orb manipulates the credit ledger but does not charge for credits.
          # However, if you pass `invoice_settings` in the body of this request, Orb will
          # also generate a one-off invoice for the customer for the credits pre-purchase.
          # Note that you _must_ provide the `per_unit_cost_basis`, since the total charges
          # on the invoice are calculated by multiplying the cost basis with the number of
          # credit units added. If you invoice or handle payment of credits outside of Orb
          # (i.e. marketplace customers), set `mark_as_paid` in the `invoice_settings` to
          # `true` to prevent duplicate invoicing effects.
          #
          # - if `per_unit_cost_basis` is greater than zero, an invoice will be generated
          #   and `invoice_settings` must be included
          # - if `invoice_settings` is passed, one of either `custom_due_date` or
          #   `net_terms` is required to determine the due date
          #
          # ## Deducting Credits
          #
          # Orb allows you to deduct credits from a customer by creating an entry of type
          # `decrement`. A `decrement` entry records credits as usage and immediately
          # recognizes revenue at the block's `per_unit_cost_basis`.
          #
          # For most credit removals, use `void` (no revenue impact) or `expiration_change`
          # (revenue recognized on expiration) instead. Only use `decrement` when credits
          # were genuinely consumed outside of normal event ingestion.
          #
          # Orb matches the algorithm for automatic deductions for determining which credit
          # blocks to decrement from. In the case that the deduction leads to multiple
          # ledger entries, the response from this endpoint will be the final deduction. Orb
          # also optionally allows specifying a description to assist with auditing.
          #
          # The following snippet illustrates a sample request body to decrement credits.
          #
          # ```json
          # {
          #   "entry_type": "decrement",
          #   "amount": 20,
          #   "description": "Removing excess credits"
          # }
          # ```
          #
          # ## Changing credits expiry
          #
          # If you'd like to change when existing credits expire, you should create a ledger
          # entry of type `expiration_change`. For this entry, the required parameter
          # `expiry_date` identifies the _originating_ block, and the required parameter
          # `target_expiry_date` identifies when the transferred credits should now expire.
          # A new credit block will be created with expiry date `target_expiry_date`, with
          # the same cost basis data as the original credit block, if present.
          #
          # Note that the balance of the block with the given `expiry_date` must be at least
          # equal to the desired transfer amount determined by the `amount` parameter.
          #
          # The following snippet illustrates a sample request body to extend the expiration
          # date of credits by one year:
          #
          # ```json
          # {
          #   "entry_type": "expiration_change",
          #   "amount": 10,
          #   "expiry_date": "2022-12-28",
          #   "block_id": "UiUhFWeLHPrBY4Ad",
          #   "target_expiry_date": "2023-12-28",
          #   "description": "Extending credit validity"
          # }
          # ```
          #
          # ## Voiding credits
          #
          # If you'd like to void a credit block, create a ledger entry of type `void`. For
          # this entry, `block_id` is required to identify the block, and `amount` indicates
          # how many credits to void, up to the block's initial balance. Pass in a
          # `void_reason` of `refund` if the void is due to a refund.
          #
          # ## Amendment
          #
          # If you'd like to undo a decrement on a credit block, create a ledger entry of
          # type `amendment`. For this entry, `block_id` is required to identify the block
          # that was originally decremented from, and `amount` indicates how many credits to
          # return to the customer, up to the block's initial balance.
          sig do
            params(
              external_customer_id: String,
              body:
                T.any(
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Increment::OrHash,
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Decrement::OrHash,
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::ExpirationChange::OrHash,
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Void::OrHash,
                  Orb::Customers::Credits::LedgerCreateEntryByExternalIDParams::Body::Amendment::OrHash
                ),
              request_options: Orb::RequestOptions::OrHash
            ).returns(
              Orb::Models::Customers::Credits::LedgerCreateEntryByExternalIDResponse::Variants
            )
          end
          def create_entry_by_external_id(
            external_customer_id,
            body:,
            request_options: {}
          )
          end

          # The credits ledger provides _auditing_ functionality over Orb's credits system
          # with a list of actions that have taken place to modify a customer's credit
          # balance. This [paginated endpoint](/api-reference/pagination) lists these
          # entries, starting from the most recent ledger entry.
          #
          # More details on using Orb's real-time credit feature are
          # [here](/product-catalog/prepurchase).
          #
          # There are four major types of modifications to credit balance, detailed below.
          #
          # ## Increment
          #
          # Credits (which optionally expire on a future date) can be added via the API
          # ([Add Ledger Entry](create-ledger-entry)). The ledger entry for such an action
          # will always contain the total eligible starting and ending balance for the
          # customer at the time the entry was added to the ledger.
          #
          # ## Decrement
          #
          # Deductions can occur as a result of an API call to create a ledger entry (see
          # [Add Ledger Entry](create-ledger-entry)), or automatically as a result of
          # incurring usage. Both ledger entries present the `decrement` entry type.
          #
          # As usage for a customer is reported into Orb, credits may be deducted according
          # to the customer's plan configuration. An automated deduction of this type will
          # result in a ledger entry, also with a starting and ending balance. Each day's
          # usage for a particular price, invoice, and block will be grouped into a single
          # entry.
          #
          # By default, Orb uses an algorithm that automatically deducts from the _soonest
          # expiring credit block_ first in order to ensure that all credits are utilized
          # appropriately. As an example, if trial credits with an expiration date of 2
          # weeks from now are present for a customer, they will be used before any
          # deductions take place from a non-expiring credit block.
          #
          # If there are multiple blocks with the same expiration date, Orb will deduct from
          # the block with the _lower cost basis_ first (e.g. trial credits with a \$0 cost
          # basis before paid credits with a \$5.00 cost basis).
          #
          # It's also possible for a single usage event's deduction to _span_ credit blocks.
          # In this case, Orb will deduct from the next block, ending at the credit block
          # which consists of unexpiring credits. Each of these deductions will lead to a
          # _separate_ ledger entry, one per credit block that is deducted from. By default,
          # the customer's total credit balance in Orb can be negative as a result of a
          # decrement.
          #
          # ## Expiration change
          #
          # The expiry of credits can be changed as a result of the API (See
          # [Add Ledger Entry](create-ledger-entry)). This will create a ledger entry that
          # specifies the balance as well as the initial and target expiry dates.
          #
          # Note that for this entry type, `starting_balance` will equal `ending_balance`,
          # and the `amount` represents the balance transferred. The credit block linked to
          # the ledger entry is the source credit block from which there was an expiration
          # change.
          #
          # ## Credits expiry
          #
          # When a set of credits expire on pre-set expiration date, the customer's balance
          # automatically reflects this change and adds an entry to the ledger indicating
          # this event. Note that credit expiry should always happen close to a date
          # boundary in the customer's timezone.
          #
          # ## Void initiated
          #
          # Credit blocks can be voided via the API. The `amount` on this entry corresponds
          # to the number of credits that were remaining in the block at time of void.
          # `void_reason` will be populated if the void is created with a reason.
          #
          # ## Void
          #
          # When a set of credits is voided, the customer's balance automatically reflects
          # this change and adds an entry to the ledger indicating this event.
          #
          # ## Amendment
          #
          # When credits are added to a customer's balance as a result of a correction, this
          # entry will be added to the ledger to indicate the adjustment of credits.
          sig do
            params(
              external_customer_id: String,
              created_at_gt: T.nilable(Time),
              created_at_gte: T.nilable(Time),
              created_at_lt: T.nilable(Time),
              created_at_lte: T.nilable(Time),
              currency: T.nilable(String),
              cursor: T.nilable(String),
              entry_status:
                T.nilable(
                  Orb::Customers::Credits::LedgerListByExternalIDParams::EntryStatus::OrSymbol
                ),
              entry_type:
                T.nilable(
                  Orb::Customers::Credits::LedgerListByExternalIDParams::EntryType::OrSymbol
                ),
              limit: Integer,
              minimum_amount: T.nilable(String),
              request_options: Orb::RequestOptions::OrHash
            ).returns(
              Orb::Internal::Page[
                Orb::Models::Customers::Credits::LedgerListByExternalIDResponse::Variants
              ]
            )
          end
          def list_by_external_id(
            external_customer_id,
            created_at_gt: nil,
            created_at_gte: nil,
            created_at_lt: nil,
            created_at_lte: nil,
            # The ledger currency or custom pricing unit to use.
            currency: nil,
            # Cursor for pagination. This can be populated by the `next_cursor` value returned
            # from the initial request.
            cursor: nil,
            entry_status: nil,
            entry_type: nil,
            # The number of items to fetch. Defaults to 20.
            limit: nil,
            minimum_amount: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Orb::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
