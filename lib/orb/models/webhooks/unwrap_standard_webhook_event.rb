# frozen_string_literal: true

module Orb
  module Models
    module Webhooks
      # Issued when a backfill is closed and its events are reflected into usage.
      module UnwrapStandardWebhookEvent
        extend Orb::Internal::Type::Union

        # Issued when a backfill is closed and its events are reflected into usage.
        variant -> { Orb::Webhooks::BackfillReflectedStandardWebhookEvent }

        # Issued when a backfill is reverted, removing its events from usage.
        variant -> { Orb::Webhooks::BackfillRevertedStandardWebhookEvent }

        # Issued when a billable metric is edited.
        variant -> { Orb::Webhooks::BillableMetricEditedStandardWebhookEvent }

        # Issued when a credit block accounting sync fails.
        variant -> { Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent }

        # Issued when a credit block accounting sync succeeds.
        variant -> { Orb::Webhooks::CreditBlockAccountingSyncSucceededStandardWebhookEvent }

        # Issued when a credit note accounting sync fails.
        variant -> { Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent }

        # Issued when a credit note accounting sync succeeds.
        variant -> { Orb::Webhooks::CreditNoteAccountingSyncSucceededStandardWebhookEvent }

        # Issued when a credit note is created.
        variant -> { Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent }

        # Issued when a credit note is marked as void.
        variant -> { Orb::Webhooks::CreditNoteMarkedAsVoidStandardWebhookEvent }

        # Issued when a customer accounting sync fails.
        variant -> { Orb::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent }

        # Issued when a customer accounting sync succeeds.
        variant -> { Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent }

        # Issued when a customer balance transaction is created.
        variant -> { Orb::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent }

        # Issued when a customer resource is created.
        variant -> { Orb::Webhooks::CustomerCreatedStandardWebhookEvent }

        # Issued when a customer's prepaid credits balance is depleted.
        variant -> { Orb::Webhooks::CustomerCreditBalanceDepletedStandardWebhookEvent }

        # Issued when a customer's prepaid credits balance is depleted to a configured threshold.
        variant -> { Orb::Webhooks::CustomerCreditBalanceDroppedStandardWebhookEvent }

        # Issued when a customer's credit balance recovers from depleted.
        variant -> { Orb::Webhooks::CustomerCreditBalanceRecoveredStandardWebhookEvent }

        # Issued when a customer's credit ledger is incremented.
        variant -> { Orb::Webhooks::CustomerCreditLedgerIncrementedStandardWebhookEvent }

        # Issued when a customer is updated.
        variant -> { Orb::Webhooks::CustomerEditedStandardWebhookEvent }

        # Issued when a data export transfer fails.
        variant -> { Orb::Webhooks::DataExportsTransferErrorStandardWebhookEvent }

        # Issued when a data export transfer succeeds.
        variant -> { Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent }

        # Issued when an event does not match any customer.
        variant -> { Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent }

        # Issued when ingestion events reference unmatched customer IDs.
        variant -> { Orb::Webhooks::IngestionUnmatchedCustomerIDsStandardWebhookEvent }

        # Issued when an invoice accounting sync fails.
        variant -> { Orb::Webhooks::InvoiceAccountingSyncFailedStandardWebhookEvent }

        # Issued when an invoice accounting sync succeeds.
        variant -> { Orb::Webhooks::InvoiceAccountingSyncSucceededStandardWebhookEvent }

        # Issued when a collections-automation schedule step is executed for an invoice.
        variant -> { Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent }

        # Issued when invoice cost data is exported.
        variant -> { Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent }

        # Issued when a dunning schedule is created for an invoice.
        variant -> { Orb::Webhooks::InvoiceDunningScheduleCreatedStandardWebhookEvent }

        # Issued when a dunning schedule ends.
        variant -> { Orb::Webhooks::InvoiceDunningScheduleEndedStandardWebhookEvent }

        # Issued when a dunning schedule is reset.
        variant -> { Orb::Webhooks::InvoiceDunningScheduleResetStandardWebhookEvent }

        # Issued when a dunning schedule step is executed.
        variant -> { Orb::Webhooks::InvoiceDunningScheduleStepExecutedStandardWebhookEvent }

        # Issued when a draft invoice has been edited.
        variant -> { Orb::Webhooks::InvoiceEditedStandardWebhookEvent }

        # Issued when an invoice's invoice date has elapsed.
        variant -> { Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent }

        # Issued when an invoice issue attempt fails.
        variant -> { Orb::Webhooks::InvoiceIssueFailedStandardWebhookEvent }

        # Issued when an invoice transitions to the "issued" state.
        variant -> { Orb::Webhooks::InvoiceIssuedStandardWebhookEvent }

        # A lightweight variant of invoice.issued for accounts configured to receive a summarized invoice payload.
        variant -> { Orb::Webhooks::InvoiceIssuedSummaryStandardWebhookEvent }

        # Issued when an invoice is manually marked as paid.
        variant -> { Orb::Webhooks::InvoiceManuallyMarkedAsPaidStandardWebhookEvent }

        # Issued when an invoice is marked as void.
        variant -> { Orb::Webhooks::InvoiceManuallyMarkedAsVoidStandardWebhookEvent }

        # Issued when automated payment collection for an invoice fails for a configured payment gateway.
        variant -> { Orb::Webhooks::InvoicePaymentFailedStandardWebhookEvent }

        # Issued when an invoice payment is being processed.
        variant -> { Orb::Webhooks::InvoicePaymentProcessingStandardWebhookEvent }

        # Issued when automated payment collection for an invoice succeeds for a configured payment gateway.
        variant -> { Orb::Webhooks::InvoicePaymentSucceededStandardWebhookEvent }

        # Issued when an invoice sync fails.
        variant -> { Orb::Webhooks::InvoiceSyncFailedStandardWebhookEvent }

        # Issued when an invoice sync succeeds.
        variant -> { Orb::Webhooks::InvoiceSyncSucceededStandardWebhookEvent }

        # Issued when an invoice is undone from marked as paid.
        variant -> { Orb::Webhooks::InvoiceUndoMarkAsPaidStandardWebhookEvent }

        # Issued when an invoice due date recalculation is canceled.
        variant -> { Orb::Webhooks::InvoiceDueDateRecalculationCanceledStandardWebhookEvent }

        # Issued when an invoice due date recalculation is completed.
        variant -> { Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent }

        # Issued when an invoice due date recalculation is started.
        variant -> { Orb::Webhooks::InvoiceDueDateRecalculationStartedStandardWebhookEvent }

        # Issued when metric events are dropped by watermark threshold.
        variant -> { Orb::Webhooks::MetricEventsDroppedByWatermarkStandardWebhookEvent }

        # Issued when a payment method is created.
        variant -> { Orb::Webhooks::PaymentMethodCreatedStandardWebhookEvent }

        # Issued when a payment method is deleted.
        variant -> { Orb::Webhooks::PaymentMethodDeletedStandardWebhookEvent }

        # Issued when a plan is created, or when a draft plan is published.
        variant -> { Orb::Webhooks::PlanCreatedStandardWebhookEvent }

        # Issued when a plan's default version is set.
        variant -> { Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent }

        # Issued when a plan's name, description, external plan ID, metadata or status is edited.
        variant -> { Orb::Webhooks::PlanEditedStandardWebhookEvent }

        # Issued when a new plan version is created.
        variant -> { Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent }

        # Issued when a price is edited.
        variant -> { Orb::Webhooks::PriceEditedStandardWebhookEvent }

        # Issued when a test webhook is sent.
        variant -> { Orb::Webhooks::ResourceEventTestStandardWebhookEvent }

        # Issued when a sales order accounting sync fails.
        variant -> { Orb::Webhooks::SalesOrderAccountingSyncFailedStandardWebhookEvent }

        # Issued when a sales order accounting sync succeeds.
        variant -> { Orb::Webhooks::SalesOrderAccountingSyncSucceededStandardWebhookEvent }

        # Issued when a subscription accounting sync fails.
        variant -> { Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent }

        # Issued when a subscription accounting sync succeeds.
        variant -> { Orb::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent }

        # Issued when an alert is automatically disabled by the system.
        variant -> { Orb::Webhooks::SubscriptionAlertDisabledStandardWebhookEvent }

        # Issued when a subscription cancellation is scheduled.
        variant -> { Orb::Webhooks::SubscriptionCancellationScheduledStandardWebhookEvent }

        # Issued when a scheduled subscription cancellation is unscheduled.
        variant -> { Orb::Webhooks::SubscriptionCancellationUnscheduledStandardWebhookEvent }

        # Issued when a subscription's cost exceeds a pre-configured amount threshold.
        variant -> { Orb::Webhooks::SubscriptionCostExceededStandardWebhookEvent }

        # Issued when a subscription resource is created.
        variant -> { Orb::Webhooks::SubscriptionCreatedStandardWebhookEvent }

        # Issued when a subscription is updated.
        variant -> { Orb::Webhooks::SubscriptionEditedStandardWebhookEvent }

        # Issued whenever a customer's subscription ends/lapses.
        variant -> { Orb::Webhooks::SubscriptionEndedStandardWebhookEvent }

        # Issued when a subscription's fixed fee quantity is updated.
        variant -> { Orb::Webhooks::SubscriptionFixedFeeQuantityUpdatedStandardWebhookEvent }

        # Issued when grouped subscription costs exceed a pre-configured amount threshold.
        variant -> { Orb::Webhooks::SubscriptionGroupedCostExceededStandardWebhookEvent }

        # Issued when a subscription's invoicing threshold is exceeded and an evaluation is performed.
        variant -> { Orb::Webhooks::SubscriptionInvoicingThresholdExceededStandardWebhookEvent }

        # Issued when a license allocation is reset.
        variant -> { Orb::Webhooks::SubscriptionLicenseAllocationResetStandardWebhookEvent }

        # Issued when a license balance threshold is reached.
        variant -> { Orb::Webhooks::SubscriptionLicenseBalanceThresholdReachedStandardWebhookEvent }

        # Issued when a subscription plan change is scheduled.
        variant -> { Orb::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent }

        # Issued when a subscription transitions from one plan to a different plan.
        variant -> { Orb::Webhooks::SubscriptionPlanChangedStandardWebhookEvent }

        # Issued when a subscription plan version change is scheduled.
        variant -> { Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent }

        # Issued when a subscription plan version has changed.
        variant -> { Orb::Webhooks::SubscriptionPlanVersionChangedStandardWebhookEvent }

        # Issued when a subscription's rated spend, before credits and adjustments, exceeds a pre-configured amount threshold.
        variant -> { Orb::Webhooks::SubscriptionSpendExceededStandardWebhookEvent }

        # Issued when a subscription begins.
        variant -> { Orb::Webhooks::SubscriptionStartedStandardWebhookEvent }

        # Issued when a subscription trial ends.
        variant -> { Orb::Webhooks::SubscriptionTrialEndedStandardWebhookEvent }

        # Issued when a billable metric in a subscription exceeds a pre-configured quantity threshold.
        variant -> { Orb::Webhooks::SubscriptionUsageExceededStandardWebhookEvent }

        # Issued when a transaction accounting sync fails.
        variant -> { Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent }

        # Issued when a transaction accounting sync succeeds.
        variant -> { Orb::Webhooks::TransactionAccountingSyncSucceededStandardWebhookEvent }

        # @!method self.variants
        #   @return [Array(Orb::Models::Webhooks::BackfillReflectedStandardWebhookEvent, Orb::Models::Webhooks::BackfillRevertedStandardWebhookEvent, Orb::Models::Webhooks::BillableMetricEditedStandardWebhookEvent, Orb::Models::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent, Orb::Models::Webhooks::CreditBlockAccountingSyncSucceededStandardWebhookEvent, Orb::Models::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent, Orb::Models::Webhooks::CreditNoteAccountingSyncSucceededStandardWebhookEvent, Orb::Models::Webhooks::CreditNoteIssuedStandardWebhookEvent, Orb::Models::Webhooks::CreditNoteMarkedAsVoidStandardWebhookEvent, Orb::Models::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent, Orb::Models::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent, Orb::Models::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent, Orb::Models::Webhooks::CustomerCreatedStandardWebhookEvent, Orb::Models::Webhooks::CustomerCreditBalanceDepletedStandardWebhookEvent, Orb::Models::Webhooks::CustomerCreditBalanceDroppedStandardWebhookEvent, Orb::Models::Webhooks::CustomerCreditBalanceRecoveredStandardWebhookEvent, Orb::Models::Webhooks::CustomerCreditLedgerIncrementedStandardWebhookEvent, Orb::Models::Webhooks::CustomerEditedStandardWebhookEvent, Orb::Models::Webhooks::DataExportsTransferErrorStandardWebhookEvent, Orb::Models::Webhooks::DataExportsTransferSuccessStandardWebhookEvent, Orb::Models::Webhooks::EventUnmatchedEventStandardWebhookEvent, Orb::Models::Webhooks::IngestionUnmatchedCustomerIDsStandardWebhookEvent, Orb::Models::Webhooks::InvoiceAccountingSyncFailedStandardWebhookEvent, Orb::Models::Webhooks::InvoiceAccountingSyncSucceededStandardWebhookEvent, Orb::Models::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent, Orb::Models::Webhooks::InvoiceCostDataExportedStandardWebhookEvent, Orb::Models::Webhooks::InvoiceDunningScheduleCreatedStandardWebhookEvent, Orb::Models::Webhooks::InvoiceDunningScheduleEndedStandardWebhookEvent, Orb::Models::Webhooks::InvoiceDunningScheduleResetStandardWebhookEvent, Orb::Models::Webhooks::InvoiceDunningScheduleStepExecutedStandardWebhookEvent, Orb::Models::Webhooks::InvoiceEditedStandardWebhookEvent, Orb::Models::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent, Orb::Models::Webhooks::InvoiceIssueFailedStandardWebhookEvent, Orb::Models::Webhooks::InvoiceIssuedStandardWebhookEvent, Orb::Models::Webhooks::InvoiceIssuedSummaryStandardWebhookEvent, Orb::Models::Webhooks::InvoiceManuallyMarkedAsPaidStandardWebhookEvent, Orb::Models::Webhooks::InvoiceManuallyMarkedAsVoidStandardWebhookEvent, Orb::Models::Webhooks::InvoicePaymentFailedStandardWebhookEvent, Orb::Models::Webhooks::InvoicePaymentProcessingStandardWebhookEvent, Orb::Models::Webhooks::InvoicePaymentSucceededStandardWebhookEvent, Orb::Models::Webhooks::InvoiceSyncFailedStandardWebhookEvent, Orb::Models::Webhooks::InvoiceSyncSucceededStandardWebhookEvent, Orb::Models::Webhooks::InvoiceUndoMarkAsPaidStandardWebhookEvent, Orb::Models::Webhooks::InvoiceDueDateRecalculationCanceledStandardWebhookEvent, Orb::Models::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent, Orb::Models::Webhooks::InvoiceDueDateRecalculationStartedStandardWebhookEvent, Orb::Models::Webhooks::MetricEventsDroppedByWatermarkStandardWebhookEvent, Orb::Models::Webhooks::PaymentMethodCreatedStandardWebhookEvent, Orb::Models::Webhooks::PaymentMethodDeletedStandardWebhookEvent, Orb::Models::Webhooks::PlanCreatedStandardWebhookEvent, Orb::Models::Webhooks::PlanDefaultVersionSetStandardWebhookEvent, Orb::Models::Webhooks::PlanEditedStandardWebhookEvent, Orb::Models::Webhooks::PlanVersionCreatedStandardWebhookEvent, Orb::Models::Webhooks::PriceEditedStandardWebhookEvent, Orb::Models::Webhooks::ResourceEventTestStandardWebhookEvent, Orb::Models::Webhooks::SalesOrderAccountingSyncFailedStandardWebhookEvent, Orb::Models::Webhooks::SalesOrderAccountingSyncSucceededStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionAlertDisabledStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionCancellationScheduledStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionCancellationUnscheduledStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionCostExceededStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionCreatedStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionEditedStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionEndedStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionFixedFeeQuantityUpdatedStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionGroupedCostExceededStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionInvoicingThresholdExceededStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionLicenseAllocationResetStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionLicenseBalanceThresholdReachedStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionPlanChangedStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionPlanVersionChangedStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionSpendExceededStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionStartedStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionTrialEndedStandardWebhookEvent, Orb::Models::Webhooks::SubscriptionUsageExceededStandardWebhookEvent, Orb::Models::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent, Orb::Models::Webhooks::TransactionAccountingSyncSucceededStandardWebhookEvent)]
      end
    end
  end
end
