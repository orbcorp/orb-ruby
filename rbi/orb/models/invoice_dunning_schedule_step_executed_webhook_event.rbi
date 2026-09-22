# typed: strong

module Orb
  module Models
    class InvoiceDunningScheduleStepExecutedWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::InvoiceDunningScheduleStepExecutedWebhookEvent,
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

      sig do
        returns(Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Properties)
      end
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(
          Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when a dunning schedule step is executed.
      sig do
        params(
          id: String,
          created_at: Time,
          invoice: Orb::Invoice::OrHash,
          properties:
            Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Properties::OrHash,
          type:
            Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Type::OrSymbol
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
              Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Properties,
            type:
              Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        sig do
          returns(
            Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Properties::DunningStep
          )
        end
        attr_reader :dunning_step

        sig do
          params(
            dunning_step:
              Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Properties::DunningStep::OrHash
          ).void
        end
        attr_writer :dunning_step

        sig do
          params(
            dunning_step:
              Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Properties::DunningStep::OrHash
          ).returns(T.attached_class)
        end
        def self.new(dunning_step:)
        end

        sig do
          override.returns(
            {
              dunning_step:
                Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Properties::DunningStep
            }
          )
        end
        def to_hash
        end

        class DunningStep < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Properties::DunningStep,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T::Array[String]) }
          attr_accessor :actions

          sig { returns(T.nilable(Time)) }
          attr_accessor :created_at

          sig { returns(T.nilable(Time)) }
          attr_accessor :execution_time

          sig { returns(T.nilable(Time)) }
          attr_accessor :manually_triggered_at

          sig { returns(T.nilable(Time)) }
          attr_accessor :modified_at

          sig { returns(String) }
          attr_accessor :status

          sig { returns(T.nilable(Integer)) }
          attr_accessor :step_number

          sig { returns(T.nilable(Time)) }
          attr_accessor :timestamp

          sig do
            params(
              actions: T::Array[String],
              created_at: T.nilable(Time),
              execution_time: T.nilable(Time),
              manually_triggered_at: T.nilable(Time),
              modified_at: T.nilable(Time),
              status: String,
              step_number: T.nilable(Integer),
              timestamp: T.nilable(Time)
            ).returns(T.attached_class)
          end
          def self.new(
            actions:,
            created_at:,
            execution_time:,
            manually_triggered_at:,
            modified_at:,
            status:,
            step_number:,
            timestamp:
          )
          end

          sig do
            override.returns(
              {
                actions: T::Array[String],
                created_at: T.nilable(Time),
                execution_time: T.nilable(Time),
                manually_triggered_at: T.nilable(Time),
                modified_at: T.nilable(Time),
                status: String,
                step_number: T.nilable(Integer),
                timestamp: T.nilable(Time)
              }
            )
          end
          def to_hash
          end
        end
      end

      # The event this payload describes.
      module Type
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INVOICE_DUNNING_SCHEDULE_STEP_EXECUTED =
          T.let(
            :"invoice.dunning_schedule_step_executed",
            Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
