# frozen_string_literal: true

module Orb
  module Models
    class InvoiceDunningScheduleEndedWebhookEvent < Orb::Internal::Type::BaseModel
      # @!attribute id
      #   The ID of this webhook event.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The time at which this event was created, to the second.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute invoice
      #   An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity,
      #   representing the request for payment for a single subscription. This includes a
      #   set of line items, which correspond to prices in the subscription's plan and can
      #   represent fixed recurring fees or usage-based fees. They are generated at the
      #   end of a billing period, or as the result of an action, such as a cancellation.
      #
      #   @return [Orb::Models::Invoice]
      required :invoice, -> { Orb::Invoice }

      # @!attribute properties
      #
      #   @return [Orb::Models::InvoiceDunningScheduleEndedWebhookEvent::Properties]
      required :properties, -> { Orb::InvoiceDunningScheduleEndedWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::InvoiceDunningScheduleEndedWebhookEvent::Type]
      required :type, enum: -> { Orb::InvoiceDunningScheduleEndedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, invoice:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoiceDunningScheduleEndedWebhookEvent} for more details.
      #
      #   Issued when a dunning schedule ends.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param invoice [Orb::Models::Invoice] An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity, represen
      #
      #   @param properties [Orb::Models::InvoiceDunningScheduleEndedWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::InvoiceDunningScheduleEndedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::InvoiceDunningScheduleEndedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute dunning_schedule
        #
        #   @return [Orb::Models::InvoiceDunningScheduleEndedWebhookEvent::Properties::DunningSchedule]
        required :dunning_schedule,
                 -> { Orb::InvoiceDunningScheduleEndedWebhookEvent::Properties::DunningSchedule }

        # @!attribute dunning_steps
        #
        #   @return [Array<Orb::Models::InvoiceDunningScheduleEndedWebhookEvent::Properties::DunningStep>]
        required :dunning_steps,
                 -> { Orb::Internal::Type::ArrayOf[Orb::InvoiceDunningScheduleEndedWebhookEvent::Properties::DunningStep] }

        # @!method initialize(dunning_schedule:, dunning_steps:)
        #   @param dunning_schedule [Orb::Models::InvoiceDunningScheduleEndedWebhookEvent::Properties::DunningSchedule]
        #   @param dunning_steps [Array<Orb::Models::InvoiceDunningScheduleEndedWebhookEvent::Properties::DunningStep>]

        # @see Orb::Models::InvoiceDunningScheduleEndedWebhookEvent::Properties#dunning_schedule
        class DunningSchedule < Orb::Internal::Type::BaseModel
          # @!attribute completion_time
          #
          #   @return [Time, nil]
          required :completion_time, Time, nil?: true

          # @!attribute created_at
          #
          #   @return [Time, nil]
          required :created_at, Time, nil?: true

          # @!attribute invoice_id
          #
          #   @return [String]
          required :invoice_id, String

          # @!attribute modified_at
          #
          #   @return [Time, nil]
          required :modified_at, Time, nil?: true

          # @!attribute start_time
          #
          #   @return [Time, nil]
          required :start_time, Time, nil?: true

          # @!attribute status
          #
          #   @return [String]
          required :status, String

          # @!method initialize(completion_time:, created_at:, invoice_id:, modified_at:, start_time:, status:)
          #   @param completion_time [Time, nil]
          #   @param created_at [Time, nil]
          #   @param invoice_id [String]
          #   @param modified_at [Time, nil]
          #   @param start_time [Time, nil]
          #   @param status [String]
        end

        class DunningStep < Orb::Internal::Type::BaseModel
          # @!attribute actions
          #
          #   @return [Array<String>]
          required :actions, Orb::Internal::Type::ArrayOf[String]

          # @!attribute created_at
          #
          #   @return [Time, nil]
          required :created_at, Time, nil?: true

          # @!attribute execution_time
          #
          #   @return [Time, nil]
          required :execution_time, Time, nil?: true

          # @!attribute manually_triggered_at
          #
          #   @return [Time, nil]
          required :manually_triggered_at, Time, nil?: true

          # @!attribute modified_at
          #
          #   @return [Time, nil]
          required :modified_at, Time, nil?: true

          # @!attribute status
          #
          #   @return [String]
          required :status, String

          # @!attribute step_number
          #
          #   @return [Integer, nil]
          required :step_number, Integer, nil?: true

          # @!attribute timestamp
          #
          #   @return [Time, nil]
          required :timestamp, Time, nil?: true

          # @!method initialize(actions:, created_at:, execution_time:, manually_triggered_at:, modified_at:, status:, step_number:, timestamp:)
          #   @param actions [Array<String>]
          #   @param created_at [Time, nil]
          #   @param execution_time [Time, nil]
          #   @param manually_triggered_at [Time, nil]
          #   @param modified_at [Time, nil]
          #   @param status [String]
          #   @param step_number [Integer, nil]
          #   @param timestamp [Time, nil]
        end
      end

      # The event this payload describes.
      #
      # @see Orb::Models::InvoiceDunningScheduleEndedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        INVOICE_DUNNING_SCHEDULE_ENDED = :"invoice.dunning_schedule_ended"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
