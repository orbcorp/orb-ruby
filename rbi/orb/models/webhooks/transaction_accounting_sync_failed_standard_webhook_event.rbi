# typed: strong

module Orb
  module Models
    module Webhooks
      class TransactionAccountingSyncFailedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent,
              Orb::Internal::AnyHash
            )
          end

        # The ID of this webhook event.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord
          )
        end
        attr_reader :accounting_sync_record

        sig do
          params(
            accounting_sync_record:
              Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::OrHash
          ).void
        end
        attr_writer :accounting_sync_record

        # The time at which this event was created, to the second.
        sig { returns(Time) }
        attr_accessor :created_at

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        sig do
          returns(
            Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig do
          returns(
            Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Properties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Properties::OrHash
          ).void
        end
        attr_writer :properties

        sig do
          returns(
            Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Transaction
          )
        end
        attr_reader :transaction

        sig do
          params(
            transaction:
              Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Transaction::OrHash
          ).void
        end
        attr_writer :transaction

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when a transaction accounting sync fails.
        sig do
          params(
            id: String,
            accounting_sync_record:
              Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::OrHash,
            created_at: Time,
            payload_style:
              Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::PayloadStyle::OrSymbol,
            properties:
              Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Properties::OrHash,
            transaction:
              Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Transaction::OrHash,
            type:
              Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of this webhook event.
          id:,
          accounting_sync_record:,
          # The time at which this event was created, to the second.
          created_at:,
          # The serialization style this payload was rendered in, as configured on the
          # endpoint.
          payload_style:,
          properties:,
          transaction:,
          # The event this payload describes.
          type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              accounting_sync_record:
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord,
              created_at: Time,
              payload_style:
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              properties:
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Properties,
              transaction:
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Transaction,
              type:
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class AccountingSyncRecord < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            returns(
              Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          end
          attr_accessor :record_type

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_accessor :error_details

          sig { returns(T.nilable(String)) }
          attr_accessor :provider_customer_id

          sig { returns(T.nilable(String)) }
          attr_accessor :status

          sig { returns(T.nilable(String)) }
          attr_accessor :sync_action

          sig { returns(T.nilable(String)) }
          attr_accessor :transaction_record_id

          sig do
            params(
              id: String,
              customer_id: String,
              record_type:
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::OrSymbol,
              error_details: T.nilable(T::Hash[Symbol, T.anything]),
              provider_customer_id: T.nilable(String),
              status: T.nilable(String),
              sync_action: T.nilable(String),
              transaction_record_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            customer_id:,
            record_type:,
            error_details: nil,
            provider_customer_id: nil,
            status: nil,
            sync_action: nil,
            transaction_record_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                customer_id: String,
                record_type:
                  Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol,
                error_details: T.nilable(T::Hash[Symbol, T.anything]),
                provider_customer_id: T.nilable(String),
                status: T.nilable(String),
                sync_action: T.nilable(String),
                transaction_record_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          module RecordType
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CUSTOMER =
              T.let(
                :customer,
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            INVOICE =
              T.let(
                :invoice,
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            TRANSACTION =
              T.let(
                :transaction,
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            CUSTOMER_BALANCE_TRANSACTION =
              T.let(
                :customer_balance_transaction,
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            CREDIT_NOTE =
              T.let(
                :credit_note,
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            SUBSCRIPTION =
              T.let(
                :subscription,
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            SALES_ORDER =
              T.let(
                :sales_order,
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            BLOCK =
              T.let(
                :block,
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        module PayloadStyle
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Properties < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Properties,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :connection_type

          sig { returns(String) }
          attr_accessor :failure_reason

          sig do
            params(connection_type: String, failure_reason: String).returns(
              T.attached_class
            )
          end
          def self.new(connection_type:, failure_reason:)
          end

          sig do
            override.returns(
              { connection_type: String, failure_reason: String }
            )
          end
          def to_hash
          end
        end

        class Transaction < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Transaction,
                Orb::Internal::AnyHash
              )
            end

          # The ID of the payment attempt.
          sig { returns(String) }
          attr_accessor :id

          # The amount of the payment attempt.
          sig { returns(String) }
          attr_accessor :amount

          # The time at which the payment attempt was created.
          sig { returns(Time) }
          attr_accessor :created_at

          # The payment provider that attempted to collect the payment.
          sig do
            returns(
              T.nilable(
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Transaction::PaymentProvider::TaggedSymbol
              )
            )
          end
          attr_accessor :payment_provider

          # The ID of the payment attempt in the payment provider.
          sig { returns(T.nilable(String)) }
          attr_accessor :payment_provider_id

          # URL to the downloadable PDF version of the receipt. This field will be `null`
          # for payment attempts that did not succeed.
          sig { returns(T.nilable(String)) }
          attr_accessor :receipt_pdf

          # Whether the payment attempt succeeded.
          sig { returns(T::Boolean) }
          attr_accessor :succeeded

          sig do
            params(
              id: String,
              amount: String,
              created_at: Time,
              payment_provider:
                T.nilable(
                  Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Transaction::PaymentProvider::OrSymbol
                ),
              payment_provider_id: T.nilable(String),
              receipt_pdf: T.nilable(String),
              succeeded: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(
            # The ID of the payment attempt.
            id:,
            # The amount of the payment attempt.
            amount:,
            # The time at which the payment attempt was created.
            created_at:,
            # The payment provider that attempted to collect the payment.
            payment_provider:,
            # The ID of the payment attempt in the payment provider.
            payment_provider_id:,
            # URL to the downloadable PDF version of the receipt. This field will be `null`
            # for payment attempts that did not succeed.
            receipt_pdf:,
            # Whether the payment attempt succeeded.
            succeeded:
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount: String,
                created_at: Time,
                payment_provider:
                  T.nilable(
                    Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Transaction::PaymentProvider::TaggedSymbol
                  ),
                payment_provider_id: T.nilable(String),
                receipt_pdf: T.nilable(String),
                succeeded: T::Boolean
              }
            )
          end
          def to_hash
          end

          # The payment provider that attempted to collect the payment.
          module PaymentProvider
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Transaction::PaymentProvider
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            STRIPE =
              T.let(
                :stripe,
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Transaction::PaymentProvider::TaggedSymbol
              )
            ADYEN =
              T.let(
                :adyen,
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Transaction::PaymentProvider::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Transaction::PaymentProvider::TaggedSymbol
                ]
              )
            end
            def self.values
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
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRANSACTION_ACCOUNTING_SYNC_FAILED =
            T.let(
              :"transaction.accounting_sync_failed",
              Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
