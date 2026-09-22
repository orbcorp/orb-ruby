# frozen_string_literal: true

module Orb
  module Models
    class InvoiceDunningScheduleResetWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   @return [Orb::Models::InvoiceDunningScheduleResetWebhookEvent::Properties]
      required :properties, -> { Orb::InvoiceDunningScheduleResetWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::InvoiceDunningScheduleResetWebhookEvent::Type]
      required :type, enum: -> { Orb::InvoiceDunningScheduleResetWebhookEvent::Type }

      # @!method initialize(id:, created_at:, invoice:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoiceDunningScheduleResetWebhookEvent} for more details.
      #
      #   Issued when a dunning schedule is reset.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param invoice [Orb::Models::Invoice] An [`Invoice`](/core-concepts#invoice) is a fundamental billing entity, represen
      #
      #   @param properties [Orb::Models::InvoiceDunningScheduleResetWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::InvoiceDunningScheduleResetWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::InvoiceDunningScheduleResetWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute dunning_schedule
        #   The schedule shape `DunningScheduleV2.external_serialization()` produces, which
        #   is narrower than the schedule's api resource.
        #
        #   @return [Orb::Models::InvoiceDunningScheduleResetWebhookEvent::Properties::DunningSchedule]
        required :dunning_schedule,
                 -> { Orb::InvoiceDunningScheduleResetWebhookEvent::Properties::DunningSchedule }

        # @!attribute previous_schedule
        #   The schedule shape `DunningScheduleV2.external_serialization()` produces, which
        #   is narrower than the schedule's api resource.
        #
        #   @return [Orb::Models::InvoiceDunningScheduleResetWebhookEvent::Properties::PreviousSchedule]
        required :previous_schedule,
                 -> { Orb::InvoiceDunningScheduleResetWebhookEvent::Properties::PreviousSchedule }

        # @!method initialize(dunning_schedule:, previous_schedule:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::InvoiceDunningScheduleResetWebhookEvent::Properties} for more
        #   details.
        #
        #   @param dunning_schedule [Orb::Models::InvoiceDunningScheduleResetWebhookEvent::Properties::DunningSchedule] The schedule shape `DunningScheduleV2.external_serialization()` produces, which
        #
        #   @param previous_schedule [Orb::Models::InvoiceDunningScheduleResetWebhookEvent::Properties::PreviousSchedule] The schedule shape `DunningScheduleV2.external_serialization()` produces, which

        # @see Orb::Models::InvoiceDunningScheduleResetWebhookEvent::Properties#dunning_schedule
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
          #   @return [String, nil]
          required :status, String, nil?: true

          # @!method initialize(completion_time:, created_at:, invoice_id:, modified_at:, start_time:, status:)
          #   The schedule shape `DunningScheduleV2.external_serialization()` produces, which
          #   is narrower than the schedule's api resource.
          #
          #   @param completion_time [Time, nil]
          #   @param created_at [Time, nil]
          #   @param invoice_id [String]
          #   @param modified_at [Time, nil]
          #   @param start_time [Time, nil]
          #   @param status [String, nil]
        end

        # @see Orb::Models::InvoiceDunningScheduleResetWebhookEvent::Properties#previous_schedule
        class PreviousSchedule < Orb::Internal::Type::BaseModel
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
          #   @return [String, nil]
          required :status, String, nil?: true

          # @!method initialize(completion_time:, created_at:, invoice_id:, modified_at:, start_time:, status:)
          #   The schedule shape `DunningScheduleV2.external_serialization()` produces, which
          #   is narrower than the schedule's api resource.
          #
          #   @param completion_time [Time, nil]
          #   @param created_at [Time, nil]
          #   @param invoice_id [String]
          #   @param modified_at [Time, nil]
          #   @param start_time [Time, nil]
          #   @param status [String, nil]
        end
      end

      # The event this payload describes.
      #
      # @see Orb::Models::InvoiceDunningScheduleResetWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        INVOICE_DUNNING_SCHEDULE_RESET = :"invoice.dunning_schedule_reset"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
