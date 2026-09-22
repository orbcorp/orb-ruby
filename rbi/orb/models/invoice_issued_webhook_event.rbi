# typed: strong

module Orb
  module Models
    class InvoiceIssuedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::InvoiceIssuedWebhookEvent, Orb::Internal::AnyHash)
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

      sig { returns(Orb::InvoiceIssuedWebhookEvent::Properties) }
      attr_reader :properties

      sig do
        params(
          properties: Orb::InvoiceIssuedWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig { returns(Orb::InvoiceIssuedWebhookEvent::Type::TaggedSymbol) }
      attr_accessor :type

      # Issued when an invoice transitions to the "issued" state.
      sig do
        params(
          id: String,
          created_at: Time,
          invoice: Orb::Invoice::OrHash,
          properties: Orb::InvoiceIssuedWebhookEvent::Properties::OrHash,
          type: Orb::InvoiceIssuedWebhookEvent::Type::OrSymbol
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
            properties: Orb::InvoiceIssuedWebhookEvent::Properties,
            type: Orb::InvoiceIssuedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::InvoiceIssuedWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :automatically_marked_as_paid

        sig do
          params(automatically_marked_as_paid: T::Boolean).returns(
            T.attached_class
          )
        end
        def self.new(automatically_marked_as_paid:)
        end

        sig { override.returns({ automatically_marked_as_paid: T::Boolean }) }
        def to_hash
        end
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::InvoiceIssuedWebhookEvent::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INVOICE_ISSUED =
          T.let(
            :"invoice.issued",
            Orb::InvoiceIssuedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Orb::InvoiceIssuedWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
