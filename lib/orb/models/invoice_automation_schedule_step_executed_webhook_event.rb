# frozen_string_literal: true

module Orb
  module Models
    class InvoiceAutomationScheduleStepExecutedWebhookEvent < Orb::Internal::Type::BaseModel
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
      #   The invoice fields a consumer needs to run their own notification flows without
      #   a follow-up API call, mirroring the variables Orb's own automation emails render
      #   against.
      #
      #   @return [Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Invoice]
      required :invoice, -> { Orb::InvoiceAutomationScheduleStepExecutedWebhookEvent::Invoice }

      # @!attribute properties
      #
      #   @return [Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties]
      required :properties, -> { Orb::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties }

      # @!attribute type
      #   The event this payload describes.
      #
      #   @return [Symbol, Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Type]
      required :type, enum: -> { Orb::InvoiceAutomationScheduleStepExecutedWebhookEvent::Type }

      # @!method initialize(id:, created_at:, invoice:, properties:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent} for more
      #   details.
      #
      #   Issued when a collections-automation schedule step is executed for an invoice.
      #
      #   @param id [String] The ID of this webhook event.
      #
      #   @param created_at [Time] The time at which this event was created, to the second.
      #
      #   @param invoice [Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Invoice] The invoice fields a consumer needs to run their own notification flows without
      #
      #   @param properties [Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties]
      #
      #   @param type [Symbol, Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Type] The event this payload describes.

      # @see Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent#invoice
      class Invoice < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute amount_due
        #
        #   @return [String]
        required :amount_due, String

        # @!attribute currency
        #
        #   @return [String]
        required :currency, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute customer_name
        #
        #   @return [String]
        required :customer_name, String

        # @!attribute due_date
        #
        #   @return [Date, nil]
        required :due_date, Date, nil?: true

        # @!attribute external_customer_id
        #
        #   @return [String, nil]
        required :external_customer_id, String, nil?: true

        # @!attribute hosted_invoice_url
        #
        #   @return [String, nil]
        required :hosted_invoice_url, String, nil?: true

        # @!attribute invoice_date
        #
        #   @return [Time]
        required :invoice_date, Time

        # @!attribute invoice_number
        #
        #   @return [String]
        required :invoice_number, String

        # @!attribute issued_at
        #
        #   @return [Time, nil]
        required :issued_at, Time, nil?: true

        # @!attribute memo
        #
        #   @return [String, nil]
        required :memo, String, nil?: true

        # @!attribute payment_method_last_four_digits
        #
        #   @return [String, nil]
        required :payment_method_last_four_digits, String, nil?: true

        # @!attribute status
        #
        #   @return [String]
        required :status, String

        # @!attribute subscription_id
        #
        #   @return [String, nil]
        required :subscription_id, String, nil?: true

        # @!method initialize(id:, amount_due:, currency:, customer_id:, customer_name:, due_date:, external_customer_id:, hosted_invoice_url:, invoice_date:, invoice_number:, issued_at:, memo:, payment_method_last_four_digits:, status:, subscription_id:)
        #   The invoice fields a consumer needs to run their own notification flows without
        #   a follow-up API call, mirroring the variables Orb's own automation emails render
        #   against.
        #
        #   @param id [String]
        #   @param amount_due [String]
        #   @param currency [String]
        #   @param customer_id [String]
        #   @param customer_name [String]
        #   @param due_date [Date, nil]
        #   @param external_customer_id [String, nil]
        #   @param hosted_invoice_url [String, nil]
        #   @param invoice_date [Time]
        #   @param invoice_number [String]
        #   @param issued_at [Time, nil]
        #   @param memo [String, nil]
        #   @param payment_method_last_four_digits [String, nil]
        #   @param status [String]
        #   @param subscription_id [String, nil]
      end

      # @see Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent#properties
      class Properties < Orb::Internal::Type::BaseModel
        # @!attribute actions
        #
        #   @return [Array<Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::SendEmail, Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::RetryPayment>]
        required :actions,
                 -> { Orb::Internal::Type::ArrayOf[union: Orb::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action] }

        # @!attribute automation_schedule_template_id
        #
        #   @return [String, nil]
        required :automation_schedule_template_id, String, nil?: true

        # @!attribute automation_schedule_template_name
        #
        #   @return [String, nil]
        required :automation_schedule_template_name, String, nil?: true

        # @!attribute executed_at
        #
        #   @return [Time]
        required :executed_at, Time

        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute scheduled_at
        #
        #   @return [Time]
        required :scheduled_at, Time

        # @!attribute step_id
        #
        #   @return [String]
        required :step_id, String

        # @!method initialize(actions:, automation_schedule_template_id:, automation_schedule_template_name:, executed_at:, label:, scheduled_at:, step_id:)
        #   @param actions [Array<Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::SendEmail, Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::RetryPayment>]
        #   @param automation_schedule_template_id [String, nil]
        #   @param automation_schedule_template_name [String, nil]
        #   @param executed_at [Time]
        #   @param label [String]
        #   @param scheduled_at [Time]
        #   @param step_id [String]

        module Action
          extend Orb::Internal::Type::Union

          discriminator :action_type

          variant :send_email,
                  -> { Orb::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::SendEmail }

          variant :retry_payment,
                  -> { Orb::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::RetryPayment }

          class SendEmail < Orb::Internal::Type::BaseModel
            # @!attribute recipient
            #
            #   @return [String, nil]
            required :recipient, String, nil?: true

            # @!attribute sent
            #
            #   @return [Boolean]
            required :sent, Orb::Internal::Type::Boolean

            # @!attribute action_type
            #
            #   @return [Symbol, Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::SendEmail::ActionType, nil]
            optional :action_type,
                     enum: -> { Orb::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::SendEmail::ActionType }

            # @!method initialize(recipient:, sent:, action_type: nil)
            #   @param recipient [String, nil]
            #   @param sent [Boolean]
            #   @param action_type [Symbol, Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::SendEmail::ActionType]

            # @see Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::SendEmail#action_type
            module ActionType
              extend Orb::Internal::Type::Enum

              SEND_EMAIL = :send_email

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class RetryPayment < Orb::Internal::Type::BaseModel
            # @!attribute amount_attempted
            #
            #   @return [String, nil]
            required :amount_attempted, String, nil?: true

            # @!attribute currency
            #
            #   @return [String, nil]
            required :currency, String, nil?: true

            # @!attribute failure_reason
            #
            #   @return [String, nil]
            required :failure_reason, String, nil?: true

            # @!attribute outcome
            #
            #   @return [Symbol, Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::RetryPayment::Outcome]
            required :outcome,
                     enum: -> { Orb::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::RetryPayment::Outcome }

            # @!attribute payment_provider
            #
            #   @return [String, nil]
            required :payment_provider, String, nil?: true

            # @!attribute payment_provider_transaction_id
            #
            #   @return [String, nil]
            required :payment_provider_transaction_id, String, nil?: true

            # @!attribute payment_transaction_record_id
            #
            #   @return [String, nil]
            required :payment_transaction_record_id, String, nil?: true

            # @!attribute action_type
            #
            #   @return [Symbol, Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::RetryPayment::ActionType, nil]
            optional :action_type,
                     enum: -> { Orb::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::RetryPayment::ActionType }

            # @!method initialize(amount_attempted:, currency:, failure_reason:, outcome:, payment_provider:, payment_provider_transaction_id:, payment_transaction_record_id:, action_type: nil)
            #   @param amount_attempted [String, nil]
            #   @param currency [String, nil]
            #   @param failure_reason [String, nil]
            #   @param outcome [Symbol, Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::RetryPayment::Outcome]
            #   @param payment_provider [String, nil]
            #   @param payment_provider_transaction_id [String, nil]
            #   @param payment_transaction_record_id [String, nil]
            #   @param action_type [Symbol, Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::RetryPayment::ActionType]

            # @see Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::RetryPayment#outcome
            module Outcome
              extend Orb::Internal::Type::Enum

              SUCCEEDED = :succeeded
              FAILED = :failed
              SKIPPED = :skipped

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::RetryPayment#action_type
            module ActionType
              extend Orb::Internal::Type::Enum

              RETRY_PAYMENT = :retry_payment

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::SendEmail, Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent::Properties::Action::RetryPayment)]
        end
      end

      # The event this payload describes.
      #
      # @see Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent#type
      module Type
        extend Orb::Internal::Type::Enum

        INVOICE_AUTOMATION_SCHEDULE_STEP_EXECUTED = :"invoice.automation_schedule_step_executed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
