# typed: strong

module Orb
  module Models
    class InvoiceInvoiceDateElapsedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::InvoiceInvoiceDateElapsedWebhookEvent,
            Orb::Internal::AnyHash
          )
        end

      # The ID of this webhook event.
      sig { returns(String) }
      attr_accessor :id

      # The time at which this event was created, to the second.
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Orb::InvoiceInvoiceDateElapsedWebhookEvent::Invoice) }
      attr_reader :invoice

      sig do
        params(
          invoice: Orb::InvoiceInvoiceDateElapsedWebhookEvent::Invoice::OrHash
        ).void
      end
      attr_writer :invoice

      sig { returns(Orb::InvoiceInvoiceDateElapsedWebhookEvent::Properties) }
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::InvoiceInvoiceDateElapsedWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(Orb::InvoiceInvoiceDateElapsedWebhookEvent::Type::TaggedSymbol)
      end
      attr_accessor :type

      # Issued when an invoice's invoice date has elapsed.
      sig do
        params(
          id: String,
          created_at: Time,
          invoice: Orb::InvoiceInvoiceDateElapsedWebhookEvent::Invoice::OrHash,
          properties:
            Orb::InvoiceInvoiceDateElapsedWebhookEvent::Properties::OrHash,
          type: Orb::InvoiceInvoiceDateElapsedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        # The time at which this event was created, to the second.
        created_at:,
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
            invoice: Orb::InvoiceInvoiceDateElapsedWebhookEvent::Invoice,
            properties: Orb::InvoiceInvoiceDateElapsedWebhookEvent::Properties,
            type: Orb::InvoiceInvoiceDateElapsedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Invoice < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::InvoiceInvoiceDateElapsedWebhookEvent::Invoice,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Orb::CustomerMinified) }
        attr_reader :customer

        sig { params(customer: Orb::CustomerMinified::OrHash).void }
        attr_writer :customer

        sig { returns(String) }
        attr_accessor :invoice_number

        sig do
          returns(
            Orb::InvoiceInvoiceDateElapsedWebhookEvent::Invoice::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(Orb::SubscriptionMinified)) }
        attr_reader :subscription

        sig do
          params(
            subscription: T.nilable(Orb::SubscriptionMinified::OrHash)
          ).void
        end
        attr_writer :subscription

        sig do
          params(
            id: String,
            customer: Orb::CustomerMinified::OrHash,
            invoice_number: String,
            status:
              Orb::InvoiceInvoiceDateElapsedWebhookEvent::Invoice::Status::OrSymbol,
            subscription: T.nilable(Orb::SubscriptionMinified::OrHash)
          ).returns(T.attached_class)
        end
        def self.new(id:, customer:, invoice_number:, status:, subscription:)
        end

        sig do
          override.returns(
            {
              id: String,
              customer: Orb::CustomerMinified,
              invoice_number: String,
              status:
                Orb::InvoiceInvoiceDateElapsedWebhookEvent::Invoice::Status::TaggedSymbol,
              subscription: T.nilable(Orb::SubscriptionMinified)
            }
          )
        end
        def to_hash
        end

        module Status
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Orb::InvoiceInvoiceDateElapsedWebhookEvent::Invoice::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ISSUED =
            T.let(
              :issued,
              Orb::InvoiceInvoiceDateElapsedWebhookEvent::Invoice::Status::TaggedSymbol
            )
          PAID =
            T.let(
              :paid,
              Orb::InvoiceInvoiceDateElapsedWebhookEvent::Invoice::Status::TaggedSymbol
            )
          SYNCED =
            T.let(
              :synced,
              Orb::InvoiceInvoiceDateElapsedWebhookEvent::Invoice::Status::TaggedSymbol
            )
          VOID =
            T.let(
              :void,
              Orb::InvoiceInvoiceDateElapsedWebhookEvent::Invoice::Status::TaggedSymbol
            )
          DRAFT =
            T.let(
              :draft,
              Orb::InvoiceInvoiceDateElapsedWebhookEvent::Invoice::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::InvoiceInvoiceDateElapsedWebhookEvent::Invoice::Status::TaggedSymbol
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
              Orb::InvoiceInvoiceDateElapsedWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :invoice_date

        sig { params(invoice_date: Time).returns(T.attached_class) }
        def self.new(invoice_date:)
        end

        sig { override.returns({ invoice_date: Time }) }
        def to_hash
        end
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::InvoiceInvoiceDateElapsedWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INVOICE_INVOICE_DATE_ELAPSED =
          T.let(
            :"invoice.invoice_date_elapsed",
            Orb::InvoiceInvoiceDateElapsedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::InvoiceInvoiceDateElapsedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
