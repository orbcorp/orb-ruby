# typed: strong

module Orb
  module Models
    class TransactionAccountingSyncFailedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::TransactionAccountingSyncFailedWebhookEvent,
            Orb::Internal::AnyHash
          )
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      sig do
        returns(
          Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord
        )
      end
      attr_reader :accounting_sync_record

      sig do
        params(
          accounting_sync_record:
            Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::OrHash
        ).void
      end
      attr_writer :accounting_sync_record

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      sig do
        returns(Orb::TransactionAccountingSyncFailedWebhookEvent::Properties)
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::TransactionAccountingSyncFailedWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      sig do
        returns(Orb::TransactionAccountingSyncFailedWebhookEvent::Transaction)
      end
      attr_reader :transaction

      sig do
        params(
          transaction:
            Orb::TransactionAccountingSyncFailedWebhookEvent::Transaction::OrHash
        ).void
      end
      attr_writer :transaction

      # The event this payload describes.
      sig do
        returns(
          Orb::TransactionAccountingSyncFailedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when a transaction accounting sync fails.
      sig do
        params(
          id: String,
          accounting_sync_record:
            Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::OrHash,
          created_at: Time,
          properties:
            Orb::TransactionAccountingSyncFailedWebhookEvent::Properties::OrHash,
          transaction:
            Orb::TransactionAccountingSyncFailedWebhookEvent::Transaction::OrHash,
          type: Orb::TransactionAccountingSyncFailedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        accounting_sync_record:,
        # The time at which this event was created, to the second.
        created_at:,
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
              Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord,
            created_at: Time,
            properties:
              Orb::TransactionAccountingSyncFailedWebhookEvent::Properties,
            transaction:
              Orb::TransactionAccountingSyncFailedWebhookEvent::Transaction,
            type:
              Orb::TransactionAccountingSyncFailedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class AccountingSyncRecord < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          returns(
            Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
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
              Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::OrSymbol,
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
                Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol,
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
                Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOMER =
            T.let(
              :customer,
              Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          INVOICE =
            T.let(
              :invoice,
              Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          TRANSACTION =
            T.let(
              :transaction,
              Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          CUSTOMER_BALANCE_TRANSACTION =
            T.let(
              :customer_balance_transaction,
              Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          CREDIT_NOTE =
            T.let(
              :credit_note,
              Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :subscription,
              Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          SALES_ORDER =
            T.let(
              :sales_order,
              Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          BLOCK =
            T.let(
              :block,
              Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::TransactionAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::TransactionAccountingSyncFailedWebhookEvent::Properties,
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
          override.returns({ connection_type: String, failure_reason: String })
        end
        def to_hash
        end
      end

      class Transaction < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::TransactionAccountingSyncFailedWebhookEvent::Transaction,
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
              Orb::TransactionAccountingSyncFailedWebhookEvent::Transaction::PaymentProvider::TaggedSymbol
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
                Orb::TransactionAccountingSyncFailedWebhookEvent::Transaction::PaymentProvider::OrSymbol
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
                  Orb::TransactionAccountingSyncFailedWebhookEvent::Transaction::PaymentProvider::TaggedSymbol
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
                Orb::TransactionAccountingSyncFailedWebhookEvent::Transaction::PaymentProvider
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STRIPE =
            T.let(
              :stripe,
              Orb::TransactionAccountingSyncFailedWebhookEvent::Transaction::PaymentProvider::TaggedSymbol
            )
          ADYEN =
            T.let(
              :adyen,
              Orb::TransactionAccountingSyncFailedWebhookEvent::Transaction::PaymentProvider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::TransactionAccountingSyncFailedWebhookEvent::Transaction::PaymentProvider::TaggedSymbol
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
              Orb::TransactionAccountingSyncFailedWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSACTION_ACCOUNTING_SYNC_FAILED =
          T.let(
            :"transaction.accounting_sync_failed",
            Orb::TransactionAccountingSyncFailedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::TransactionAccountingSyncFailedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
