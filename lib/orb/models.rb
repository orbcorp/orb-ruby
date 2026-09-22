# frozen_string_literal: true

module Orb
  [Orb::Internal::Type::BaseModel, *Orb::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Orb::Internal::AnyHash) } }
  end

  Orb::Internal::Util.walk_namespaces(Orb::Models).each do |mod|
    case mod
    in Orb::Internal::Type::Enum | Orb::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T::Boolean } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { Integer } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { Float } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { Symbol } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Orb::Internal::Util.walk_namespaces(Orb::Models)
                     .lazy
                     .grep(Orb::Internal::Type::Union)
                     .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  AccountingProviderConfig = Orb::Models::AccountingProviderConfig

  Address = Orb::Models::Address

  AddressInput = Orb::Models::AddressInput

  AdjustmentInterval = Orb::Models::AdjustmentInterval

  AggregatedCost = Orb::Models::AggregatedCost

  Alert = Orb::Models::Alert

  AlertCreateForCustomerParams = Orb::Models::AlertCreateForCustomerParams

  AlertCreateForExternalCustomerParams = Orb::Models::AlertCreateForExternalCustomerParams

  AlertCreateForSubscriptionParams = Orb::Models::AlertCreateForSubscriptionParams

  AlertDeleteParams = Orb::Models::AlertDeleteParams

  AlertDisableParams = Orb::Models::AlertDisableParams

  AlertEnableParams = Orb::Models::AlertEnableParams

  AlertListParams = Orb::Models::AlertListParams

  AlertRetrieveParams = Orb::Models::AlertRetrieveParams

  AlertUpdateParams = Orb::Models::AlertUpdateParams

  Allocation = Orb::Models::Allocation

  AmountDiscount = Orb::Models::AmountDiscount

  AmountDiscountInterval = Orb::Models::AmountDiscountInterval

  BackfillReflectedWebhookEvent = Orb::Models::BackfillReflectedWebhookEvent

  BackfillRevertedWebhookEvent = Orb::Models::BackfillRevertedWebhookEvent

  Beta = Orb::Models::Beta

  BetaCreatePlanVersionParams = Orb::Models::BetaCreatePlanVersionParams

  BetaFetchPlanVersionParams = Orb::Models::BetaFetchPlanVersionParams

  BetaSetDefaultPlanVersionParams = Orb::Models::BetaSetDefaultPlanVersionParams

  BillableMetric = Orb::Models::BillableMetric

  BillableMetricEditedWebhookEvent = Orb::Models::BillableMetricEditedWebhookEvent

  BillableMetricTiny = Orb::Models::BillableMetricTiny

  BillingCycleAnchorConfiguration = Orb::Models::BillingCycleAnchorConfiguration

  BillingCycleConfiguration = Orb::Models::BillingCycleConfiguration

  BillingCycleRelativeDate = Orb::Models::BillingCycleRelativeDate

  BulkConfig = Orb::Models::BulkConfig

  BulkTier = Orb::Models::BulkTier

  ChangedSubscriptionResources = Orb::Models::ChangedSubscriptionResources

  ConversionRateConfig = Orb::Models::ConversionRateConfig

  ConversionRateTier = Orb::Models::ConversionRateTier

  ConversionRateTieredConfig = Orb::Models::ConversionRateTieredConfig

  ConversionRateUnitConfig = Orb::Models::ConversionRateUnitConfig

  Coupon = Orb::Models::Coupon

  CouponArchiveParams = Orb::Models::CouponArchiveParams

  CouponCreateParams = Orb::Models::CouponCreateParams

  CouponFetchParams = Orb::Models::CouponFetchParams

  CouponListParams = Orb::Models::CouponListParams

  CouponRedemption = Orb::Models::CouponRedemption

  Coupons = Orb::Models::Coupons

  CreditBlockAccountingSyncFailedWebhookEvent = Orb::Models::CreditBlockAccountingSyncFailedWebhookEvent

  CreditBlockAccountingSyncSucceededWebhookEvent =
    Orb::Models::CreditBlockAccountingSyncSucceededWebhookEvent

  CreditBlockDeleteParams = Orb::Models::CreditBlockDeleteParams

  CreditBlockListInvoicesParams = Orb::Models::CreditBlockListInvoicesParams

  CreditBlockRetrieveParams = Orb::Models::CreditBlockRetrieveParams

  CreditNote = Orb::Models::CreditNote

  CreditNoteAccountingSyncFailedWebhookEvent = Orb::Models::CreditNoteAccountingSyncFailedWebhookEvent

  CreditNoteAccountingSyncSucceededWebhookEvent =
    Orb::Models::CreditNoteAccountingSyncSucceededWebhookEvent

  CreditNoteCreateParams = Orb::Models::CreditNoteCreateParams

  CreditNoteFetchParams = Orb::Models::CreditNoteFetchParams

  CreditNoteIssuedWebhookEvent = Orb::Models::CreditNoteIssuedWebhookEvent

  CreditNoteListParams = Orb::Models::CreditNoteListParams

  CreditNoteMarkedAsVoidWebhookEvent = Orb::Models::CreditNoteMarkedAsVoidWebhookEvent

  CreditNoteTiny = Orb::Models::CreditNoteTiny

  Customer = Orb::Models::Customer

  CustomerAccountingSyncFailedWebhookEvent = Orb::Models::CustomerAccountingSyncFailedWebhookEvent

  CustomerAccountingSyncSucceededWebhookEvent = Orb::Models::CustomerAccountingSyncSucceededWebhookEvent

  CustomerBalanceTransactionCreatedWebhookEvent =
    Orb::Models::CustomerBalanceTransactionCreatedWebhookEvent

  CustomerCreatedWebhookEvent = Orb::Models::CustomerCreatedWebhookEvent

  CustomerCreateParams = Orb::Models::CustomerCreateParams

  CustomerCreatePortalSessionByExternalIDParams =
    Orb::Models::CustomerCreatePortalSessionByExternalIDParams

  CustomerCreatePortalSessionParams = Orb::Models::CustomerCreatePortalSessionParams

  CustomerCreditBalanceDepletedWebhookEvent = Orb::Models::CustomerCreditBalanceDepletedWebhookEvent

  CustomerCreditBalanceDroppedWebhookEvent = Orb::Models::CustomerCreditBalanceDroppedWebhookEvent

  CustomerCreditBalanceRecoveredWebhookEvent = Orb::Models::CustomerCreditBalanceRecoveredWebhookEvent

  CustomerCreditLedgerIncrementedWebhookEvent = Orb::Models::CustomerCreditLedgerIncrementedWebhookEvent

  CustomerDeleteParams = Orb::Models::CustomerDeleteParams

  CustomerEditedWebhookEvent = Orb::Models::CustomerEditedWebhookEvent

  CustomerFetchByExternalIDParams = Orb::Models::CustomerFetchByExternalIDParams

  CustomerFetchParams = Orb::Models::CustomerFetchParams

  CustomerHierarchyConfig = Orb::Models::CustomerHierarchyConfig

  CustomerListParams = Orb::Models::CustomerListParams

  CustomerMinified = Orb::Models::CustomerMinified

  Customers = Orb::Models::Customers

  CustomerSyncPaymentMethodsFromGatewayByExternalCustomerIDParams =
    Orb::Models::CustomerSyncPaymentMethodsFromGatewayByExternalCustomerIDParams

  CustomerSyncPaymentMethodsFromGatewayParams = Orb::Models::CustomerSyncPaymentMethodsFromGatewayParams

  CustomerTaxID = Orb::Models::CustomerTaxID

  CustomerUpdateByExternalIDParams = Orb::Models::CustomerUpdateByExternalIDParams

  CustomerUpdateParams = Orb::Models::CustomerUpdateParams

  CustomExpiration = Orb::Models::CustomExpiration

  DataExportsTransferErrorWebhookEvent = Orb::Models::DataExportsTransferErrorWebhookEvent

  DataExportsTransferSuccessWebhookEvent = Orb::Models::DataExportsTransferSuccessWebhookEvent

  DimensionalPriceConfiguration = Orb::Models::DimensionalPriceConfiguration

  DimensionalPriceGroup = Orb::Models::DimensionalPriceGroup

  DimensionalPriceGroupCreateParams = Orb::Models::DimensionalPriceGroupCreateParams

  DimensionalPriceGroupListParams = Orb::Models::DimensionalPriceGroupListParams

  DimensionalPriceGroupRetrieveParams = Orb::Models::DimensionalPriceGroupRetrieveParams

  DimensionalPriceGroups = Orb::Models::DimensionalPriceGroups

  DimensionalPriceGroupsAPI = Orb::Models::DimensionalPriceGroupsAPI

  DimensionalPriceGroupUpdateParams = Orb::Models::DimensionalPriceGroupUpdateParams

  Discount = Orb::Models::Discount

  DiscountOverride = Orb::Models::DiscountOverride

  EvaluatePriceGroup = Orb::Models::EvaluatePriceGroup

  EventDeprecateParams = Orb::Models::EventDeprecateParams

  EventIngestParams = Orb::Models::EventIngestParams

  Events = Orb::Models::Events

  EventSearchParams = Orb::Models::EventSearchParams

  EventUnmatchedEventWebhookEvent = Orb::Models::EventUnmatchedEventWebhookEvent

  EventUpdateParams = Orb::Models::EventUpdateParams

  FixedFeeQuantityScheduleEntry = Orb::Models::FixedFeeQuantityScheduleEntry

  FixedFeeQuantityTransition = Orb::Models::FixedFeeQuantityTransition

  IngestionUnmatchedCustomerIDsWebhookEvent = Orb::Models::IngestionUnmatchedCustomerIDsWebhookEvent

  Invoice = Orb::Models::Invoice

  InvoiceAccountingSyncFailedWebhookEvent = Orb::Models::InvoiceAccountingSyncFailedWebhookEvent

  InvoiceAccountingSyncSucceededWebhookEvent = Orb::Models::InvoiceAccountingSyncSucceededWebhookEvent

  InvoiceAutomationScheduleStepExecutedWebhookEvent =
    Orb::Models::InvoiceAutomationScheduleStepExecutedWebhookEvent

  InvoiceCostDataExportedWebhookEvent = Orb::Models::InvoiceCostDataExportedWebhookEvent

  InvoiceCreateParams = Orb::Models::InvoiceCreateParams

  InvoiceDeleteLineItemParams = Orb::Models::InvoiceDeleteLineItemParams

  InvoiceDueDateRecalculationCanceledWebhookEvent =
    Orb::Models::InvoiceDueDateRecalculationCanceledWebhookEvent

  InvoiceDueDateRecalculationCompletedWebhookEvent =
    Orb::Models::InvoiceDueDateRecalculationCompletedWebhookEvent

  InvoiceDueDateRecalculationStartedWebhookEvent =
    Orb::Models::InvoiceDueDateRecalculationStartedWebhookEvent

  InvoiceDunningScheduleCreatedWebhookEvent = Orb::Models::InvoiceDunningScheduleCreatedWebhookEvent

  InvoiceDunningScheduleEndedWebhookEvent = Orb::Models::InvoiceDunningScheduleEndedWebhookEvent

  InvoiceDunningScheduleResetWebhookEvent = Orb::Models::InvoiceDunningScheduleResetWebhookEvent

  InvoiceDunningScheduleStepExecutedWebhookEvent =
    Orb::Models::InvoiceDunningScheduleStepExecutedWebhookEvent

  InvoiceEditedWebhookEvent = Orb::Models::InvoiceEditedWebhookEvent

  InvoiceFetchParams = Orb::Models::InvoiceFetchParams

  InvoiceFetchUpcomingParams = Orb::Models::InvoiceFetchUpcomingParams

  InvoiceInvoiceDateElapsedWebhookEvent = Orb::Models::InvoiceInvoiceDateElapsedWebhookEvent

  InvoiceIssuedSummaryWebhookEvent = Orb::Models::InvoiceIssuedSummaryWebhookEvent

  InvoiceIssuedWebhookEvent = Orb::Models::InvoiceIssuedWebhookEvent

  InvoiceIssueFailedWebhookEvent = Orb::Models::InvoiceIssueFailedWebhookEvent

  InvoiceIssueParams = Orb::Models::InvoiceIssueParams

  InvoiceIssueSummaryParams = Orb::Models::InvoiceIssueSummaryParams

  InvoiceLevelDiscount = Orb::Models::InvoiceLevelDiscount

  InvoiceLineItemCreateParams = Orb::Models::InvoiceLineItemCreateParams

  InvoiceListParams = Orb::Models::InvoiceListParams

  InvoiceListSummaryParams = Orb::Models::InvoiceListSummaryParams

  InvoiceManuallyMarkedAsPaidWebhookEvent = Orb::Models::InvoiceManuallyMarkedAsPaidWebhookEvent

  InvoiceManuallyMarkedAsVoidWebhookEvent = Orb::Models::InvoiceManuallyMarkedAsVoidWebhookEvent

  InvoiceMarkPaidParams = Orb::Models::InvoiceMarkPaidParams

  InvoicePaymentFailedWebhookEvent = Orb::Models::InvoicePaymentFailedWebhookEvent

  InvoicePaymentProcessingWebhookEvent = Orb::Models::InvoicePaymentProcessingWebhookEvent

  InvoicePaymentSucceededWebhookEvent = Orb::Models::InvoicePaymentSucceededWebhookEvent

  InvoicePayParams = Orb::Models::InvoicePayParams

  InvoiceRegenerateInvoicePdfParams = Orb::Models::InvoiceRegenerateInvoicePdfParams

  InvoiceRegenerateReceiptPdfParams = Orb::Models::InvoiceRegenerateReceiptPdfParams

  InvoiceSyncFailedWebhookEvent = Orb::Models::InvoiceSyncFailedWebhookEvent

  InvoiceSyncSucceededWebhookEvent = Orb::Models::InvoiceSyncSucceededWebhookEvent

  InvoiceTiny = Orb::Models::InvoiceTiny

  InvoiceUndoMarkAsPaidWebhookEvent = Orb::Models::InvoiceUndoMarkAsPaidWebhookEvent

  InvoiceUpdateParams = Orb::Models::InvoiceUpdateParams

  InvoiceVoidParams = Orb::Models::InvoiceVoidParams

  Item = Orb::Models::Item

  ItemArchiveParams = Orb::Models::ItemArchiveParams

  ItemCreateParams = Orb::Models::ItemCreateParams

  ItemFetchParams = Orb::Models::ItemFetchParams

  ItemListParams = Orb::Models::ItemListParams

  ItemSlim = Orb::Models::ItemSlim

  ItemUpdateParams = Orb::Models::ItemUpdateParams

  LicenseCreateParams = Orb::Models::LicenseCreateParams

  LicenseDeactivateParams = Orb::Models::LicenseDeactivateParams

  LicenseListParams = Orb::Models::LicenseListParams

  LicenseRetrieveByExternalIDParams = Orb::Models::LicenseRetrieveByExternalIDParams

  LicenseRetrieveParams = Orb::Models::LicenseRetrieveParams

  Licenses = Orb::Models::Licenses

  LicenseTypeCreateParams = Orb::Models::LicenseTypeCreateParams

  LicenseTypeListParams = Orb::Models::LicenseTypeListParams

  LicenseTypeRetrieveParams = Orb::Models::LicenseTypeRetrieveParams

  MatrixConfig = Orb::Models::MatrixConfig

  MatrixSubLineItem = Orb::Models::MatrixSubLineItem

  MatrixValue = Orb::Models::MatrixValue

  MatrixWithAllocationConfig = Orb::Models::MatrixWithAllocationConfig

  Maximum = Orb::Models::Maximum

  MaximumInterval = Orb::Models::MaximumInterval

  MetricCreateParams = Orb::Models::MetricCreateParams

  MetricEventsDroppedByWatermarkWebhookEvent = Orb::Models::MetricEventsDroppedByWatermarkWebhookEvent

  MetricFetchParams = Orb::Models::MetricFetchParams

  MetricListParams = Orb::Models::MetricListParams

  MetricUpdateParams = Orb::Models::MetricUpdateParams

  Minimum = Orb::Models::Minimum

  MinimumInterval = Orb::Models::MinimumInterval

  MonetaryAmountDiscountAdjustment = Orb::Models::MonetaryAmountDiscountAdjustment

  MonetaryMaximumAdjustment = Orb::Models::MonetaryMaximumAdjustment

  MonetaryMinimumAdjustment = Orb::Models::MonetaryMinimumAdjustment

  MonetaryPercentageDiscountAdjustment = Orb::Models::MonetaryPercentageDiscountAdjustment

  MonetaryUsageDiscountAdjustment = Orb::Models::MonetaryUsageDiscountAdjustment

  MutatedSubscription = Orb::Models::MutatedSubscription

  NewAccountingSyncConfiguration = Orb::Models::NewAccountingSyncConfiguration

  NewAllocationPrice = Orb::Models::NewAllocationPrice

  NewAmountDiscount = Orb::Models::NewAmountDiscount

  NewAvalaraTaxConfiguration = Orb::Models::NewAvalaraTaxConfiguration

  NewBillingCycleConfiguration = Orb::Models::NewBillingCycleConfiguration

  NewDimensionalPriceConfiguration = Orb::Models::NewDimensionalPriceConfiguration

  NewFloatingBulkPrice = Orb::Models::NewFloatingBulkPrice

  NewFloatingBulkWithProrationPrice = Orb::Models::NewFloatingBulkWithProrationPrice

  NewFloatingCumulativeGroupedBulkPrice = Orb::Models::NewFloatingCumulativeGroupedBulkPrice

  NewFloatingGroupedAllocationPrice = Orb::Models::NewFloatingGroupedAllocationPrice

  NewFloatingGroupedTieredPackagePrice = Orb::Models::NewFloatingGroupedTieredPackagePrice

  NewFloatingGroupedTieredPrice = Orb::Models::NewFloatingGroupedTieredPrice

  NewFloatingGroupedWithMeteredMinimumPrice = Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice

  NewFloatingGroupedWithProratedMinimumPrice = Orb::Models::NewFloatingGroupedWithProratedMinimumPrice

  NewFloatingMatrixPrice = Orb::Models::NewFloatingMatrixPrice

  NewFloatingMatrixWithAllocationPrice = Orb::Models::NewFloatingMatrixWithAllocationPrice

  NewFloatingMatrixWithDisplayNamePrice = Orb::Models::NewFloatingMatrixWithDisplayNamePrice

  NewFloatingMaxGroupTieredPackagePrice = Orb::Models::NewFloatingMaxGroupTieredPackagePrice

  NewFloatingMinimumCompositePrice = Orb::Models::NewFloatingMinimumCompositePrice

  NewFloatingPackagePrice = Orb::Models::NewFloatingPackagePrice

  NewFloatingPackageWithAllocationPrice = Orb::Models::NewFloatingPackageWithAllocationPrice

  NewFloatingScalableMatrixWithTieredPricingPrice =
    Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice

  NewFloatingScalableMatrixWithUnitPricingPrice =
    Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice

  NewFloatingThresholdTotalAmountPrice = Orb::Models::NewFloatingThresholdTotalAmountPrice

  NewFloatingTieredPackagePrice = Orb::Models::NewFloatingTieredPackagePrice

  NewFloatingTieredPackageWithMinimumPrice = Orb::Models::NewFloatingTieredPackageWithMinimumPrice

  NewFloatingTieredPrice = Orb::Models::NewFloatingTieredPrice

  NewFloatingTieredWithMinimumPrice = Orb::Models::NewFloatingTieredWithMinimumPrice

  NewFloatingTieredWithProrationPrice = Orb::Models::NewFloatingTieredWithProrationPrice

  NewFloatingUnitPrice = Orb::Models::NewFloatingUnitPrice

  NewFloatingUnitWithPercentPrice = Orb::Models::NewFloatingUnitWithPercentPrice

  NewFloatingUnitWithProrationPrice = Orb::Models::NewFloatingUnitWithProrationPrice

  NewMaximum = Orb::Models::NewMaximum

  NewMinimum = Orb::Models::NewMinimum

  NewPercentageDiscount = Orb::Models::NewPercentageDiscount

  NewPlanBulkPrice = Orb::Models::NewPlanBulkPrice

  NewPlanBulkWithProrationPrice = Orb::Models::NewPlanBulkWithProrationPrice

  NewPlanCumulativeGroupedBulkPrice = Orb::Models::NewPlanCumulativeGroupedBulkPrice

  NewPlanGroupedAllocationPrice = Orb::Models::NewPlanGroupedAllocationPrice

  NewPlanGroupedTieredPackagePrice = Orb::Models::NewPlanGroupedTieredPackagePrice

  NewPlanGroupedTieredPrice = Orb::Models::NewPlanGroupedTieredPrice

  NewPlanGroupedWithMeteredMinimumPrice = Orb::Models::NewPlanGroupedWithMeteredMinimumPrice

  NewPlanGroupedWithProratedMinimumPrice = Orb::Models::NewPlanGroupedWithProratedMinimumPrice

  NewPlanMatrixPrice = Orb::Models::NewPlanMatrixPrice

  NewPlanMatrixWithAllocationPrice = Orb::Models::NewPlanMatrixWithAllocationPrice

  NewPlanMatrixWithDisplayNamePrice = Orb::Models::NewPlanMatrixWithDisplayNamePrice

  NewPlanMaxGroupTieredPackagePrice = Orb::Models::NewPlanMaxGroupTieredPackagePrice

  NewPlanMinimumCompositePrice = Orb::Models::NewPlanMinimumCompositePrice

  NewPlanPackagePrice = Orb::Models::NewPlanPackagePrice

  NewPlanPackageWithAllocationPrice = Orb::Models::NewPlanPackageWithAllocationPrice

  NewPlanScalableMatrixWithTieredPricingPrice = Orb::Models::NewPlanScalableMatrixWithTieredPricingPrice

  NewPlanScalableMatrixWithUnitPricingPrice = Orb::Models::NewPlanScalableMatrixWithUnitPricingPrice

  NewPlanThresholdTotalAmountPrice = Orb::Models::NewPlanThresholdTotalAmountPrice

  NewPlanTieredPackagePrice = Orb::Models::NewPlanTieredPackagePrice

  NewPlanTieredPackageWithMinimumPrice = Orb::Models::NewPlanTieredPackageWithMinimumPrice

  NewPlanTieredPrice = Orb::Models::NewPlanTieredPrice

  NewPlanTieredWithMinimumPrice = Orb::Models::NewPlanTieredWithMinimumPrice

  NewPlanUnitPrice = Orb::Models::NewPlanUnitPrice

  NewPlanUnitWithPercentPrice = Orb::Models::NewPlanUnitWithPercentPrice

  NewPlanUnitWithProrationPrice = Orb::Models::NewPlanUnitWithProrationPrice

  NewReportingConfiguration = Orb::Models::NewReportingConfiguration

  NewSphereConfiguration = Orb::Models::NewSphereConfiguration

  NewSubscriptionBulkPrice = Orb::Models::NewSubscriptionBulkPrice

  NewSubscriptionBulkWithProrationPrice = Orb::Models::NewSubscriptionBulkWithProrationPrice

  NewSubscriptionCumulativeGroupedBulkPrice = Orb::Models::NewSubscriptionCumulativeGroupedBulkPrice

  NewSubscriptionGroupedAllocationPrice = Orb::Models::NewSubscriptionGroupedAllocationPrice

  NewSubscriptionGroupedTieredPackagePrice = Orb::Models::NewSubscriptionGroupedTieredPackagePrice

  NewSubscriptionGroupedTieredPrice = Orb::Models::NewSubscriptionGroupedTieredPrice

  NewSubscriptionGroupedWithMeteredMinimumPrice =
    Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice

  NewSubscriptionGroupedWithProratedMinimumPrice =
    Orb::Models::NewSubscriptionGroupedWithProratedMinimumPrice

  NewSubscriptionMatrixPrice = Orb::Models::NewSubscriptionMatrixPrice

  NewSubscriptionMatrixWithAllocationPrice = Orb::Models::NewSubscriptionMatrixWithAllocationPrice

  NewSubscriptionMatrixWithDisplayNamePrice = Orb::Models::NewSubscriptionMatrixWithDisplayNamePrice

  NewSubscriptionMaxGroupTieredPackagePrice = Orb::Models::NewSubscriptionMaxGroupTieredPackagePrice

  NewSubscriptionMinimumCompositePrice = Orb::Models::NewSubscriptionMinimumCompositePrice

  NewSubscriptionPackagePrice = Orb::Models::NewSubscriptionPackagePrice

  NewSubscriptionPackageWithAllocationPrice = Orb::Models::NewSubscriptionPackageWithAllocationPrice

  NewSubscriptionScalableMatrixWithTieredPricingPrice =
    Orb::Models::NewSubscriptionScalableMatrixWithTieredPricingPrice

  NewSubscriptionScalableMatrixWithUnitPricingPrice =
    Orb::Models::NewSubscriptionScalableMatrixWithUnitPricingPrice

  NewSubscriptionThresholdTotalAmountPrice = Orb::Models::NewSubscriptionThresholdTotalAmountPrice

  NewSubscriptionTieredPackagePrice = Orb::Models::NewSubscriptionTieredPackagePrice

  NewSubscriptionTieredPackageWithMinimumPrice = Orb::Models::NewSubscriptionTieredPackageWithMinimumPrice

  NewSubscriptionTieredPrice = Orb::Models::NewSubscriptionTieredPrice

  NewSubscriptionTieredWithMinimumPrice = Orb::Models::NewSubscriptionTieredWithMinimumPrice

  NewSubscriptionUnitPrice = Orb::Models::NewSubscriptionUnitPrice

  NewSubscriptionUnitWithPercentPrice = Orb::Models::NewSubscriptionUnitWithPercentPrice

  NewSubscriptionUnitWithProrationPrice = Orb::Models::NewSubscriptionUnitWithProrationPrice

  NewTaxJarConfiguration = Orb::Models::NewTaxJarConfiguration

  NewUsageDiscount = Orb::Models::NewUsageDiscount

  OtherSubLineItem = Orb::Models::OtherSubLineItem

  PackageConfig = Orb::Models::PackageConfig

  PaginationMetadata = Orb::Models::PaginationMetadata

  PaymentMethodCreatedWebhookEvent = Orb::Models::PaymentMethodCreatedWebhookEvent

  PaymentMethodDeletedWebhookEvent = Orb::Models::PaymentMethodDeletedWebhookEvent

  PercentageDiscount = Orb::Models::PercentageDiscount

  PercentageDiscountInterval = Orb::Models::PercentageDiscountInterval

  PerPriceCost = Orb::Models::PerPriceCost

  Plan = Orb::Models::Plan

  PlanCreateParams = Orb::Models::PlanCreateParams

  PlanDefaultVersionSetWebhookEvent = Orb::Models::PlanDefaultVersionSetWebhookEvent

  PlanFetchParams = Orb::Models::PlanFetchParams

  PlanListParams = Orb::Models::PlanListParams

  PlanPhaseAmountDiscountAdjustment = Orb::Models::PlanPhaseAmountDiscountAdjustment

  PlanPhaseMaximumAdjustment = Orb::Models::PlanPhaseMaximumAdjustment

  PlanPhaseMinimumAdjustment = Orb::Models::PlanPhaseMinimumAdjustment

  PlanPhasePercentageDiscountAdjustment = Orb::Models::PlanPhasePercentageDiscountAdjustment

  PlanPhaseUsageDiscountAdjustment = Orb::Models::PlanPhaseUsageDiscountAdjustment

  Plans = Orb::Models::Plans

  PlanUpdateParams = Orb::Models::PlanUpdateParams

  PlanVersion = Orb::Models::PlanVersion

  PlanVersionCreatedWebhookEvent = Orb::Models::PlanVersionCreatedWebhookEvent

  PlanVersionPhase = Orb::Models::PlanVersionPhase

  Price = Orb::Models::Price

  PriceCreateParams = Orb::Models::PriceCreateParams

  PriceEditedWebhookEvent = Orb::Models::PriceEditedWebhookEvent

  PriceEvaluateMultipleParams = Orb::Models::PriceEvaluateMultipleParams

  PriceEvaluateParams = Orb::Models::PriceEvaluateParams

  PriceEvaluatePreviewEventsParams = Orb::Models::PriceEvaluatePreviewEventsParams

  PriceFetchParams = Orb::Models::PriceFetchParams

  PriceInterval = Orb::Models::PriceInterval

  PriceListParams = Orb::Models::PriceListParams

  Prices = Orb::Models::Prices

  PriceUpdateParams = Orb::Models::PriceUpdateParams

  ResourceEventTestWebhookEvent = Orb::Models::ResourceEventTestWebhookEvent

  SalesOrderAccountingSyncFailedWebhookEvent = Orb::Models::SalesOrderAccountingSyncFailedWebhookEvent

  SalesOrderAccountingSyncSucceededWebhookEvent =
    Orb::Models::SalesOrderAccountingSyncSucceededWebhookEvent

  SubLineItemGrouping = Orb::Models::SubLineItemGrouping

  SubLineItemMatrixConfig = Orb::Models::SubLineItemMatrixConfig

  Subscription = Orb::Models::Subscription

  SubscriptionAccountingSyncFailedWebhookEvent = Orb::Models::SubscriptionAccountingSyncFailedWebhookEvent

  SubscriptionAccountingSyncSucceededWebhookEvent =
    Orb::Models::SubscriptionAccountingSyncSucceededWebhookEvent

  SubscriptionAlertDisabledWebhookEvent = Orb::Models::SubscriptionAlertDisabledWebhookEvent

  SubscriptionCancellationScheduledWebhookEvent =
    Orb::Models::SubscriptionCancellationScheduledWebhookEvent

  SubscriptionCancellationUnscheduledWebhookEvent =
    Orb::Models::SubscriptionCancellationUnscheduledWebhookEvent

  SubscriptionCancelParams = Orb::Models::SubscriptionCancelParams

  SubscriptionChangeApplyParams = Orb::Models::SubscriptionChangeApplyParams

  SubscriptionChangeCancelParams = Orb::Models::SubscriptionChangeCancelParams

  SubscriptionChangeListParams = Orb::Models::SubscriptionChangeListParams

  SubscriptionChangeMinified = Orb::Models::SubscriptionChangeMinified

  SubscriptionChangeRetrieveParams = Orb::Models::SubscriptionChangeRetrieveParams

  SubscriptionCostExceededWebhookEvent = Orb::Models::SubscriptionCostExceededWebhookEvent

  SubscriptionCreatedWebhookEvent = Orb::Models::SubscriptionCreatedWebhookEvent

  SubscriptionCreateParams = Orb::Models::SubscriptionCreateParams

  SubscriptionEditedWebhookEvent = Orb::Models::SubscriptionEditedWebhookEvent

  SubscriptionEndedWebhookEvent = Orb::Models::SubscriptionEndedWebhookEvent

  SubscriptionFetchCostsParams = Orb::Models::SubscriptionFetchCostsParams

  SubscriptionFetchParams = Orb::Models::SubscriptionFetchParams

  SubscriptionFetchScheduleParams = Orb::Models::SubscriptionFetchScheduleParams

  SubscriptionFetchUsageParams = Orb::Models::SubscriptionFetchUsageParams

  SubscriptionFixedFeeQuantityUpdatedWebhookEvent =
    Orb::Models::SubscriptionFixedFeeQuantityUpdatedWebhookEvent

  SubscriptionGroupedCostExceededWebhookEvent = Orb::Models::SubscriptionGroupedCostExceededWebhookEvent

  SubscriptionInvoicingThresholdExceededWebhookEvent =
    Orb::Models::SubscriptionInvoicingThresholdExceededWebhookEvent

  SubscriptionLicenseAllocationResetWebhookEvent =
    Orb::Models::SubscriptionLicenseAllocationResetWebhookEvent

  SubscriptionLicenseBalanceThresholdReachedWebhookEvent =
    Orb::Models::SubscriptionLicenseBalanceThresholdReachedWebhookEvent

  SubscriptionListParams = Orb::Models::SubscriptionListParams

  SubscriptionMinified = Orb::Models::SubscriptionMinified

  SubscriptionPlanChangedWebhookEvent = Orb::Models::SubscriptionPlanChangedWebhookEvent

  SubscriptionPlanChangeScheduledWebhookEvent = Orb::Models::SubscriptionPlanChangeScheduledWebhookEvent

  SubscriptionPlanVersionChangedWebhookEvent = Orb::Models::SubscriptionPlanVersionChangedWebhookEvent

  SubscriptionPlanVersionChangeScheduledWebhookEvent =
    Orb::Models::SubscriptionPlanVersionChangeScheduledWebhookEvent

  SubscriptionPriceIntervalsParams = Orb::Models::SubscriptionPriceIntervalsParams

  SubscriptionRedeemCouponParams = Orb::Models::SubscriptionRedeemCouponParams

  SubscriptionsAPI = Orb::Models::SubscriptionsAPI

  SubscriptionSchedulePlanChangeParams = Orb::Models::SubscriptionSchedulePlanChangeParams

  SubscriptionSpendExceededWebhookEvent = Orb::Models::SubscriptionSpendExceededWebhookEvent

  SubscriptionStartedWebhookEvent = Orb::Models::SubscriptionStartedWebhookEvent

  SubscriptionTrialEndedWebhookEvent = Orb::Models::SubscriptionTrialEndedWebhookEvent

  SubscriptionTrialInfo = Orb::Models::SubscriptionTrialInfo

  SubscriptionTriggerPhaseParams = Orb::Models::SubscriptionTriggerPhaseParams

  SubscriptionUnscheduleCancellationParams = Orb::Models::SubscriptionUnscheduleCancellationParams

  SubscriptionUnscheduleFixedFeeQuantityUpdatesParams =
    Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesParams

  SubscriptionUnschedulePendingPlanChangesParams =
    Orb::Models::SubscriptionUnschedulePendingPlanChangesParams

  SubscriptionUpdateFixedFeeQuantityParams = Orb::Models::SubscriptionUpdateFixedFeeQuantityParams

  SubscriptionUpdateParams = Orb::Models::SubscriptionUpdateParams

  SubscriptionUpdateTrialParams = Orb::Models::SubscriptionUpdateTrialParams

  SubscriptionUsage = Orb::Models::SubscriptionUsage

  SubscriptionUsageExceededWebhookEvent = Orb::Models::SubscriptionUsageExceededWebhookEvent

  TaxAmount = Orb::Models::TaxAmount

  Threshold = Orb::Models::Threshold

  Tier = Orb::Models::Tier

  TieredConfig = Orb::Models::TieredConfig

  TieredConversionRateConfig = Orb::Models::TieredConversionRateConfig

  TierSubLineItem = Orb::Models::TierSubLineItem

  TopLevelPingParams = Orb::Models::TopLevelPingParams

  TransactionAccountingSyncFailedWebhookEvent = Orb::Models::TransactionAccountingSyncFailedWebhookEvent

  TransactionAccountingSyncSucceededWebhookEvent =
    Orb::Models::TransactionAccountingSyncSucceededWebhookEvent

  TrialDiscount = Orb::Models::TrialDiscount

  UnitConfig = Orb::Models::UnitConfig

  UnitConversionRateConfig = Orb::Models::UnitConversionRateConfig

  UnwrapWebhookEvent = Orb::Models::UnwrapWebhookEvent

  UsageDiscount = Orb::Models::UsageDiscount

  UsageDiscountInterval = Orb::Models::UsageDiscountInterval

  WebhookUnwrapParams = Orb::Models::WebhookUnwrapParams
end
