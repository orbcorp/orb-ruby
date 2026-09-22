# typed: strong

module Orb
  module Models
    class CreditNoteAccountingSyncFailedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::CreditNoteAccountingSyncFailedWebhookEvent,
            Orb::Internal::AnyHash
          )
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      sig do
        returns(
          Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord
        )
      end
      attr_reader :accounting_sync_record

      sig do
        params(
          accounting_sync_record:
            Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord::OrHash
        ).void
      end
      attr_writer :accounting_sync_record

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      # The [Credit Note](/invoicing/credit-notes) resource represents a credit that has
      # been applied to a particular invoice.
      sig { returns(Orb::CreditNote) }
      attr_reader :credit_note

      sig { params(credit_note: Orb::CreditNote::OrHash).void }
      attr_writer :credit_note

      sig do
        returns(Orb::CreditNoteAccountingSyncFailedWebhookEvent::Properties)
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::CreditNoteAccountingSyncFailedWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(
          Orb::CreditNoteAccountingSyncFailedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when a credit note accounting sync fails.
      sig do
        params(
          id: String,
          accounting_sync_record:
            Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord::OrHash,
          created_at: Time,
          credit_note: Orb::CreditNote::OrHash,
          properties:
            Orb::CreditNoteAccountingSyncFailedWebhookEvent::Properties::OrHash,
          type: Orb::CreditNoteAccountingSyncFailedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        accounting_sync_record:,
        # The time at which this event was created, to the second.
        created_at:,
        # The [Credit Note](/invoicing/credit-notes) resource represents a credit that has
        # been applied to a particular invoice.
        credit_note:,
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
              Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord,
            created_at: Time,
            credit_note: Orb::CreditNote,
            properties:
              Orb::CreditNoteAccountingSyncFailedWebhookEvent::Properties,
            type:
              Orb::CreditNoteAccountingSyncFailedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class AccountingSyncRecord < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          returns(
            Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        sig { returns(T.nilable(String)) }
        attr_accessor :credit_note_id

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_accessor :error_details

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
              Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::OrSymbol,
            credit_note_id: T.nilable(String),
            error_details: T.nilable(T::Hash[Symbol, T.anything]),
            provider_customer_id: T.nilable(String),
            status: T.nilable(String),
            sync_action: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          customer_id:,
          record_type:,
          credit_note_id: nil,
          error_details: nil,
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
                Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol,
              credit_note_id: T.nilable(String),
              error_details: T.nilable(T::Hash[Symbol, T.anything]),
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
                Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOMER =
            T.let(
              :customer,
              Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          INVOICE =
            T.let(
              :invoice,
              Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          TRANSACTION =
            T.let(
              :transaction,
              Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          CUSTOMER_BALANCE_TRANSACTION =
            T.let(
              :customer_balance_transaction,
              Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          CREDIT_NOTE =
            T.let(
              :credit_note,
              Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          SUBSCRIPTION =
            T.let(
              :subscription,
              Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          SALES_ORDER =
            T.let(
              :sales_order,
              Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )
          BLOCK =
            T.let(
              :block,
              Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::CreditNoteAccountingSyncFailedWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
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
              Orb::CreditNoteAccountingSyncFailedWebhookEvent::Properties,
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

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::CreditNoteAccountingSyncFailedWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT_NOTE_ACCOUNTING_SYNC_FAILED =
          T.let(
            :"credit_note.accounting_sync_failed",
            Orb::CreditNoteAccountingSyncFailedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::CreditNoteAccountingSyncFailedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
