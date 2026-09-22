# typed: strong

module Orb
  module Models
    class SalesOrderAccountingSyncSucceededWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::SalesOrderAccountingSyncSucceededWebhookEvent,
            Orb::Internal::AnyHash
          )
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      sig do
        returns(
          Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord
        )
      end
      attr_reader :accounting_sync_record

      sig do
        params(
          accounting_sync_record:
            Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::OrHash
        ).void
      end
      attr_writer :accounting_sync_record

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      # An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity,
      # representing the request for payment for a single subscription. This includes a
      # set of line items, which correspond to prices in the subscription's plan and can
      # represent fixed recurring fees or usage-based fees. They are generated at the
      # end of a billing period, or as the result of an action, such as a cancellation.
      sig { returns(Orb::Invoice) }
      attr_reader :invoice

      sig { params(invoice: Orb::Invoice::OrHash).void }
      attr_writer :invoice

      sig do
        returns(Orb::SalesOrderAccountingSyncSucceededWebhookEvent::Properties)
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::SalesOrderAccountingSyncSucceededWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(
          Orb::SalesOrderAccountingSyncSucceededWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when a sales order accounting sync succeeds.
      sig do
        params(
          id: String,
          accounting_sync_record:
            Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::OrHash,
          created_at: Time,
          invoice: Orb::Invoice::OrHash,
          properties:
            Orb::SalesOrderAccountingSyncSucceededWebhookEvent::Properties::OrHash,
          type:
            Orb::SalesOrderAccountingSyncSucceededWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        accounting_sync_record:,
        # The time at which this event was created, to the second.
        created_at:,
        # An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity,
        # representing the request for payment for a single subscription. This includes a
        # set of line items, which correspond to prices in the subscription's plan and can
        # represent fixed recurring fees or usage-based fees. They are generated at the
        # end of a billing period, or as the result of an action, such as a cancellation.
        invoice:,
        properties:,
        # The event this payload describes.
        type:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            accounting_sync_record:
              Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord,
            created_at: Time,
            invoice: Orb::Invoice,
            properties:
              Orb::SalesOrderAccountingSyncSucceededWebhookEvent::Properties,
            type:
              Orb::SalesOrderAccountingSyncSucceededWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class AccountingSyncRecord < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          returns(
            Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :error_details

        sig { returns(T.nilable(String)) }
        attr_accessor :invoice_id

        sig { returns(T.nilable(String)) }
        attr_accessor :provider_customer_id

        sig { returns(T.nilable(String)) }
        attr_accessor :status

        sig { returns(T.nilable(String)) }
        attr_accessor :sync_action

        sig do
          params(
            id: String,
            customer_id: String,
            record_type:
              Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::OrSymbol,
            error_details: T.nilable(T::Hash[Symbol, T.anything]),
            invoice_id: T.nilable(String),
            provider_customer_id: T.nilable(String),
            status: T.nilable(String),
            sync_action: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          customer_id:,
          record_type:,
          error_details: nil,
          invoice_id: nil,
          provider_customer_id: nil,
          status: nil,
          sync_action: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              customer_id: String,
              record_type:
                Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol,
              error_details: T.nilable(T::Hash[Symbol, T.anything]),
              invoice_id: T.nilable(String),
              provider_customer_id: T.nilable(String),
              status: T.nilable(String),
              sync_action: T.nilable(String)
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
                Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOMER =
            T.let(
              :customer,
              Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          INVOICE =
            T.let(
              :invoice,
              Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          TRANSACTION =
            T.let(
              :transaction,
              Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          CUSTOMER_BALANCE_TRANSACTION =
            T.let(
              :customer_balance_transaction,
              Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          CREDIT_NOTE =
            T.let(
              :credit_note,
              Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :subscription,
              Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          SALES_ORDER =
            T.let(
              :sales_order,
              Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          BLOCK =
            T.let(
              :block,
              Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::SalesOrderAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
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
              Orb::SalesOrderAccountingSyncSucceededWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :connection_type

        sig { params(connection_type: String).returns(T.attached_class) }
        def self.new(connection_type:)
        end

        sig { override.returns({ connection_type: String }) }
        def to_hash
        end
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Orb::SalesOrderAccountingSyncSucceededWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SALES_ORDER_ACCOUNTING_SYNC_SUCCEEDED =
          T.let(
            :"sales_order.accounting_sync_succeeded",
            Orb::SalesOrderAccountingSyncSucceededWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::SalesOrderAccountingSyncSucceededWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
