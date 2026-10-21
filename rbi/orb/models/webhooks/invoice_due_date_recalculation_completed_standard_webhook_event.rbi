# typed: strong

module Orb
  module Models
    module Webhooks
      class InvoiceDueDateRecalculationCompletedStandardWebhookEvent < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent,
              Orb::Internal::AnyHash
            )
          end

        # The ID of this webhook event.
        sig { returns(String) }
        attr_accessor :id

        # The time at which this event was created, to the second.
        sig { returns(Time) }
        attr_accessor :created_at

        # The serialization style this payload was rendered in, as configured on the
        # endpoint.
        sig do
          returns(
            Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::PayloadStyle::TaggedSymbol
          )
        end
        attr_accessor :payload_style

        sig do
          returns(
            Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::Properties
          )
        end
        attr_reader :properties

        sig do
          params(
            properties:
              Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::Properties::OrHash
          ).void
        end
        attr_writer :properties

        # The event this payload describes.
        sig do
          returns(
            Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Issued when an invoice due date recalculation is completed.
        sig do
          params(
            id: String,
            created_at: Time,
            payload_style:
              Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::PayloadStyle::OrSymbol,
            properties:
              Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::Properties::OrHash,
            type:
              Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of this webhook event.
          id:,
          # The time at which this event was created, to the second.
          created_at:,
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
              payload_style:
                Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::PayloadStyle::TaggedSymbol,
              properties:
                Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::Properties,
              type:
                Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::Type::TaggedSymbol
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
                Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::PayloadStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPANDED =
            T.let(
              :expanded,
              Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )
          STANDARD =
            T.let(
              :standard,
              Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::PayloadStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::PayloadStyle::TaggedSymbol
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
                Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::Properties,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Time) }
          attr_accessor :completed_at

          sig { returns(Time) }
          attr_accessor :started_at

          sig do
            params(completed_at: Time, started_at: Time).returns(
              T.attached_class
            )
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
                Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INVOICE_DUE_DATE_RECALCULATION_COMPLETED =
            T.let(
              :"invoice_due_date_recalculation.completed",
              Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent::Type::TaggedSymbol
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
