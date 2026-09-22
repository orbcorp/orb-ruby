# typed: strong

module Orb
  module Resources
    class Webhooks
      sig do
        params(payload: String).returns(
          T.any(
            Orb::BackfillReflectedWebhookEvent,
            Orb::BackfillRevertedWebhookEvent,
            Orb::BillableMetricEditedWebhookEvent,
            Orb::CreditBlockAccountingSyncFailedWebhookEvent,
            Orb::CreditBlockAccountingSyncSucceededWebhookEvent,
            Orb::CreditNoteAccountingSyncFailedWebhookEvent,
            Orb::CreditNoteAccountingSyncSucceededWebhookEvent,
            Orb::CreditNoteIssuedWebhookEvent,
            Orb::CreditNoteMarkedAsVoidWebhookEvent,
            Orb::CustomerAccountingSyncFailedWebhookEvent,
            Orb::CustomerAccountingSyncSucceededWebhookEvent,
            Orb::CustomerBalanceTransactionCreatedWebhookEvent,
            Orb::CustomerCreatedWebhookEvent,
            Orb::CustomerCreditBalanceDepletedWebhookEvent,
            Orb::CustomerCreditBalanceDroppedWebhookEvent,
            Orb::CustomerCreditBalanceRecoveredWebhookEvent,
            Orb::CustomerCreditLedgerIncrementedWebhookEvent,
            Orb::CustomerEditedWebhookEvent,
            Orb::DataExportsTransferErrorWebhookEvent,
            Orb::DataExportsTransferSuccessWebhookEvent,
            Orb::EventUnmatchedEventWebhookEvent,
            Orb::IngestionUnmatchedCustomerIDsWebhookEvent,
            Orb::InvoiceAccountingSyncFailedWebhookEvent,
            Orb::InvoiceAccountingSyncSucceededWebhookEvent,
            Orb::InvoiceAutomationScheduleStepExecutedWebhookEvent,
            Orb::InvoiceCostDataExportedWebhookEvent,
            Orb::InvoiceDunningScheduleCreatedWebhookEvent,
            Orb::InvoiceDunningScheduleEndedWebhookEvent,
            Orb::InvoiceDunningScheduleResetWebhookEvent,
            Orb::InvoiceDunningScheduleStepExecutedWebhookEvent,
            Orb::InvoiceEditedWebhookEvent,
            Orb::InvoiceInvoiceDateElapsedWebhookEvent,
            Orb::InvoiceIssueFailedWebhookEvent,
            Orb::InvoiceIssuedWebhookEvent,
            Orb::InvoiceIssuedSummaryWebhookEvent,
            Orb::InvoiceManuallyMarkedAsPaidWebhookEvent,
            Orb::InvoiceManuallyMarkedAsVoidWebhookEvent,
            Orb::InvoicePaymentFailedWebhookEvent,
            Orb::InvoicePaymentProcessingWebhookEvent,
            Orb::InvoicePaymentSucceededWebhookEvent,
            Orb::InvoiceSyncFailedWebhookEvent,
            Orb::InvoiceSyncSucceededWebhookEvent,
            Orb::InvoiceUndoMarkAsPaidWebhookEvent,
            Orb::InvoiceDueDateRecalculationCanceledWebhookEvent,
            Orb::InvoiceDueDateRecalculationCompletedWebhookEvent,
            Orb::InvoiceDueDateRecalculationStartedWebhookEvent,
            Orb::MetricEventsDroppedByWatermarkWebhookEvent,
            Orb::PaymentMethodCreatedWebhookEvent,
            Orb::PaymentMethodDeletedWebhookEvent,
            Orb::PlanDefaultVersionSetWebhookEvent,
            Orb::PlanVersionCreatedWebhookEvent,
            Orb::PriceEditedWebhookEvent,
            Orb::ResourceEventTestWebhookEvent,
            Orb::SalesOrderAccountingSyncFailedWebhookEvent,
            Orb::SalesOrderAccountingSyncSucceededWebhookEvent,
            Orb::SubscriptionAccountingSyncFailedWebhookEvent,
            Orb::SubscriptionAccountingSyncSucceededWebhookEvent,
            Orb::SubscriptionAlertDisabledWebhookEvent,
            Orb::SubscriptionCancellationScheduledWebhookEvent,
            Orb::SubscriptionCancellationUnscheduledWebhookEvent,
            Orb::SubscriptionCostExceededWebhookEvent,
            Orb::SubscriptionCreatedWebhookEvent,
            Orb::SubscriptionEditedWebhookEvent,
            Orb::SubscriptionEndedWebhookEvent,
            Orb::SubscriptionFixedFeeQuantityUpdatedWebhookEvent,
            Orb::SubscriptionGroupedCostExceededWebhookEvent,
            Orb::SubscriptionInvoicingThresholdExceededWebhookEvent,
            Orb::SubscriptionLicenseAllocationResetWebhookEvent,
            Orb::SubscriptionLicenseBalanceThresholdReachedWebhookEvent,
            Orb::SubscriptionPlanChangeScheduledWebhookEvent,
            Orb::SubscriptionPlanChangedWebhookEvent,
            Orb::SubscriptionPlanVersionChangeScheduledWebhookEvent,
            Orb::SubscriptionPlanVersionChangedWebhookEvent,
            Orb::SubscriptionSpendExceededWebhookEvent,
            Orb::SubscriptionStartedWebhookEvent,
            Orb::SubscriptionTrialEndedWebhookEvent,
            Orb::SubscriptionUsageExceededWebhookEvent,
            Orb::TransactionAccountingSyncFailedWebhookEvent,
            Orb::TransactionAccountingSyncSucceededWebhookEvent
          )
        )
      end
      def unwrap(
        # The raw webhook payload as a string
        payload
      )
      end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
