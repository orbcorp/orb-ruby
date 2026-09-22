# typed: strong

module Orb
  module Models
    class CustomerBalanceTransactionCreatedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::CustomerBalanceTransactionCreatedWebhookEvent,
            Orb::Internal::AnyHash
          )
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      # A customer is a buyer of your products, and the other party to the billing
      # relationship.
      #
      # In Orb, customers are assigned system generated identifiers automatically, but
      # it's often desirable to have these match existing identifiers in your system. To
      # avoid having to denormalize Orb ID information, you can pass in an
      # `external_customer_id` with your own identifier. See
      # [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
      # information about how these aliases work in Orb.
      #
      # In addition to having an identifier in your system, a customer may exist in a
      # payment provider solution like Stripe. Use the `payment_provider_id` and the
      # `payment_provider` enum field to express this mapping.
      #
      # A customer also has a timezone (from the standard
      # [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
      # your account's timezone. See [Timezone localization](/essentials/timezones) for
      # information on what this timezone parameter influences within Orb.
      sig { returns(Orb::Customer) }
      attr_reader :customer

      sig { params(customer: Orb::Customer::OrHash).void }
      attr_writer :customer

      sig do
        returns(Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties)
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(
          Orb::CustomerBalanceTransactionCreatedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when a customer balance transaction is created.
      sig do
        params(
          id: String,
          created_at: Time,
          customer: Orb::Customer::OrHash,
          properties:
            Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::OrHash,
          type:
            Orb::CustomerBalanceTransactionCreatedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        # The time at which this event was created, to the second.
        created_at:,
        # A customer is a buyer of your products, and the other party to the billing
        # relationship.
        #
        # In Orb, customers are assigned system generated identifiers automatically, but
        # it's often desirable to have these match existing identifiers in your system. To
        # avoid having to denormalize Orb ID information, you can pass in an
        # `external_customer_id` with your own identifier. See
        # [Customer ID Aliases](/events-and-metrics/customer-aliases) for further
        # information about how these aliases work in Orb.
        #
        # In addition to having an identifier in your system, a customer may exist in a
        # payment provider solution like Stripe. Use the `payment_provider_id` and the
        # `payment_provider` enum field to express this mapping.
        #
        # A customer also has a timezone (from the standard
        # [IANA timezone database](https://www.iana.org/time-zones)), which defaults to
        # your account's timezone. See [Timezone localization](/essentials/timezones) for
        # information on what this timezone parameter influences within Orb.
        customer:,
        properties:,
        # The event this payload describes.
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            customer: Orb::Customer,
            properties:
              Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties,
            type:
              Orb::CustomerBalanceTransactionCreatedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig do
          returns(
            Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction
          )
        end
        attr_reader :balance_transaction

        sig do
          params(
            balance_transaction:
              Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::OrHash
          ).void
        end
        attr_writer :balance_transaction

        sig do
          params(
            balance_transaction:
              Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::OrHash
          ).returns(T.attached_class)
        end
        def self.new(balance_transaction:)
        end

        sig do
          override.returns(
            {
              balance_transaction:
                Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction
            }
          )
        end
        def to_hash
        end

        class BalanceTransaction < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction,
                Orb::Internal::AnyHash
              )
            end

          # A unique id for this transaction.
          sig { returns(String) }
          attr_accessor :id

          sig do
            returns(
              Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Action::TaggedSymbol
            )
          end
          attr_accessor :action

          # The value of the amount changed in the transaction.
          sig { returns(String) }
          attr_accessor :amount

          # The creation time of this transaction.
          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(T.nilable(Orb::CreditNoteTiny)) }
          attr_reader :credit_note

          sig do
            params(credit_note: T.nilable(Orb::CreditNoteTiny::OrHash)).void
          end
          attr_writer :credit_note

          # An optional description provided for manual customer balance adjustments.
          sig { returns(T.nilable(String)) }
          attr_accessor :description

          # The new value of the customer's balance prior to the transaction, in the
          # customer's currency.
          sig { returns(String) }
          attr_accessor :ending_balance

          sig { returns(T.nilable(Orb::InvoiceTiny)) }
          attr_reader :invoice

          sig { params(invoice: T.nilable(Orb::InvoiceTiny::OrHash)).void }
          attr_writer :invoice

          # The original value of the customer's balance prior to the transaction, in the
          # customer's currency.
          sig { returns(String) }
          attr_accessor :starting_balance

          sig do
            returns(
              Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              id: String,
              action:
                Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Action::OrSymbol,
              amount: String,
              created_at: Time,
              credit_note: T.nilable(Orb::CreditNoteTiny::OrHash),
              description: T.nilable(String),
              ending_balance: String,
              invoice: T.nilable(Orb::InvoiceTiny::OrHash),
              starting_balance: String,
              type:
                Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # A unique id for this transaction.
            id:,
            action:,
            # The value of the amount changed in the transaction.
            amount:,
            # The creation time of this transaction.
            created_at:,
            credit_note:,
            # An optional description provided for manual customer balance adjustments.
            description:,
            # The new value of the customer's balance prior to the transaction, in the
            # customer's currency.
            ending_balance:,
            invoice:,
            # The original value of the customer's balance prior to the transaction, in the
            # customer's currency.
            starting_balance:,
            type:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                action:
                  Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Action::TaggedSymbol,
                amount: String,
                created_at: Time,
                credit_note: T.nilable(Orb::CreditNoteTiny),
                description: T.nilable(String),
                ending_balance: String,
                invoice: T.nilable(Orb::InvoiceTiny),
                starting_balance: String,
                type:
                  Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Type::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module Action
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Action
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            APPLIED_TO_INVOICE =
              T.let(
                :applied_to_invoice,
                Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Action::TaggedSymbol
              )
            MANUAL_ADJUSTMENT =
              T.let(
                :manual_adjustment,
                Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Action::TaggedSymbol
              )
            PRORATED_REFUND =
              T.let(
                :prorated_refund,
                Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Action::TaggedSymbol
              )
            REVERT_PRORATED_REFUND =
              T.let(
                :revert_prorated_refund,
                Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Action::TaggedSymbol
              )
            RETURN_FROM_VOIDING =
              T.let(
                :return_from_voiding,
                Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Action::TaggedSymbol
              )
            CREDIT_NOTE_APPLIED =
              T.let(
                :credit_note_applied,
                Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Action::TaggedSymbol
              )
            CREDIT_NOTE_VOIDED =
              T.let(
                :credit_note_voided,
                Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Action::TaggedSymbol
              )
            OVERPAYMENT_REFUND =
              T.let(
                :overpayment_refund,
                Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Action::TaggedSymbol
              )
            EXTERNAL_PAYMENT =
              T.let(
                :external_payment,
                Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Action::TaggedSymbol
              )
            SMALL_INVOICE_CARRYOVER =
              T.let(
                :small_invoice_carryover,
                Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Action::TaggedSymbol
              )
            PREPAID_COMMIT_CANCEL =
              T.let(
                :prepaid_commit_cancel,
                Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Action::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Action::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Type
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCREMENT =
              T.let(
                :increment,
                Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Type::TaggedSymbol
              )
            DECREMENT =
              T.let(
                :decrement,
                Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::CustomerBalanceTransactionCreatedWebhookEvent::Properties::BalanceTransaction::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Orb::CustomerBalanceTransactionCreatedWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUSTOMER_BALANCE_TRANSACTION_CREATED =
          T.let(
            :"customer.balance_transaction_created",
            Orb::CustomerBalanceTransactionCreatedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::CustomerBalanceTransactionCreatedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
