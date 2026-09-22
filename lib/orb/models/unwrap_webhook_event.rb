# frozen_string_literal: true

module Orb
  module Models
    # Issued when a backfill is closed and its events are reflected into usage.
    module UnwrapWebhookEvent
      extend Orb::Internal::Type::Union

      # Issued when a backfill is closed and its events are reflected into usage.
      variant -> { Orb::BackfillReflectedWebhookEvent }

      # Issued when a backfill is reverted, removing its events from usage.
      variant -> { Orb::BackfillRevertedWebhookEvent }

      # Issued when a billable metric is edited.
      variant -> { Orb::BillableMetricEditedWebhookEvent }

      # Issued when a credit block accounting sync fails.
      variant -> { Orb::CreditBlockAccountingSyncFailedWebhookEvent }

      # Issued when a credit block accounting sync succeeds.
      variant -> { Orb::CreditBlockAccountingSyncSucceededWebhookEvent }

      # Issued when a credit note accounting sync fails.
      variant -> { Orb::CreditNoteAccountingSyncFailedWebhookEvent }

      # Issued when a credit note accounting sync succeeds.
      variant -> { Orb::CreditNoteAccountingSyncSucceededWebhookEvent }

      # Issued when a credit note is created.
      variant -> { Orb::CreditNoteIssuedWebhookEvent }

      # Issued when a credit note is marked as void.
      variant -> { Orb::CreditNoteMarkedAsVoidWebhookEvent }

      # Issued when a customer accounting sync fails.
      variant -> { Orb::CustomerAccountingSyncFailedWebhookEvent }

      # Issued when a customer accounting sync succeeds.
      variant -> { Orb::CustomerAccountingSyncSucceededWebhookEvent }

      # Issued when a customer balance transaction is created.
      variant -> { Orb::CustomerBalanceTransactionCreatedWebhookEvent }

      # Issued when a customer resource is created.
      variant -> { Orb::CustomerCreatedWebhookEvent }

      # Issued when a customer's prepaid credits balance is depleted.
      variant -> { Orb::CustomerCreditBalanceDepletedWebhookEvent }

      # Issued when a customer's prepaid credits balance is depleted to a configured threshold.
      variant -> { Orb::CustomerCreditBalanceDroppedWebhookEvent }

      # Issued when a customer's credit balance recovers from depleted.
      variant -> { Orb::CustomerCreditBalanceRecoveredWebhookEvent }

      # Issued when a customer's credit ledger is incremented.
      variant -> { Orb::CustomerCreditLedgerIncrementedWebhookEvent }

      # Issued when a customer is updated.
      variant -> { Orb::CustomerEditedWebhookEvent }

      # Issued when a data export transfer fails.
      variant -> { Orb::DataExportsTransferErrorWebhookEvent }

      # Issued when a data export transfer succeeds.
      variant -> { Orb::DataExportsTransferSuccessWebhookEvent }

      # Issued when an event does not match any customer.
      variant -> { Orb::EventUnmatchedEventWebhookEvent }

      # Issued when ingestion events reference unmatched customer IDs.
      variant -> { Orb::IngestionUnmatchedCustomerIDsWebhookEvent }

      # Issued when an invoice accounting sync fails.
      variant -> { Orb::InvoiceAccountingSyncFailedWebhookEvent }

      # Issued when an invoice accounting sync succeeds.
      variant -> { Orb::InvoiceAccountingSyncSucceededWebhookEvent }

      # Issued when a collections-automation schedule step is executed for an invoice.
      variant -> { Orb::InvoiceAutomationScheduleStepExecutedWebhookEvent }

      # Issued when invoice cost data is exported.
      variant -> { Orb::InvoiceCostDataExportedWebhookEvent }

      # Issued when a dunning schedule is created for an invoice.
      variant -> { Orb::InvoiceDunningScheduleCreatedWebhookEvent }

      # Issued when a dunning schedule ends.
      variant -> { Orb::InvoiceDunningScheduleEndedWebhookEvent }

      # Issued when a dunning schedule is reset.
      variant -> { Orb::InvoiceDunningScheduleResetWebhookEvent }

      # Issued when a dunning schedule step is executed.
      variant -> { Orb::InvoiceDunningScheduleStepExecutedWebhookEvent }

      # Issued when a draft invoice has been edited.
      variant -> { Orb::InvoiceEditedWebhookEvent }

      # Issued when an invoice's invoice date has elapsed.
      variant -> { Orb::InvoiceInvoiceDateElapsedWebhookEvent }

      # Issued when an invoice issue attempt fails.
      variant -> { Orb::InvoiceIssueFailedWebhookEvent }

      # Issued when an invoice transitions to the "issued" state.
      variant -> { Orb::InvoiceIssuedWebhookEvent }

      # A lightweight variant of invoice.issued for accounts configured to receive a summarized invoice payload.
      variant -> { Orb::InvoiceIssuedSummaryWebhookEvent }

      # Issued when an invoice is manually marked as paid.
      variant -> { Orb::InvoiceManuallyMarkedAsPaidWebhookEvent }

      # Issued when an invoice is marked as void.
      variant -> { Orb::InvoiceManuallyMarkedAsVoidWebhookEvent }

      # Issued when automated payment collection for an invoice fails for a configured payment gateway.
      variant -> { Orb::InvoicePaymentFailedWebhookEvent }

      # Issued when an invoice payment is being processed.
      variant -> { Orb::InvoicePaymentProcessingWebhookEvent }

      # Issued when automated payment collection for an invoice succeeds for a configured payment gateway.
      variant -> { Orb::InvoicePaymentSucceededWebhookEvent }

      # Issued when an invoice sync fails.
      variant -> { Orb::InvoiceSyncFailedWebhookEvent }

      # Issued when an invoice sync succeeds.
      variant -> { Orb::InvoiceSyncSucceededWebhookEvent }

      # Issued when an invoice is undone from marked as paid.
      variant -> { Orb::InvoiceUndoMarkAsPaidWebhookEvent }

      # Issued when an invoice due date recalculation is canceled.
      variant -> { Orb::InvoiceDueDateRecalculationCanceledWebhookEvent }

      # Issued when an invoice due date recalculation is completed.
      variant -> { Orb::InvoiceDueDateRecalculationCompletedWebhookEvent }

      # Issued when an invoice due date recalculation is started.
      variant -> { Orb::InvoiceDueDateRecalculationStartedWebhookEvent }

      # Issued when metric events are dropped by watermark threshold.
      variant -> { Orb::MetricEventsDroppedByWatermarkWebhookEvent }

      # Issued when a payment method is created.
      variant -> { Orb::PaymentMethodCreatedWebhookEvent }

      # Issued when a payment method is deleted.
      variant -> { Orb::PaymentMethodDeletedWebhookEvent }

      # Issued when a plan's default version is set.
      variant -> { Orb::PlanDefaultVersionSetWebhookEvent }

      # Issued when a new plan version is created.
      variant -> { Orb::PlanVersionCreatedWebhookEvent }

      # Issued when a price is edited.
      variant -> { Orb::PriceEditedWebhookEvent }

      # Issued when a test webhook is sent.
      variant -> { Orb::ResourceEventTestWebhookEvent }

      # Issued when a sales order accounting sync fails.
      variant -> { Orb::SalesOrderAccountingSyncFailedWebhookEvent }

      # Issued when a sales order accounting sync succeeds.
      variant -> { Orb::SalesOrderAccountingSyncSucceededWebhookEvent }

      # Issued when a subscription accounting sync fails.
      variant -> { Orb::SubscriptionAccountingSyncFailedWebhookEvent }

      # Issued when a subscription accounting sync succeeds.
      variant -> { Orb::SubscriptionAccountingSyncSucceededWebhookEvent }

      # Issued when an alert is automatically disabled by the system.
      variant -> { Orb::SubscriptionAlertDisabledWebhookEvent }

      # Issued when a subscription cancellation is scheduled.
      variant -> { Orb::SubscriptionCancellationScheduledWebhookEvent }

      # Issued when a scheduled subscription cancellation is unscheduled.
      variant -> { Orb::SubscriptionCancellationUnscheduledWebhookEvent }

      # Issued when a subscription's cost exceeds a pre-configured amount threshold.
      variant -> { Orb::SubscriptionCostExceededWebhookEvent }

      # Issued when a subscription resource is created.
      variant -> { Orb::SubscriptionCreatedWebhookEvent }

      # Issued when a subscription is updated.
      variant -> { Orb::SubscriptionEditedWebhookEvent }

      # Issued whenever a customer's subscription ends/lapses.
      variant -> { Orb::SubscriptionEndedWebhookEvent }

      # Issued when a subscription's fixed fee quantity is updated.
      variant -> { Orb::SubscriptionFixedFeeQuantityUpdatedWebhookEvent }

      # Issued when grouped subscription costs exceed a pre-configured amount threshold.
      variant -> { Orb::SubscriptionGroupedCostExceededWebhookEvent }

      # Issued when a subscription's invoicing threshold is exceeded and an evaluation is performed.
      variant -> { Orb::SubscriptionInvoicingThresholdExceededWebhookEvent }

      # Issued when a license allocation is reset.
      variant -> { Orb::SubscriptionLicenseAllocationResetWebhookEvent }

      # Issued when a license balance threshold is reached.
      variant -> { Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent }

      # Issued when a subscription plan change is scheduled.
      variant -> { Orb::SubscriptionPlanChangeScheduledWebhookEvent }

      # Issued when a subscription transitions from one plan to a different plan.
      variant -> { Orb::SubscriptionPlanChangedWebhookEvent }

      # Issued when a subscription plan version change is scheduled.
      variant -> { Orb::SubscriptionPlanVersionChangeScheduledWebhookEvent }

      # Issued when a subscription plan version has changed.
      variant -> { Orb::SubscriptionPlanVersionChangedWebhookEvent }

      # Issued when a subscription's rated spend, before credits and adjustments, exceeds a pre-configured amount threshold.
      variant -> { Orb::SubscriptionSpendExceededWebhookEvent }

      # Issued when a subscription begins.
      variant -> { Orb::SubscriptionStartedWebhookEvent }

      # Issued when a subscription trial ends.
      variant -> { Orb::SubscriptionTrialEndedWebhookEvent }

      # Issued when a billable metric in a subscription exceeds a pre-configured quantity threshold.
      variant -> { Orb::SubscriptionUsageExceededWebhookEvent }

      # Issued when a transaction accounting sync fails.
      variant -> { Orb::TransactionAccountingSyncFailedWebhookEvent }

      # Issued when a transaction accounting sync succeeds.
      variant -> { Orb::TransactionAccountingSyncSucceededWebhookEvent }

      # @!method self.variants
      #   @return [Array(Orb::Models::BackfillReflectedWebhookEvent, Orb::Models::BackfillRevertedWebhookEvent, Orb::Models::BillableMetricEditedWebhookEvent, Orb::Models::CreditBlockAccountingSyncFailedWebhookEvent, Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent, Orb::Models::CreditNoteAccountingSyncFailedWebhookEvent, Orb::Models::CreditNoteAccountingSyncSucceededWebhookEvent, Orb::Models::CreditNoteIssuedWebhookEvent, Orb::Models::CreditNoteMarkedAsVoidWebhookEvent, Orb::Models::CustomerAccountingSyncFailedWebhookEvent, Orb::Models::CustomerAccountingSyncSucceededWebhookEvent, Orb::Models::CustomerBalanceTransactionCreatedWebhookEvent, Orb::Models::CustomerCreatedWebhookEvent, Orb::Models::CustomerCreditBalanceDepletedWebhookEvent, Orb::Models::CustomerCreditBalanceDroppedWebhookEvent, Orb::Models::CustomerCreditBalanceRecoveredWebhookEvent, Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent, Orb::Models::CustomerEditedWebhookEvent, Orb::Models::DataExportsTransferErrorWebhookEvent, Orb::Models::DataExportsTransferSuccessWebhookEvent, Orb::Models::EventUnmatchedEventWebhookEvent, Orb::Models::IngestionUnmatchedCustomerIDsWebhookEvent, Orb::Models::InvoiceAccountingSyncFailedWebhookEvent, Orb::Models::InvoiceAccountingSyncSucceededWebhookEvent, Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent, Orb::Models::InvoiceCostDataExportedWebhookEvent, Orb::Models::InvoiceDunningScheduleCreatedWebhookEvent, Orb::Models::InvoiceDunningScheduleEndedWebhookEvent, Orb::Models::InvoiceDunningScheduleResetWebhookEvent, Orb::Models::InvoiceDunningScheduleStepExecutedWebhookEvent, Orb::Models::InvoiceEditedWebhookEvent, Orb::Models::InvoiceInvoiceDateElapsedWebhookEvent, Orb::Models::InvoiceIssueFailedWebhookEvent, Orb::Models::InvoiceIssuedWebhookEvent, Orb::Models::InvoiceIssuedSummaryWebhookEvent, Orb::Models::InvoiceManuallyMarkedAsPaidWebhookEvent, Orb::Models::InvoiceManuallyMarkedAsVoidWebhookEvent, Orb::Models::InvoicePaymentFailedWebhookEvent, Orb::Models::InvoicePaymentProcessingWebhookEvent, Orb::Models::InvoicePaymentSucceededWebhookEvent, Orb::Models::InvoiceSyncFailedWebhookEvent, Orb::Models::InvoiceSyncSucceededWebhookEvent, Orb::Models::InvoiceUndoMarkAsPaidWebhookEvent, Orb::Models::InvoiceDueDateRecalculationCanceledWebhookEvent, Orb::Models::InvoiceDueDateRecalculationCompletedWebhookEvent, Orb::Models::InvoiceDueDateRecalculationStartedWebhookEvent, Orb::Models::MetricEventsDroppedByWatermarkWebhookEvent, Orb::Models::PaymentMethodCreatedWebhookEvent, Orb::Models::PaymentMethodDeletedWebhookEvent, Orb::Models::PlanDefaultVersionSetWebhookEvent, Orb::Models::PlanVersionCreatedWebhookEvent, Orb::Models::PriceEditedWebhookEvent, Orb::Models::ResourceEventTestWebhookEvent, Orb::Models::SalesOrderAccountingSyncFailedWebhookEvent, Orb::Models::SalesOrderAccountingSyncSucceededWebhookEvent, Orb::Models::SubscriptionAccountingSyncFailedWebhookEvent, Orb::Models::SubscriptionAccountingSyncSucceededWebhookEvent, Orb::Models::SubscriptionAlertDisabledWebhookEvent, Orb::Models::SubscriptionCancellationScheduledWebhookEvent, Orb::Models::SubscriptionCancellationUnscheduledWebhookEvent, Orb::Models::SubscriptionCostExceededWebhookEvent, Orb::Models::SubscriptionCreatedWebhookEvent, Orb::Models::SubscriptionEditedWebhookEvent, Orb::Models::SubscriptionEndedWebhookEvent, Orb::Models::SubscriptionFixedFeeQuantityUpdatedWebhookEvent, Orb::Models::SubscriptionGroupedCostExceededWebhookEvent, Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent, Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent, Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent, Orb::Models::SubscriptionPlanChangeScheduledWebhookEvent, Orb::Models::SubscriptionPlanChangedWebhookEvent, Orb::Models::SubscriptionPlanVersionChangeScheduledWebhookEvent, Orb::Models::SubscriptionPlanVersionChangedWebhookEvent, Orb::Models::SubscriptionSpendExceededWebhookEvent, Orb::Models::SubscriptionStartedWebhookEvent, Orb::Models::SubscriptionTrialEndedWebhookEvent, Orb::Models::SubscriptionUsageExceededWebhookEvent, Orb::Models::TransactionAccountingSyncFailedWebhookEvent, Orb::Models::TransactionAccountingSyncSucceededWebhookEvent)]
    end
  end
end
