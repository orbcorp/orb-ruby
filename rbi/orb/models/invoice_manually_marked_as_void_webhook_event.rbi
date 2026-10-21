# typed: strong

module Orb
  module Models
    class InvoiceManuallyMarkedAsVoidWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::InvoiceManuallyMarkedAsVoidWebhookEvent,
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

      # The serialization style this payload was rendered in, as configured on the
      # endpoint.
      sig do
        returns(
          Orb::InvoiceManuallyMarkedAsVoidWebhookEvent::PayloadStyle::TaggedSymbol
        )
      end
      attr_accessor :payload_style

      sig { returns(T.anything) }
      attr_accessor :properties

      # The event this payload describes.
      sig do
        returns(
          Orb::InvoiceManuallyMarkedAsVoidWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when an invoice is marked as void.
      sig do
        params(
          id: String,
          created_at: Time,
          invoice: Orb::Invoice::OrHash,
          payload_style:
            Orb::InvoiceManuallyMarkedAsVoidWebhookEvent::PayloadStyle::OrSymbol,
          properties: T.anything,
          type: Orb::InvoiceManuallyMarkedAsVoidWebhookEvent::Type::OrSymbol
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
            created_at: Time,
            invoice: Orb::Invoice,
            payload_style:
              Orb::InvoiceManuallyMarkedAsVoidWebhookEvent::PayloadStyle::TaggedSymbol,
            properties: T.anything,
            type:
              Orb::InvoiceManuallyMarkedAsVoidWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The serialization style this payload was rendered in, as configured on the
      # endpoint.
      module PayloadStyle
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Orb::InvoiceManuallyMarkedAsVoidWebhookEvent::PayloadStyle
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPANDED =
          T.let(
            :expanded,
            Orb::InvoiceManuallyMarkedAsVoidWebhookEvent::PayloadStyle::TaggedSymbol
          )
        STANDARD =
          T.let(
            :standard,
            Orb::InvoiceManuallyMarkedAsVoidWebhookEvent::PayloadStyle::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::InvoiceManuallyMarkedAsVoidWebhookEvent::PayloadStyle::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::InvoiceManuallyMarkedAsVoidWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INVOICE_MANUALLY_MARKED_AS_VOID =
          T.let(
            :"invoice.manually_marked_as_void",
            Orb::InvoiceManuallyMarkedAsVoidWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::InvoiceManuallyMarkedAsVoidWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
