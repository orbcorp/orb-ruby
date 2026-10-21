# typed: strong

module Orb
  module Models
    module Webhooks
      class InvoiceInvoiceDateElapsedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent,
              Orb::Internal::AnyHash
            )
          end

        # The ID of this webhook event.
        sig { returns(String) }
        attr_accessor :id

        # The time at which this event was created, to the second.
        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(
            Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice
          )
        end
        attr_reader :invoice

        sig do
          params(
            invoice:
              Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice::OrHash
          ).void
        end
        attr_writer :invoice

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        sig do
          returns(
            Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig do
          returns(
            Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Properties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Properties::OrHash
          ).void
        end
        attr_writer :properties

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when an invoice's invoice date has elapsed.
        sig do
          params(
            id: String,
            created_at: Time,
            invoice:
              Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice::OrHash,
            payload_style:
              Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::PayloadStyle::OrSymbol,
            properties:
              Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Properties::OrHash,
            type:
              Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of this webhook event.
          id:,
          # The time at which this event was created, to the second.
          created_at:,
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
              invoice:
                Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice,
              payload_style:
                Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              properties:
                Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Properties,
              type:
                Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Invoice < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice,
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
              Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice::Status::TaggedSymbol
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
                Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice::Status::OrSymbol,
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
                  Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice::Status::TaggedSymbol,
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
                  Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ISSUED =
              T.let(
                :issued,
                Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice::Status::TaggedSymbol
              )
            PAID =
              T.let(
                :paid,
                Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice::Status::TaggedSymbol
              )
            SYNCED =
              T.let(
                :synced,
                Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice::Status::TaggedSymbol
              )
            VOID =
              T.let(
                :void,
                Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice::Status::TaggedSymbol
              )
            DRAFT =
              T.let(
                :draft,
                Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Invoice::Status::TaggedSymbol
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
                Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::PayloadStyle::TaggedSymbol
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
                Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Properties,
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
              T.all(
                Symbol,
                Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INVOICE_INVOICE_DATE_ELAPSED =
            T.let(
              :"invoice.invoice_date_elapsed",
              Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent::Type::TaggedSymbol
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
