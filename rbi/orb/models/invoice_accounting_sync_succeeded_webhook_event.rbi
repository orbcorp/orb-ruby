# typed: strong

module Orb
  module Models
    class InvoiceAccountingSyncSucceededWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::InvoiceAccountingSyncSucceededWebhookEvent,
            Orb::Internal::AnyHash
          )
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      sig do
        returns(
          Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord
        )
      end
      attr_reader :accounting_sync_record

      sig do
        params(
          accounting_sync_record:
            Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::OrHash
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
        returns(Orb::InvoiceAccountingSyncSucceededWebhookEvent::Properties)
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::InvoiceAccountingSyncSucceededWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(
          Orb::InvoiceAccountingSyncSucceededWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when an invoice accounting sync succeeds.
      sig do
        params(
          id: String,
          accounting_sync_record:
            Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::OrHash,
          created_at: Time,
          invoice: Orb::Invoice::OrHash,
          properties:
            Orb::InvoiceAccountingSyncSucceededWebhookEvent::Properties::OrHash,
          type: Orb::InvoiceAccountingSyncSucceededWebhookEvent::Type::OrSymbol
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
              Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord,
            created_at: Time,
            invoice: Orb::Invoice,
            properties:
              Orb::InvoiceAccountingSyncSucceededWebhookEvent::Properties,
            type:
              Orb::InvoiceAccountingSyncSucceededWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class AccountingSyncRecord < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          returns(
            Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
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
              Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::OrSymbol,
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
                Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol,
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
                Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOMER =
            T.let(
              :customer,
              Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          INVOICE =
            T.let(
              :invoice,
              Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          TRANSACTION =
            T.let(
              :transaction,
              Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          CUSTOMER_BALANCE_TRANSACTION =
            T.let(
              :customer_balance_transaction,
              Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          CREDIT_NOTE =
            T.let(
              :credit_note,
              Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :subscription,
              Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          SALES_ORDER =
            T.let(
              :sales_order,
              Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          BLOCK =
            T.let(
              :block,
              Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::InvoiceAccountingSyncSucceededWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
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
              Orb::InvoiceAccountingSyncSucceededWebhookEvent::Properties,
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
            T.all(Symbol, Orb::InvoiceAccountingSyncSucceededWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INVOICE_ACCOUNTING_SYNC_SUCCEEDED =
          T.let(
            :"invoice.accounting_sync_succeeded",
            Orb::InvoiceAccountingSyncSucceededWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::InvoiceAccountingSyncSucceededWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
