# typed: strong

module Orb
  module Models
    class InvoiceDueDateRecalculationCompletedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::InvoiceDueDateRecalculationCompletedWebhookEvent,
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
          Orb::InvoiceDueDateRecalculationCompletedWebhookEvent::Properties
        )
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::InvoiceDueDateRecalculationCompletedWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(
          Orb::InvoiceDueDateRecalculationCompletedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when an invoice due date recalculation is completed.
      sig do
        params(
          id: String,
          created_at: Time,
          properties:
            Orb::InvoiceDueDateRecalculationCompletedWebhookEvent::Properties::OrHash,
          type:
            Orb::InvoiceDueDateRecalculationCompletedWebhookEvent::Type::OrSymbol
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
              Orb::InvoiceDueDateRecalculationCompletedWebhookEvent::Properties,
            type:
              Orb::InvoiceDueDateRecalculationCompletedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::InvoiceDueDateRecalculationCompletedWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :completed_at

        sig { returns(Time) }
        attr_accessor :started_at

        sig do
          params(completed_at: Time, started_at: Time).returns(T.attached_class)
        end
        def self.new(completed_at:, started_at:)
        end

        sig { override.returns({ completed_at: Time, started_at: Time }) }
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
              Orb::InvoiceDueDateRecalculationCompletedWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INVOICE_DUE_DATE_RECALCULATION_COMPLETED =
          T.let(
            :"invoice_due_date_recalculation.completed",
            Orb::InvoiceDueDateRecalculationCompletedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::InvoiceDueDateRecalculationCompletedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
