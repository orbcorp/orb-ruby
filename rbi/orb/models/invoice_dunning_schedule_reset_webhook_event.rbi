# typed: strong

module Orb
  module Models
    class InvoiceDunningScheduleResetWebhookEvent < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::InvoiceDunningScheduleResetWebhookEvent,
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

      sig { returns(Orb::InvoiceDunningScheduleResetWebhookEvent::Properties) }
      attr_reader :properties

      sig do
        params(
          properties:
            Orb::InvoiceDunningScheduleResetWebhookEvent::Properties::OrHash
        ).void
      end
      attr_writer :properties

      # The event this payload describes.
      sig do
        returns(
          Orb::InvoiceDunningScheduleResetWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      # Issued when a dunning schedule is reset.
      sig do
        params(
          id: String,
          created_at: Time,
          invoice: Orb::Invoice::OrHash,
          properties:
            Orb::InvoiceDunningScheduleResetWebhookEvent::Properties::OrHash,
          type: Orb::InvoiceDunningScheduleResetWebhookEvent::Type::OrSymbol
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
              Orb::InvoiceDunningScheduleResetWebhookEvent::Properties,
            type:
              Orb::InvoiceDunningScheduleResetWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Properties < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::InvoiceDunningScheduleResetWebhookEvent::Properties,
              Orb::Internal::AnyHash
            )
          end

        # The schedule shape `DunningScheduleV2.external_serialization()` produces, which
        # is narrower than the schedule's api resource.
        sig do
          returns(
            Orb::InvoiceDunningScheduleResetWebhookEvent::Properties::DunningSchedule
          )
        end
        attr_reader :dunning_schedule

        sig do
          params(
            dunning_schedule:
              Orb::InvoiceDunningScheduleResetWebhookEvent::Properties::DunningSchedule::OrHash
          ).void
        end
        attr_writer :dunning_schedule

        # The schedule shape `DunningScheduleV2.external_serialization()` produces, which
        # is narrower than the schedule's api resource.
        sig do
          returns(
            Orb::InvoiceDunningScheduleResetWebhookEvent::Properties::PreviousSchedule
          )
        end
        attr_reader :previous_schedule

        sig do
          params(
            previous_schedule:
              Orb::InvoiceDunningScheduleResetWebhookEvent::Properties::PreviousSchedule::OrHash
          ).void
        end
        attr_writer :previous_schedule

        sig do
          params(
            dunning_schedule:
              Orb::InvoiceDunningScheduleResetWebhookEvent::Properties::DunningSchedule::OrHash,
            previous_schedule:
              Orb::InvoiceDunningScheduleResetWebhookEvent::Properties::PreviousSchedule::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The schedule shape `DunningScheduleV2.external_serialization()` produces, which
          # is narrower than the schedule's api resource.
          dunning_schedule:,
          # The schedule shape `DunningScheduleV2.external_serialization()` produces, which
          # is narrower than the schedule's api resource.
          previous_schedule:
        )
        end

        sig do
          override.returns(
            {
              dunning_schedule:
                Orb::InvoiceDunningScheduleResetWebhookEvent::Properties::DunningSchedule,
              previous_schedule:
                Orb::InvoiceDunningScheduleResetWebhookEvent::Properties::PreviousSchedule
            }
          )
        end
        def to_hash
        end

        class DunningSchedule < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::InvoiceDunningScheduleResetWebhookEvent::Properties::DunningSchedule,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Time)) }
          attr_accessor :completion_time

          sig { returns(T.nilable(Time)) }
          attr_accessor :created_at

          sig { returns(String) }
          attr_accessor :invoice_id

          sig { returns(T.nilable(Time)) }
          attr_accessor :modified_at

          sig { returns(T.nilable(Time)) }
          attr_accessor :start_time

          sig { returns(T.nilable(String)) }
          attr_accessor :status

          # The schedule shape `DunningScheduleV2.external_serialization()` produces, which
          # is narrower than the schedule's api resource.
          sig do
            params(
              completion_time: T.nilable(Time),
              created_at: T.nilable(Time),
              invoice_id: String,
              modified_at: T.nilable(Time),
              start_time: T.nilable(Time),
              status: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            completion_time:,
            created_at:,
            invoice_id:,
            modified_at:,
            start_time:,
            status:
          )
          end

          sig do
            override.returns(
              {
                completion_time: T.nilable(Time),
                created_at: T.nilable(Time),
                invoice_id: String,
                modified_at: T.nilable(Time),
                start_time: T.nilable(Time),
                status: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class PreviousSchedule < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::InvoiceDunningScheduleResetWebhookEvent::Properties::PreviousSchedule,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Time)) }
          attr_accessor :completion_time

          sig { returns(T.nilable(Time)) }
          attr_accessor :created_at

          sig { returns(String) }
          attr_accessor :invoice_id

          sig { returns(T.nilable(Time)) }
          attr_accessor :modified_at

          sig { returns(T.nilable(Time)) }
          attr_accessor :start_time

          sig { returns(T.nilable(String)) }
          attr_accessor :status

          # The schedule shape `DunningScheduleV2.external_serialization()` produces, which
          # is narrower than the schedule's api resource.
          sig do
            params(
              completion_time: T.nilable(Time),
              created_at: T.nilable(Time),
              invoice_id: String,
              modified_at: T.nilable(Time),
              start_time: T.nilable(Time),
              status: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            completion_time:,
            created_at:,
            invoice_id:,
            modified_at:,
            start_time:,
            status:
          )
          end

          sig do
            override.returns(
              {
                completion_time: T.nilable(Time),
                created_at: T.nilable(Time),
                invoice_id: String,
                modified_at: T.nilable(Time),
                start_time: T.nilable(Time),
                status: T.nilable(String)
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
            T.all(Symbol, Orb::InvoiceDunningScheduleResetWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INVOICE_DUNNING_SCHEDULE_RESET =
          T.let(
            :"invoice.dunning_schedule_reset",
            Orb::InvoiceDunningScheduleResetWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::InvoiceDunningScheduleResetWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
