# typed: strong

module Orb
  module Models
    class InvoiceDueDateRecalculationCanceledWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::InvoiceDueDateRecalculationCanceledWebhookEvent,
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
          Orb::InvoiceDueDateRecalculationCanceledWebhookEvent::Properties
        )
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::InvoiceDueDateRecalculationCanceledWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(
          Orb::InvoiceDueDateRecalculationCanceledWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when an invoice due date recalculation is canceled.
      sig do
        params(
          id: String,
          created_at: Time,
          properties:
            Orb::InvoiceDueDateRecalculationCanceledWebhookEvent::Properties::OrHash,
          type:
            Orb::InvoiceDueDateRecalculationCanceledWebhookEvent::Type::OrSymbol
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
              Orb::InvoiceDueDateRecalculationCanceledWebhookEvent::Properties,
            type:
              Orb::InvoiceDueDateRecalculationCanceledWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::InvoiceDueDateRecalculationCanceledWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :canceled_at

        sig { returns(Time) }
        attr_accessor :started_at

        sig do
          params(canceled_at: Time, started_at: Time).returns(T.attached_class)
        end
        def self.new(canceled_at:, started_at:)
        end

        sig { override.returns({ canceled_at: Time, started_at: Time }) }
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
              Orb::InvoiceDueDateRecalculationCanceledWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INVOICE_DUE_DATE_RECALCULATION_CANCELED =
          T.let(
            :"invoice_due_date_recalculation.canceled",
            Orb::InvoiceDueDateRecalculationCanceledWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::InvoiceDueDateRecalculationCanceledWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
