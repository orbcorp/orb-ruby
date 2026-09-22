# typed: strong

module Orb
  module Models
    class InvoiceManuallyMarkedAsPaidWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::InvoiceManuallyMarkedAsPaidWebhookEvent,
            Orb::Internal::AnyHash
          )
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

      sig { returns(Orb::InvoiceManuallyMarkedAsPaidWebhookEvent::Properties) }
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::InvoiceManuallyMarkedAsPaidWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(
          Orb::InvoiceManuallyMarkedAsPaidWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when an invoice is manually marked as paid.
      sig do
        params(
          id: String,
          created_at: Time,
          invoice: Orb::Invoice::OrHash,
          properties:
            Orb::InvoiceManuallyMarkedAsPaidWebhookEvent::Properties::OrHash,
          type: Orb::InvoiceManuallyMarkedAsPaidWebhookEvent::Type::OrSymbol
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
            properties:
              Orb::InvoiceManuallyMarkedAsPaidWebhookEvent::Properties,
            type:
              Orb::InvoiceManuallyMarkedAsPaidWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::InvoiceManuallyMarkedAsPaidWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :external_id

        sig { returns(T.nilable(String)) }
        attr_accessor :notes

        sig { returns(T.nilable(Time)) }
        attr_accessor :payment_received_date

        sig do
          params(
            external_id: T.nilable(String),
            notes: T.nilable(String),
            payment_received_date: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(external_id:, notes:, payment_received_date:)
        end

        sig do
          override.returns(
            {
              external_id: T.nilable(String),
              notes: T.nilable(String),
              payment_received_date: T.nilable(Time)
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
            T.all(Symbol, Orb::InvoiceManuallyMarkedAsPaidWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INVOICE_MANUALLY_MARKED_AS_PAID =
          T.let(
            :"invoice.manually_marked_as_paid",
            Orb::InvoiceManuallyMarkedAsPaidWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::InvoiceManuallyMarkedAsPaidWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
