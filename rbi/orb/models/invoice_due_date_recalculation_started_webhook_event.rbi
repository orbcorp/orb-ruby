# typed: strong

module Orb
  module Models
    class InvoiceDueDateRecalculationStartedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::InvoiceDueDateRecalculationStartedWebhookEvent,
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
        returns(Orb::InvoiceDueDateRecalculationStartedWebhookEvent::Properties)
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::InvoiceDueDateRecalculationStartedWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(
          Orb::InvoiceDueDateRecalculationStartedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when an invoice due date recalculation is started.
      sig do
        params(
          id: String,
          created_at: Time,
          properties:
            Orb::InvoiceDueDateRecalculationStartedWebhookEvent::Properties::OrHash,
          type:
            Orb::InvoiceDueDateRecalculationStartedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of this webhook event.
        id:,
        # The time at which this event was created, to the second.
        created_at:,
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
            properties:
              Orb::InvoiceDueDateRecalculationStartedWebhookEvent::Properties,
            type:
              Orb::InvoiceDueDateRecalculationStartedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::InvoiceDueDateRecalculationStartedWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :started_at

        sig { params(started_at: Time).returns(T.attached_class) }
        def self.new(started_at:)
        end

        sig { override.returns({ started_at: Time }) }
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
              Orb::InvoiceDueDateRecalculationStartedWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INVOICE_DUE_DATE_RECALCULATION_STARTED =
          T.let(
            :"invoice_due_date_recalculation.started",
            Orb::InvoiceDueDateRecalculationStartedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::InvoiceDueDateRecalculationStartedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
