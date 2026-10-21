# typed: strong

module Orb
  module Models
    module Webhooks
      class CreditNoteAccountingSyncFailedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent,
              Orb::Internal::AnyHash
            )
          end

        # The ID of this webhook event.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord
          )
        end
        attr_reader :accounting_sync_record

        sig do
          params(
            accounting_sync_record:
              Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::OrHash
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

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        sig do
          returns(
            Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig do
          returns(
            Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::Properties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::Properties::OrHash
          ).void
        end
        attr_writer :properties

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when a credit note accounting sync fails.
        sig do
          params(
            id: String,
            accounting_sync_record:
              Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::OrHash,
            created_at: Time,
            credit_note: Orb::CreditNote::OrHash,
            payload_style:
              Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::PayloadStyle::OrSymbol,
            properties:
              Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::Properties::OrHash,
            type:
              Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::Type::OrSymbol
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
          # The serialization style this payload was rendered in, as configured on the
          # endpoint.
          payload_style:,
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
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord,
              created_at: Time,
              credit_note: Orb::CreditNote,
              payload_style:
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              properties:
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::Properties,
              type:
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class AccountingSyncRecord < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            returns(
              Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
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
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::OrSymbol,
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
                  Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol,
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
                  Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CUSTOMER =
              T.let(
                :customer,
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            INVOICE =
              T.let(
                :invoice,
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            TRANSACTION =
              T.let(
                :transaction,
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            CUSTOMER_BALANCE_TRANSACTION =
              T.let(
                :customer_balance_transaction,
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            CREDIT_NOTE =
              T.let(
                :credit_note,
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            SUBSCRIPTION =
              T.let(
                :subscription,
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            SALES_ORDER =
              T.let(
                :sales_order,
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )
            BLOCK =
              T.let(
                :block,
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::AccountingSyncRecord::RecordType::TaggedSymbol
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
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::PayloadStyle::TaggedSymbol
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
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::Properties,
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

        # The event this payload describes.
        module Type
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDIT_NOTE_ACCOUNTING_SYNC_FAILED =
            T.let(
              :"credit_note.accounting_sync_failed",
              Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent::Type::TaggedSymbol
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
