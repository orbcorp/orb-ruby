# typed: strong

module Orb
  module Models
    class InvoiceSyncSucceededWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::InvoiceSyncSucceededWebhookEvent, Orb::Internal::AnyHash)
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

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

      sig { returns(Orb::InvoiceSyncSucceededWebhookEvent::Properties) }
      attr_reader :properties

      sig do
        params(
          properties: Orb::InvoiceSyncSucceededWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig { returns(Orb::InvoiceSyncSucceededWebhookEvent::Type::TaggedSymbol) }
      attr_accessor :type

      # Issued when an invoice sync succeeds.
      sig do
        params(
          id: String,
          created_at: Time,
          invoice: Orb::Invoice::OrHash,
          properties: Orb::InvoiceSyncSucceededWebhookEvent::Properties::OrHash,
          type: Orb::InvoiceSyncSucceededWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
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
            created_at: Time,
            invoice: Orb::Invoice,
            properties: Orb::InvoiceSyncSucceededWebhookEvent::Properties,
            type: Orb::InvoiceSyncSucceededWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::InvoiceSyncSucceededWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :payment_provider

        sig { returns(T.nilable(String)) }
        attr_accessor :payment_provider_id

        sig do
          params(
            payment_provider: T.nilable(String),
            payment_provider_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(payment_provider:, payment_provider_id:)
        end

        sig do
          override.returns(
            {
              payment_provider: T.nilable(String),
              payment_provider_id: T.nilable(String)
            }
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
            T.all(Symbol, Orb::InvoiceSyncSucceededWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INVOICE_SYNC_SUCCEEDED =
          T.let(
            :"invoice.sync_succeeded",
            Orb::InvoiceSyncSucceededWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::InvoiceSyncSucceededWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
