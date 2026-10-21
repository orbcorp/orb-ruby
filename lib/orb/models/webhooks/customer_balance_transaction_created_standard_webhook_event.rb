# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      class CustomerBalanceTransactionCreatedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of this webhook event.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The time at which this event was created, to the second.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute customer
        #   A customer is a buyer of your products, and the other party to the billing
        #   relationship.
        #
        #   In Orb, customers are assigned system generated identifiers automatically, but
        #   it's often desirable to have these match existing identifiers in your system. To
        #   avoid having to denormalize Orb ID information, you can pass in an
        #   `external_customer_id` with your own identifier. See
        #   [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
        #   information about how these aliases work in Orb.
        #
        #   In addition to having an identifier in your system, a customer may exist in a
        #   payment provider solution like Stripe. Use the `payment_provider_id` and the
        #   `payment_provider` enum field to express this mapping.
        #
        #   A customer also has a timezone (from the standard
        #   [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
        #   your account's timezone. See [Timezone localization](/essentials/timezones) for
        #   information on what this timezone parameter influences within Orb.
        #
        #   @return [Orb::Models::Customer]
        required :customer, -> { Orb::Customer }

        # @!attribute payload_style
        #   The serialization style this payload was rendered in, as configured on the
        #   endpoint.
        #
        #   @return [Symbol, Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::PayloadStyle]
        required :payload_style,
                 enum: -> { Orb::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::PayloadStyle }

        # @!attribute properties
        #
        #   @return [Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Properties]
        required :properties,
                 -> { Orb::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Properties }

        # @!attribute type
        #   The event this payload describes.
        #
        #   @return [Symbol, Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Type]
        required :type, enum: -> { Orb::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Type }

        # @!method initialize(id:, created_at:, customer:, payload_style:, properties:, type:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent}
        #   for more details.
        #
        #   Issued when a customer balance transaction is created.
        #
        #   @param id [String] The ID of this webhook event.
        #
        #   @param created_at [Time] The time at which this event was created, to the second.
        #
        #   @param customer [Orb::Models::Customer] A customer is a buyer of your products, and the other party to the billing relat
        #
        #   @param payload_style [Symbol, Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::PayloadStyle] The serialization style this payload was rendered in, as configured on the endpo
        #
        #   @param properties [Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Properties]
        #
        #   @param type [Symbol, Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Type] The event this payload describes.

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        #
        # @see Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent#payload_style
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          EXPANDED = :expanded
          STANDARD = :standard

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent#properties
        class Properties < Orb::Internal::Type::BaseModel
          # @!attribute balance_transaction
          #
          #   @return [Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Properties::BalanceTransaction]
          required :balance_transaction,
                   -> { Orb::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Properties::BalanceTransaction }

          # @!method initialize(balance_transaction:)
          #   @param balance_transaction [Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Properties::BalanceTransaction]

          # @see Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Properties#balance_transaction
          class BalanceTransaction < Orb::Internal::Type::BaseModel
            # @!attribute id
            #   A unique id for this transaction.
            #
            #   @return [String]
            required :id, String

            # @!attribute action
            #
            #   @return [Symbol, Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Properties::BalanceTransaction::Action]
            required :action,
                     enum: -> { Orb::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Properties::BalanceTransaction::Action }

            # @!attribute amount
            #   The value of the amount changed in the transaction.
            #
            #   @return [String]
            required :amount, String

            # @!attribute created_at
            #   The creation time of this transaction.
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute credit_note
            #
            #   @return [Orb::Models::CreditNoteTiny, nil]
            required :credit_note, -> { Orb::CreditNoteTiny }, nil?: true

            # @!attribute description
            #   An optional description provided for manual customer balance adjustments.
            #
            #   @return [String, nil]
            required :description, String, nil?: true

            # @!attribute ending_balance
            #   The new value of the customer's balance prior to the transaction, in the
            #   customer's currency.
            #
            #   @return [String]
            required :ending_balance, String

            # @!attribute invoice
            #
            #   @return [Orb::Models::InvoiceTiny, nil]
            required :invoice, -> { Orb::InvoiceTiny }, nil?: true

            # @!attribute starting_balance
            #   The original value of the customer's balance prior to the transaction, in the
            #   customer's currency.
            #
            #   @return [String]
            required :starting_balance, String

            # @!attribute type
            #
            #   @return [Symbol, Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Properties::BalanceTransaction::Type]
            required :type,
                     enum: -> { Orb::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Properties::BalanceTransaction::Type }

            # @!method initialize(id:, action:, amount:, created_at:, credit_note:, description:, ending_balance:, invoice:, starting_balance:, type:)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Properties::BalanceTransaction}
            #   for more details.
            #
            #   @param id [String] A unique id for this transaction.
            #
            #   @param action [Symbol, Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Properties::BalanceTransaction::Action]
            #
            #   @param amount [String] The value of the amount changed in the transaction.
            #
            #   @param created_at [Time] The creation time of this transaction.
            #
            #   @param credit_note [Orb::Models::CreditNoteTiny, nil]
            #
            #   @param description [String, nil] An optional description provided for manual customer balance adjustments.
            #
            #   @param ending_balance [String] The new value of the customer's balance prior to the transaction, in the custome
            #
            #   @param invoice [Orb::Models::InvoiceTiny, nil]
            #
            #   @param starting_balance [String] The original value of the customer's balance prior to the transaction, in the cu
            #
            #   @param type [Symbol, Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Properties::BalanceTransaction::Type]

            # @see Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Properties::BalanceTransaction#action
            module Action
              extend Orb::Internal::Type::Enum

              APPLIED_TO_INVOICE = :applied_to_invoice
              MANUAL_ADJUSTMENT = :manual_adjustment
              PRORATED_REFUND = :prorated_refund
              REVERT_PRORATED_REFUND = :revert_prorated_refund
              RETURN_FROM_VOIDING = :return_from_voiding
              CREDIT_NOTE_APPLIED = :credit_note_applied
              CREDIT_NOTE_VOIDED = :credit_note_voided
              OVERPAYMENT_REFUND = :overpayment_refund
              EXTERNAL_PAYMENT = :external_payment
              SMALL_INVOICE_CARRYOVER = :small_invoice_carryover
              PREPAID_COMMIT_CANCEL = :prepaid_commit_cancel

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent::Properties::BalanceTransaction#type
            module Type
              extend Orb::Internal::Type::Enum

              INCREMENT = :increment
              DECREMENT = :decrement

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # The event this payload describes.
        #
        # @see Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent#type
        module Type
          extend Orb::Internal::Type::Enum

          CUSTOMER_BALANCE_TRANSACTION_CREATED = :"customer.balance_transaction_created"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
