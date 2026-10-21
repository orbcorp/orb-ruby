# typed: strong

module Orb
  module Resources
    class Webhooks
      class Standard
        sig do
          params(payload: String).returns(
            T.any(
              Orb::Webhooks::BackfillReflectedStandardWebhookEvent,
              Orb::Webhooks::BackfillRevertedStandardWebhookEvent,
              Orb::Webhooks::BillableMetricEditedStandardWebhookEvent,
              Orb::Webhooks::CreditBlockAccountingSyncFailedStandardWebhookEvent,
              Orb::Webhooks::CreditBlockAccountingSyncSucceededStandardWebhookEvent,
              Orb::Webhooks::CreditNoteAccountingSyncFailedStandardWebhookEvent,
              Orb::Webhooks::CreditNoteAccountingSyncSucceededStandardWebhookEvent,
              Orb::Webhooks::CreditNoteIssuedStandardWebhookEvent,
              Orb::Webhooks::CreditNoteMarkedAsVoidStandardWebhookEvent,
              Orb::Webhooks::CustomerAccountingSyncFailedStandardWebhookEvent,
              Orb::Webhooks::CustomerAccountingSyncSucceededStandardWebhookEvent,
              Orb::Webhooks::CustomerBalanceTransactionCreatedStandardWebhookEvent,
              Orb::Webhooks::CustomerCreatedStandardWebhookEvent,
              Orb::Webhooks::CustomerCreditBalanceDepletedStandardWebhookEvent,
              Orb::Webhooks::CustomerCreditBalanceDroppedStandardWebhookEvent,
              Orb::Webhooks::CustomerCreditBalanceRecoveredStandardWebhookEvent,
              Orb::Webhooks::CustomerCreditLedgerIncrementedStandardWebhookEvent,
              Orb::Webhooks::CustomerEditedStandardWebhookEvent,
              Orb::Webhooks::DataExportsTransferErrorStandardWebhookEvent,
              Orb::Webhooks::DataExportsTransferSuccessStandardWebhookEvent,
              Orb::Webhooks::EventUnmatchedEventStandardWebhookEvent,
              Orb::Webhooks::IngestionUnmatchedCustomerIDsStandardWebhookEvent,
              Orb::Webhooks::InvoiceAccountingSyncFailedStandardWebhookEvent,
              Orb::Webhooks::InvoiceAccountingSyncSucceededStandardWebhookEvent,
              Orb::Webhooks::InvoiceAutomationScheduleStepExecutedStandardWebhookEvent,
              Orb::Webhooks::InvoiceCostDataExportedStandardWebhookEvent,
              Orb::Webhooks::InvoiceDunningScheduleCreatedStandardWebhookEvent,
              Orb::Webhooks::InvoiceDunningScheduleEndedStandardWebhookEvent,
              Orb::Webhooks::InvoiceDunningScheduleResetStandardWebhookEvent,
              Orb::Webhooks::InvoiceDunningScheduleStepExecutedStandardWebhookEvent,
              Orb::Webhooks::InvoiceEditedStandardWebhookEvent,
              Orb::Webhooks::InvoiceInvoiceDateElapsedStandardWebhookEvent,
              Orb::Webhooks::InvoiceIssueFailedStandardWebhookEvent,
              Orb::Webhooks::InvoiceIssuedStandardWebhookEvent,
              Orb::Webhooks::InvoiceIssuedSummaryStandardWebhookEvent,
              Orb::Webhooks::InvoiceManuallyMarkedAsPaidStandardWebhookEvent,
              Orb::Webhooks::InvoiceManuallyMarkedAsVoidStandardWebhookEvent,
              Orb::Webhooks::InvoicePaymentFailedStandardWebhookEvent,
              Orb::Webhooks::InvoicePaymentProcessingStandardWebhookEvent,
              Orb::Webhooks::InvoicePaymentSucceededStandardWebhookEvent,
              Orb::Webhooks::InvoiceSyncFailedStandardWebhookEvent,
              Orb::Webhooks::InvoiceSyncSucceededStandardWebhookEvent,
              Orb::Webhooks::InvoiceUndoMarkAsPaidStandardWebhookEvent,
              Orb::Webhooks::InvoiceDueDateRecalculationCanceledStandardWebhookEvent,
              Orb::Webhooks::InvoiceDueDateRecalculationCompletedStandardWebhookEvent,
              Orb::Webhooks::InvoiceDueDateRecalculationStartedStandardWebhookEvent,
              Orb::Webhooks::MetricEventsDroppedByWatermarkStandardWebhookEvent,
              Orb::Webhooks::PaymentMethodCreatedStandardWebhookEvent,
              Orb::Webhooks::PaymentMethodDeletedStandardWebhookEvent,
              Orb::Webhooks::PlanCreatedStandardWebhookEvent,
              Orb::Webhooks::PlanDefaultVersionSetStandardWebhookEvent,
              Orb::Webhooks::PlanEditedStandardWebhookEvent,
              Orb::Webhooks::PlanVersionCreatedStandardWebhookEvent,
              Orb::Webhooks::PriceEditedStandardWebhookEvent,
              Orb::Webhooks::ResourceEventTestStandardWebhookEvent,
              Orb::Webhooks::SalesOrderAccountingSyncFailedStandardWebhookEvent,
              Orb::Webhooks::SalesOrderAccountingSyncSucceededStandardWebhookEvent,
              Orb::Webhooks::SubscriptionAccountingSyncFailedStandardWebhookEvent,
              Orb::Webhooks::SubscriptionAccountingSyncSucceededStandardWebhookEvent,
              Orb::Webhooks::SubscriptionAlertDisabledStandardWebhookEvent,
              Orb::Webhooks::SubscriptionCancellationScheduledStandardWebhookEvent,
              Orb::Webhooks::SubscriptionCancellationUnscheduledStandardWebhookEvent,
              Orb::Webhooks::SubscriptionCostExceededStandardWebhookEvent,
              Orb::Webhooks::SubscriptionCreatedStandardWebhookEvent,
              Orb::Webhooks::SubscriptionEditedStandardWebhookEvent,
              Orb::Webhooks::SubscriptionEndedStandardWebhookEvent,
              Orb::Webhooks::SubscriptionFixedFeeQuantityUpdatedStandardWebhookEvent,
              Orb::Webhooks::SubscriptionGroupedCostExceededStandardWebhookEvent,
              Orb::Webhooks::SubscriptionInvoicingThresholdExceededStandardWebhookEvent,
              Orb::Webhooks::SubscriptionLicenseAllocationResetStandardWebhookEvent,
              Orb::Webhooks::SubscriptionLicenseBalanceThresholdReachedStandardWebhookEvent,
              Orb::Webhooks::SubscriptionPlanChangeScheduledStandardWebhookEvent,
              Orb::Webhooks::SubscriptionPlanChangedStandardWebhookEvent,
              Orb::Webhooks::SubscriptionPlanVersionChangeScheduledStandardWebhookEvent,
              Orb::Webhooks::SubscriptionPlanVersionChangedStandardWebhookEvent,
              Orb::Webhooks::SubscriptionSpendExceededStandardWebhookEvent,
              Orb::Webhooks::SubscriptionStartedStandardWebhookEvent,
              Orb::Webhooks::SubscriptionTrialEndedStandardWebhookEvent,
              Orb::Webhooks::SubscriptionUsageExceededStandardWebhookEvent,
              Orb::Webhooks::TransactionAccountingSyncFailedStandardWebhookEvent,
              Orb::Webhooks::TransactionAccountingSyncSucceededStandardWebhookEvent
            )
          )
        end
        def unwrap_standard(
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
end
