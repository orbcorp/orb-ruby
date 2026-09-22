# frozen_string_literal: true

module Orb
  module Models
    class InvoiceDunningScheduleStepExecutedWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   @return [Orb::Models::InvoiceDunningScheduleStepExecutedWebhookEvent::Properties]
      required :properties, -> { Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::InvoiceDunningScheduleStepExecutedWebhookEvent::Type]
      required :type, enum: -> { Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, invoice:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoiceDunningScheduleStepExecutedWebhookEvent} for more details.
      #
      #   Issued when a dunning schedule step is executed.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param invoice [Orb::Models::Invoice] An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity, represen
      #
      #   @param properties [Orb::Models::InvoiceDunningScheduleStepExecutedWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::InvoiceDunningScheduleStepExecutedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::InvoiceDunningScheduleStepExecutedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute dunning_step
        #
        #   @return [Orb::Models::InvoiceDunningScheduleStepExecutedWebhookEvent::Properties::DunningStep]
        required :dunning_step,
                 -> { Orb::InvoiceDunningScheduleStepExecutedWebhookEvent::Properties::DunningStep }

        # @!method initialize(dunning_step:)
        #   @param dunning_step [Orb::Models::InvoiceDunningScheduleStepExecutedWebhookEvent::Properties::DunningStep]

        # @see Orb::Models::InvoiceDunningScheduleStepExecutedWebhookEvent::Properties#dunning_step
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
      # @see Orb::Models::InvoiceDunningScheduleStepExecutedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        INVOICE_DUNNING_SCHEDULE_STEP_EXECUTED = :"invoice.dunning_schedule_step_executed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
