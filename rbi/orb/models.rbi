# typed: strong

module Orb
  AccountingProviderConfig = Orb::Models::AccountingProviderConfig

  Address = Orb::Models::Address

  AddressInput = Orb::Models::AddressInput

  AdjustmentInterval = Orb::Models::AdjustmentInterval

  AggregatedCost = Orb::Models::AggregatedCost

  Alert = Orb::Models::Alert

  AlertCreateForCustomerParams = Orb::Models::AlertCreateForCustomerParams

  AlertCreateForExternalCustomerParams =
    Orb::Models::AlertCreateForExternalCustomerParams

  AlertCreateForSubscriptionParams =
    Orb::Models::AlertCreateForSubscriptionParams

  AlertDisableParams = Orb::Models::AlertDisableParams

  AlertEnableParams = Orb::Models::AlertEnableParams

  AlertListParams = Orb::Models::AlertListParams

  AlertRetrieveParams = Orb::Models::AlertRetrieveParams

  AlertUpdateParams = Orb::Models::AlertUpdateParams

  Allocation = Orb::Models::Allocation

  AmountDiscount = Orb::Models::AmountDiscount

  AmountDiscountInterval = Orb::Models::AmountDiscountInterval

  Beta = Orb::Models::Beta

  BetaCreatePlanVersionParams = Orb::Models::BetaCreatePlanVersionParams

  BetaFetchPlanVersionParams = Orb::Models::BetaFetchPlanVersionParams

  BetaSetDefaultPlanVersionParams = Orb::Models::BetaSetDefaultPlanVersionParams

  BillableMetric = Orb::Models::BillableMetric

  BillableMetricTiny = Orb::Models::BillableMetricTiny

  BillingCycleAnchorConfiguration = Orb::Models::BillingCycleAnchorConfiguration

  BillingCycleConfiguration = Orb::Models::BillingCycleConfiguration

  BillingCycleRelativeDate = Orb::Models::BillingCycleRelativeDate

  BPSConfig = Orb::Models::BPSConfig

  BPSTier = Orb::Models::BPSTier

  BulkBPSConfig = Orb::Models::BulkBPSConfig

  BulkBPSTier = Orb::Models::BulkBPSTier

  BulkConfig = Orb::Models::BulkConfig

  BulkTier = Orb::Models::BulkTier

  ChangedSubscriptionResources = Orb::Models::ChangedSubscriptionResources

  Coupon = Orb::Models::Coupon

  CouponArchiveParams = Orb::Models::CouponArchiveParams

  CouponCreateParams = Orb::Models::CouponCreateParams

  CouponFetchParams = Orb::Models::CouponFetchParams

  CouponListParams = Orb::Models::CouponListParams

  CouponRedemption = Orb::Models::CouponRedemption

  Coupons = Orb::Models::Coupons

  CreditNote = Orb::Models::CreditNote

  CreditNoteCreateParams = Orb::Models::CreditNoteCreateParams

  CreditNoteFetchParams = Orb::Models::CreditNoteFetchParams

  CreditNoteListParams = Orb::Models::CreditNoteListParams

  CreditNoteTiny = Orb::Models::CreditNoteTiny

  Customer = Orb::Models::Customer

  CustomerCreateParams = Orb::Models::CustomerCreateParams

  CustomerDeleteParams = Orb::Models::CustomerDeleteParams

  CustomerFetchByExternalIDParams = Orb::Models::CustomerFetchByExternalIDParams

  CustomerFetchParams = Orb::Models::CustomerFetchParams

  CustomerHierarchyConfig = Orb::Models::CustomerHierarchyConfig

  CustomerListParams = Orb::Models::CustomerListParams

  CustomerMinified = Orb::Models::CustomerMinified

  Customers = Orb::Models::Customers

  CustomerSyncPaymentMethodsFromGatewayByExternalCustomerIDParams =
    Orb::Models::CustomerSyncPaymentMethodsFromGatewayByExternalCustomerIDParams

  CustomerSyncPaymentMethodsFromGatewayParams =
    Orb::Models::CustomerSyncPaymentMethodsFromGatewayParams

  CustomerTaxID = Orb::Models::CustomerTaxID

  CustomerUpdateByExternalIDParams =
    Orb::Models::CustomerUpdateByExternalIDParams

  CustomerUpdateParams = Orb::Models::CustomerUpdateParams

  CustomExpiration = Orb::Models::CustomExpiration

  DimensionalPriceConfiguration = Orb::Models::DimensionalPriceConfiguration

  DimensionalPriceGroup = Orb::Models::DimensionalPriceGroup

  DimensionalPriceGroupCreateParams =
    Orb::Models::DimensionalPriceGroupCreateParams

  DimensionalPriceGroupListParams = Orb::Models::DimensionalPriceGroupListParams

  DimensionalPriceGroupRetrieveParams =
    Orb::Models::DimensionalPriceGroupRetrieveParams

  DimensionalPriceGroups = Orb::Models::DimensionalPriceGroups

  DimensionalPriceGroupsAPI = Orb::Models::DimensionalPriceGroupsAPI

  Discount = Orb::Models::Discount

  DiscountOverride = Orb::Models::DiscountOverride

  EvaluatePriceGroup = Orb::Models::EvaluatePriceGroup

  EventDeprecateParams = Orb::Models::EventDeprecateParams

  EventIngestParams = Orb::Models::EventIngestParams

  Events = Orb::Models::Events

  EventSearchParams = Orb::Models::EventSearchParams

  EventUpdateParams = Orb::Models::EventUpdateParams

  FixedFeeQuantityScheduleEntry = Orb::Models::FixedFeeQuantityScheduleEntry

  FixedFeeQuantityTransition = Orb::Models::FixedFeeQuantityTransition

  Invoice = Orb::Models::Invoice

  InvoiceCreateParams = Orb::Models::InvoiceCreateParams

  InvoiceFetchParams = Orb::Models::InvoiceFetchParams

  InvoiceFetchUpcomingParams = Orb::Models::InvoiceFetchUpcomingParams

  InvoiceIssueParams = Orb::Models::InvoiceIssueParams

  InvoiceLevelDiscount = Orb::Models::InvoiceLevelDiscount

  InvoiceLineItemCreateParams = Orb::Models::InvoiceLineItemCreateParams

  InvoiceListParams = Orb::Models::InvoiceListParams

  InvoiceMarkPaidParams = Orb::Models::InvoiceMarkPaidParams

  InvoicePayParams = Orb::Models::InvoicePayParams

  InvoiceTiny = Orb::Models::InvoiceTiny

  InvoiceUpdateParams = Orb::Models::InvoiceUpdateParams

  InvoiceVoidParams = Orb::Models::InvoiceVoidParams

  Item = Orb::Models::Item

  ItemArchiveParams = Orb::Models::ItemArchiveParams

  ItemCreateParams = Orb::Models::ItemCreateParams

  ItemFetchParams = Orb::Models::ItemFetchParams

  ItemListParams = Orb::Models::ItemListParams

  ItemSlim = Orb::Models::ItemSlim

  ItemUpdateParams = Orb::Models::ItemUpdateParams

  MatrixConfig = Orb::Models::MatrixConfig

  MatrixSubLineItem = Orb::Models::MatrixSubLineItem

  MatrixValue = Orb::Models::MatrixValue

  MatrixWithAllocationConfig = Orb::Models::MatrixWithAllocationConfig

  Maximum = Orb::Models::Maximum

  MaximumInterval = Orb::Models::MaximumInterval

  MetricCreateParams = Orb::Models::MetricCreateParams

  MetricFetchParams = Orb::Models::MetricFetchParams

  MetricListParams = Orb::Models::MetricListParams

  MetricUpdateParams = Orb::Models::MetricUpdateParams

  Minimum = Orb::Models::Minimum

  MinimumInterval = Orb::Models::MinimumInterval

  MonetaryAmountDiscountAdjustment =
    Orb::Models::MonetaryAmountDiscountAdjustment

  MonetaryMaximumAdjustment = Orb::Models::MonetaryMaximumAdjustment

  MonetaryMinimumAdjustment = Orb::Models::MonetaryMinimumAdjustment

  MonetaryPercentageDiscountAdjustment =
    Orb::Models::MonetaryPercentageDiscountAdjustment

  MonetaryUsageDiscountAdjustment = Orb::Models::MonetaryUsageDiscountAdjustment

  MutatedSubscription = Orb::Models::MutatedSubscription

  NewAccountingSyncConfiguration = Orb::Models::NewAccountingSyncConfiguration

  NewAllocationPrice = Orb::Models::NewAllocationPrice

  NewAmountDiscount = Orb::Models::NewAmountDiscount

  NewAvalaraTaxConfiguration = Orb::Models::NewAvalaraTaxConfiguration

  NewBillingCycleConfiguration = Orb::Models::NewBillingCycleConfiguration

  NewDimensionalPriceConfiguration =
    Orb::Models::NewDimensionalPriceConfiguration

  NewFloatingBPSPrice = Orb::Models::NewFloatingBPSPrice

  NewFloatingBulkBPSPrice = Orb::Models::NewFloatingBulkBPSPrice

  NewFloatingBulkPrice = Orb::Models::NewFloatingBulkPrice

  NewFloatingBulkWithProrationPrice =
    Orb::Models::NewFloatingBulkWithProrationPrice

  NewFloatingCumulativeGroupedBulkPrice =
    Orb::Models::NewFloatingCumulativeGroupedBulkPrice

  NewFloatingGroupedAllocationPrice =
    Orb::Models::NewFloatingGroupedAllocationPrice

  NewFloatingGroupedTieredPackagePrice =
    Orb::Models::NewFloatingGroupedTieredPackagePrice

  NewFloatingGroupedTieredPrice = Orb::Models::NewFloatingGroupedTieredPrice

  NewFloatingGroupedWithMeteredMinimumPrice =
    Orb::Models::NewFloatingGroupedWithMeteredMinimumPrice

  NewFloatingGroupedWithProratedMinimumPrice =
    Orb::Models::NewFloatingGroupedWithProratedMinimumPrice

  NewFloatingMatrixPrice = Orb::Models::NewFloatingMatrixPrice

  NewFloatingMatrixWithAllocationPrice =
    Orb::Models::NewFloatingMatrixWithAllocationPrice

  NewFloatingMatrixWithDisplayNamePrice =
    Orb::Models::NewFloatingMatrixWithDisplayNamePrice

  NewFloatingMaxGroupTieredPackagePrice =
    Orb::Models::NewFloatingMaxGroupTieredPackagePrice

  NewFloatingPackagePrice = Orb::Models::NewFloatingPackagePrice

  NewFloatingPackageWithAllocationPrice =
    Orb::Models::NewFloatingPackageWithAllocationPrice

  NewFloatingScalableMatrixWithTieredPricingPrice =
    Orb::Models::NewFloatingScalableMatrixWithTieredPricingPrice

  NewFloatingScalableMatrixWithUnitPricingPrice =
    Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice

  NewFloatingThresholdTotalAmountPrice =
    Orb::Models::NewFloatingThresholdTotalAmountPrice

  NewFloatingTieredBPSPrice = Orb::Models::NewFloatingTieredBPSPrice

  NewFloatingTieredPackagePrice = Orb::Models::NewFloatingTieredPackagePrice

  NewFloatingTieredPackageWithMinimumPrice =
    Orb::Models::NewFloatingTieredPackageWithMinimumPrice

  NewFloatingTieredPrice = Orb::Models::NewFloatingTieredPrice

  NewFloatingTieredWithMinimumPrice =
    Orb::Models::NewFloatingTieredWithMinimumPrice

  NewFloatingTieredWithProrationPrice =
    Orb::Models::NewFloatingTieredWithProrationPrice

  NewFloatingUnitPrice = Orb::Models::NewFloatingUnitPrice

  NewFloatingUnitWithPercentPrice = Orb::Models::NewFloatingUnitWithPercentPrice

  NewFloatingUnitWithProrationPrice =
    Orb::Models::NewFloatingUnitWithProrationPrice

  NewMaximum = Orb::Models::NewMaximum

  NewMinimum = Orb::Models::NewMinimum

  NewPercentageDiscount = Orb::Models::NewPercentageDiscount

  NewPlanBPSPrice = Orb::Models::NewPlanBPSPrice

  NewPlanBulkBPSPrice = Orb::Models::NewPlanBulkBPSPrice

  NewPlanBulkPrice = Orb::Models::NewPlanBulkPrice

  NewPlanBulkWithProrationPrice = Orb::Models::NewPlanBulkWithProrationPrice

  NewPlanCumulativeGroupedBulkPrice =
    Orb::Models::NewPlanCumulativeGroupedBulkPrice

  NewPlanGroupedAllocationPrice = Orb::Models::NewPlanGroupedAllocationPrice

  NewPlanGroupedTieredPackagePrice =
    Orb::Models::NewPlanGroupedTieredPackagePrice

  NewPlanGroupedTieredPrice = Orb::Models::NewPlanGroupedTieredPrice

  NewPlanGroupedWithMeteredMinimumPrice =
    Orb::Models::NewPlanGroupedWithMeteredMinimumPrice

  NewPlanGroupedWithProratedMinimumPrice =
    Orb::Models::NewPlanGroupedWithProratedMinimumPrice

  NewPlanMatrixPrice = Orb::Models::NewPlanMatrixPrice

  NewPlanMatrixWithAllocationPrice =
    Orb::Models::NewPlanMatrixWithAllocationPrice

  NewPlanMatrixWithDisplayNamePrice =
    Orb::Models::NewPlanMatrixWithDisplayNamePrice

  NewPlanMaxGroupTieredPackagePrice =
    Orb::Models::NewPlanMaxGroupTieredPackagePrice

  NewPlanPackagePrice = Orb::Models::NewPlanPackagePrice

  NewPlanPackageWithAllocationPrice =
    Orb::Models::NewPlanPackageWithAllocationPrice

  NewPlanScalableMatrixWithTieredPricingPrice =
    Orb::Models::NewPlanScalableMatrixWithTieredPricingPrice

  NewPlanScalableMatrixWithUnitPricingPrice =
    Orb::Models::NewPlanScalableMatrixWithUnitPricingPrice

  NewPlanThresholdTotalAmountPrice =
    Orb::Models::NewPlanThresholdTotalAmountPrice

  NewPlanTieredBPSPrice = Orb::Models::NewPlanTieredBPSPrice

  NewPlanTieredPackagePrice = Orb::Models::NewPlanTieredPackagePrice

  NewPlanTieredPackageWithMinimumPrice =
    Orb::Models::NewPlanTieredPackageWithMinimumPrice

  NewPlanTieredPrice = Orb::Models::NewPlanTieredPrice

  NewPlanTieredWithMinimumPrice = Orb::Models::NewPlanTieredWithMinimumPrice

  NewPlanTierWithProrationPrice = Orb::Models::NewPlanTierWithProrationPrice

  NewPlanUnitPrice = Orb::Models::NewPlanUnitPrice

  NewPlanUnitWithPercentPrice = Orb::Models::NewPlanUnitWithPercentPrice

  NewPlanUnitWithProrationPrice = Orb::Models::NewPlanUnitWithProrationPrice

  NewReportingConfiguration = Orb::Models::NewReportingConfiguration

  NewSphereConfiguration = Orb::Models::NewSphereConfiguration

  NewSubscriptionBPSPrice = Orb::Models::NewSubscriptionBPSPrice

  NewSubscriptionBulkBPSPrice = Orb::Models::NewSubscriptionBulkBPSPrice

  NewSubscriptionBulkPrice = Orb::Models::NewSubscriptionBulkPrice

  NewSubscriptionBulkWithProrationPrice =
    Orb::Models::NewSubscriptionBulkWithProrationPrice

  NewSubscriptionCumulativeGroupedBulkPrice =
    Orb::Models::NewSubscriptionCumulativeGroupedBulkPrice

  NewSubscriptionGroupedAllocationPrice =
    Orb::Models::NewSubscriptionGroupedAllocationPrice

  NewSubscriptionGroupedTieredPackagePrice =
    Orb::Models::NewSubscriptionGroupedTieredPackagePrice

  NewSubscriptionGroupedTieredPrice =
    Orb::Models::NewSubscriptionGroupedTieredPrice

  NewSubscriptionGroupedWithMeteredMinimumPrice =
    Orb::Models::NewSubscriptionGroupedWithMeteredMinimumPrice

  NewSubscriptionGroupedWithProratedMinimumPrice =
    Orb::Models::NewSubscriptionGroupedWithProratedMinimumPrice

  NewSubscriptionMatrixPrice = Orb::Models::NewSubscriptionMatrixPrice

  NewSubscriptionMatrixWithAllocationPrice =
    Orb::Models::NewSubscriptionMatrixWithAllocationPrice

  NewSubscriptionMatrixWithDisplayNamePrice =
    Orb::Models::NewSubscriptionMatrixWithDisplayNamePrice

  NewSubscriptionMaxGroupTieredPackagePrice =
    Orb::Models::NewSubscriptionMaxGroupTieredPackagePrice

  NewSubscriptionPackagePrice = Orb::Models::NewSubscriptionPackagePrice

  NewSubscriptionPackageWithAllocationPrice =
    Orb::Models::NewSubscriptionPackageWithAllocationPrice

  NewSubscriptionScalableMatrixWithTieredPricingPrice =
    Orb::Models::NewSubscriptionScalableMatrixWithTieredPricingPrice

  NewSubscriptionScalableMatrixWithUnitPricingPrice =
    Orb::Models::NewSubscriptionScalableMatrixWithUnitPricingPrice

  NewSubscriptionThresholdTotalAmountPrice =
    Orb::Models::NewSubscriptionThresholdTotalAmountPrice

  NewSubscriptionTieredBPSPrice = Orb::Models::NewSubscriptionTieredBPSPrice

  NewSubscriptionTieredPackagePrice =
    Orb::Models::NewSubscriptionTieredPackagePrice

  NewSubscriptionTieredPackageWithMinimumPrice =
    Orb::Models::NewSubscriptionTieredPackageWithMinimumPrice

  NewSubscriptionTieredPrice = Orb::Models::NewSubscriptionTieredPrice

  NewSubscriptionTieredWithMinimumPrice =
    Orb::Models::NewSubscriptionTieredWithMinimumPrice

  NewSubscriptionTierWithProrationPrice =
    Orb::Models::NewSubscriptionTierWithProrationPrice

  NewSubscriptionUnitPrice = Orb::Models::NewSubscriptionUnitPrice

  NewSubscriptionUnitWithPercentPrice =
    Orb::Models::NewSubscriptionUnitWithPercentPrice

  NewSubscriptionUnitWithProrationPrice =
    Orb::Models::NewSubscriptionUnitWithProrationPrice

  NewTaxJarConfiguration = Orb::Models::NewTaxJarConfiguration

  NewUsageDiscount = Orb::Models::NewUsageDiscount

  OtherSubLineItem = Orb::Models::OtherSubLineItem

  PackageConfig = Orb::Models::PackageConfig

  PaginationMetadata = Orb::Models::PaginationMetadata

  PercentageDiscount = Orb::Models::PercentageDiscount

  PercentageDiscountInterval = Orb::Models::PercentageDiscountInterval

  PerPriceCost = Orb::Models::PerPriceCost

  Plan = Orb::Models::Plan

  PlanCreateParams = Orb::Models::PlanCreateParams

  PlanFetchParams = Orb::Models::PlanFetchParams

  PlanListParams = Orb::Models::PlanListParams

  PlanPhaseAmountDiscountAdjustment =
    Orb::Models::PlanPhaseAmountDiscountAdjustment

  PlanPhaseMaximumAdjustment = Orb::Models::PlanPhaseMaximumAdjustment

  PlanPhaseMinimumAdjustment = Orb::Models::PlanPhaseMinimumAdjustment

  PlanPhasePercentageDiscountAdjustment =
    Orb::Models::PlanPhasePercentageDiscountAdjustment

  PlanPhaseUsageDiscountAdjustment =
    Orb::Models::PlanPhaseUsageDiscountAdjustment

  Plans = Orb::Models::Plans

  PlanUpdateParams = Orb::Models::PlanUpdateParams

  PlanVersion = Orb::Models::PlanVersion

  PlanVersionPhase = Orb::Models::PlanVersionPhase

  Price = Orb::Models::Price

  PriceCreateParams = Orb::Models::PriceCreateParams

  PriceEvaluateMultipleParams = Orb::Models::PriceEvaluateMultipleParams

  PriceEvaluateParams = Orb::Models::PriceEvaluateParams

  PriceEvaluatePreviewEventsParams =
    Orb::Models::PriceEvaluatePreviewEventsParams

  PriceFetchParams = Orb::Models::PriceFetchParams

  PriceInterval = Orb::Models::PriceInterval

  PriceListParams = Orb::Models::PriceListParams

  Prices = Orb::Models::Prices

  PriceUpdateParams = Orb::Models::PriceUpdateParams

  SubLineItemGrouping = Orb::Models::SubLineItemGrouping

  SubLineItemMatrixConfig = Orb::Models::SubLineItemMatrixConfig

  Subscription = Orb::Models::Subscription

  SubscriptionCancelParams = Orb::Models::SubscriptionCancelParams

  SubscriptionChangeApplyParams = Orb::Models::SubscriptionChangeApplyParams

  SubscriptionChangeCancelParams = Orb::Models::SubscriptionChangeCancelParams

  SubscriptionChangeMinified = Orb::Models::SubscriptionChangeMinified

  SubscriptionChangeRetrieveParams =
    Orb::Models::SubscriptionChangeRetrieveParams

  SubscriptionCreateParams = Orb::Models::SubscriptionCreateParams

  SubscriptionFetchCostsParams = Orb::Models::SubscriptionFetchCostsParams

  SubscriptionFetchParams = Orb::Models::SubscriptionFetchParams

  SubscriptionFetchScheduleParams = Orb::Models::SubscriptionFetchScheduleParams

  SubscriptionFetchUsageParams = Orb::Models::SubscriptionFetchUsageParams

  SubscriptionListParams = Orb::Models::SubscriptionListParams

  SubscriptionMinified = Orb::Models::SubscriptionMinified

  SubscriptionPriceIntervalsParams =
    Orb::Models::SubscriptionPriceIntervalsParams

  SubscriptionRedeemCouponParams = Orb::Models::SubscriptionRedeemCouponParams

  SubscriptionsAPI = Orb::Models::SubscriptionsAPI

  SubscriptionSchedulePlanChangeParams =
    Orb::Models::SubscriptionSchedulePlanChangeParams

  SubscriptionTrialInfo = Orb::Models::SubscriptionTrialInfo

  SubscriptionTriggerPhaseParams = Orb::Models::SubscriptionTriggerPhaseParams

  SubscriptionUnscheduleCancellationParams =
    Orb::Models::SubscriptionUnscheduleCancellationParams

  SubscriptionUnscheduleFixedFeeQuantityUpdatesParams =
    Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesParams

  SubscriptionUnschedulePendingPlanChangesParams =
    Orb::Models::SubscriptionUnschedulePendingPlanChangesParams

  SubscriptionUpdateFixedFeeQuantityParams =
    Orb::Models::SubscriptionUpdateFixedFeeQuantityParams

  SubscriptionUpdateParams = Orb::Models::SubscriptionUpdateParams

  SubscriptionUpdateTrialParams = Orb::Models::SubscriptionUpdateTrialParams

  SubscriptionUsage = Orb::Models::SubscriptionUsage

  TaxAmount = Orb::Models::TaxAmount

  Threshold = Orb::Models::Threshold

  Tier = Orb::Models::Tier

  TierConfig = Orb::Models::TierConfig

  TieredBPSConfig = Orb::Models::TieredBPSConfig

  TieredConfig = Orb::Models::TieredConfig

  TierSubLineItem = Orb::Models::TierSubLineItem

  TopLevelPingParams = Orb::Models::TopLevelPingParams

  TransformPriceFilter = Orb::Models::TransformPriceFilter

  TrialDiscount = Orb::Models::TrialDiscount

  UnitConfig = Orb::Models::UnitConfig

  UsageDiscount = Orb::Models::UsageDiscount

  UsageDiscountInterval = Orb::Models::UsageDiscountInterval
end
