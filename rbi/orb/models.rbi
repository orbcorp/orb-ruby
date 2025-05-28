# typed: strong

module Orb
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

  AmountDiscount = Orb::Models::AmountDiscount

  Beta = Orb::Models::Beta

  BetaCreatePlanVersionParams = Orb::Models::BetaCreatePlanVersionParams

  BetaFetchPlanVersionParams = Orb::Models::BetaFetchPlanVersionParams

  BetaSetDefaultPlanVersionParams = Orb::Models::BetaSetDefaultPlanVersionParams

  BillableMetric = Orb::Models::BillableMetric

  BillingCycleRelativeDate = Orb::Models::BillingCycleRelativeDate

  Coupon = Orb::Models::Coupon

  CouponArchiveParams = Orb::Models::CouponArchiveParams

  CouponCreateParams = Orb::Models::CouponCreateParams

  CouponFetchParams = Orb::Models::CouponFetchParams

  CouponListParams = Orb::Models::CouponListParams

  Coupons = Orb::Models::Coupons

  CreditNote = Orb::Models::CreditNote

  CreditNoteCreateParams = Orb::Models::CreditNoteCreateParams

  CreditNoteFetchParams = Orb::Models::CreditNoteFetchParams

  CreditNoteListParams = Orb::Models::CreditNoteListParams

  Customer = Orb::Models::Customer

  CustomerCreateParams = Orb::Models::CustomerCreateParams

  CustomerDeleteParams = Orb::Models::CustomerDeleteParams

  CustomerFetchByExternalIDParams = Orb::Models::CustomerFetchByExternalIDParams

  CustomerFetchParams = Orb::Models::CustomerFetchParams

  CustomerListParams = Orb::Models::CustomerListParams

  Customers = Orb::Models::Customers

  CustomerSyncPaymentMethodsFromGatewayByExternalCustomerIDParams =
    Orb::Models::CustomerSyncPaymentMethodsFromGatewayByExternalCustomerIDParams

  CustomerSyncPaymentMethodsFromGatewayParams =
    Orb::Models::CustomerSyncPaymentMethodsFromGatewayParams

  CustomerUpdateByExternalIDParams =
    Orb::Models::CustomerUpdateByExternalIDParams

  CustomerUpdateParams = Orb::Models::CustomerUpdateParams

  DimensionalPriceGroup = Orb::Models::DimensionalPriceGroup

  DimensionalPriceGroupCreateParams =
    Orb::Models::DimensionalPriceGroupCreateParams

  DimensionalPriceGroupListParams = Orb::Models::DimensionalPriceGroupListParams

  DimensionalPriceGroupRetrieveParams =
    Orb::Models::DimensionalPriceGroupRetrieveParams

  DimensionalPriceGroups = Orb::Models::DimensionalPriceGroups

  DimensionalPriceGroupsAPI = Orb::Models::DimensionalPriceGroupsAPI

  Discount = Orb::Models::Discount

  EvaluatePriceGroup = Orb::Models::EvaluatePriceGroup

  EventDeprecateParams = Orb::Models::EventDeprecateParams

  EventIngestParams = Orb::Models::EventIngestParams

  Events = Orb::Models::Events

  EventSearchParams = Orb::Models::EventSearchParams

  EventUpdateParams = Orb::Models::EventUpdateParams

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

  InvoiceUpdateParams = Orb::Models::InvoiceUpdateParams

  InvoiceVoidParams = Orb::Models::InvoiceVoidParams

  Item = Orb::Models::Item

  ItemArchiveParams = Orb::Models::ItemArchiveParams

  ItemCreateParams = Orb::Models::ItemCreateParams

  ItemFetchParams = Orb::Models::ItemFetchParams

  ItemListParams = Orb::Models::ItemListParams

  ItemUpdateParams = Orb::Models::ItemUpdateParams

  MetricCreateParams = Orb::Models::MetricCreateParams

  MetricFetchParams = Orb::Models::MetricFetchParams

  MetricListParams = Orb::Models::MetricListParams

  MetricUpdateParams = Orb::Models::MetricUpdateParams

  PaginationMetadata = Orb::Models::PaginationMetadata

  PercentageDiscount = Orb::Models::PercentageDiscount

  Plan = Orb::Models::Plan

  PlanCreateParams = Orb::Models::PlanCreateParams

  PlanFetchParams = Orb::Models::PlanFetchParams

  PlanListParams = Orb::Models::PlanListParams

  Plans = Orb::Models::Plans

  PlanUpdateParams = Orb::Models::PlanUpdateParams

  PlanVersion = Orb::Models::PlanVersion

  PlanVersionPhase = Orb::Models::PlanVersionPhase

  Price = Orb::Models::Price

  PriceCreateParams = Orb::Models::PriceCreateParams

  PriceEvaluateMultipleParams = Orb::Models::PriceEvaluateMultipleParams

  PriceEvaluateParams = Orb::Models::PriceEvaluateParams

  PriceFetchParams = Orb::Models::PriceFetchParams

  PriceListParams = Orb::Models::PriceListParams

  Prices = Orb::Models::Prices

  PriceUpdateParams = Orb::Models::PriceUpdateParams

  Subscription = Orb::Models::Subscription

  SubscriptionCancelParams = Orb::Models::SubscriptionCancelParams

  SubscriptionChangeApplyParams = Orb::Models::SubscriptionChangeApplyParams

  SubscriptionChangeCancelParams = Orb::Models::SubscriptionChangeCancelParams

  SubscriptionChangeRetrieveParams =
    Orb::Models::SubscriptionChangeRetrieveParams

  SubscriptionCreateParams = Orb::Models::SubscriptionCreateParams

  SubscriptionFetchCostsParams = Orb::Models::SubscriptionFetchCostsParams

  SubscriptionFetchParams = Orb::Models::SubscriptionFetchParams

  SubscriptionFetchScheduleParams = Orb::Models::SubscriptionFetchScheduleParams

  SubscriptionFetchUsageParams = Orb::Models::SubscriptionFetchUsageParams

  SubscriptionListParams = Orb::Models::SubscriptionListParams

  SubscriptionPriceIntervalsParams =
    Orb::Models::SubscriptionPriceIntervalsParams

  SubscriptionsAPI = Orb::Models::SubscriptionsAPI

  SubscriptionSchedulePlanChangeParams =
    Orb::Models::SubscriptionSchedulePlanChangeParams

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

  TopLevelPingParams = Orb::Models::TopLevelPingParams

  TrialDiscount = Orb::Models::TrialDiscount

  UsageDiscount = Orb::Models::UsageDiscount
end
