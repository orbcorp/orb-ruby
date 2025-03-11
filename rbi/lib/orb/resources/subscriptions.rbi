# typed: strong

module Orb
  module Resources
    class Subscriptions
      sig do
        params(
            add_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddAdjustment]),
            add_prices: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice]),
            align_billing_with_subscription_start_date: T::Boolean,
            auto_collection: T.nilable(T::Boolean),
            aws_region: T.nilable(String),
            billing_cycle_anchor_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration),
            coupon_redemption_code: T.nilable(String),
            credits_overage_rate: T.nilable(Float),
            customer_id: T.nilable(String),
            default_invoice_memo: T.nilable(String),
            end_date: T.nilable(Time),
            external_customer_id: T.nilable(String),
            external_marketplace: T.nilable(Symbol),
            external_marketplace_reporting_id: T.nilable(String),
            external_plan_id: T.nilable(String),
            filter: T.nilable(String),
            initial_phase_order: T.nilable(Integer),
            invoicing_threshold: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            net_terms: T.nilable(Integer),
            per_credit_overage_amount: T.nilable(Float),
            plan_id: T.nilable(String),
            plan_version_number: T.nilable(Integer),
            price_overrides: T.nilable(T::Array[T.anything]),
            remove_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemoveAdjustment]),
            remove_prices: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemovePrice]),
            replace_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplaceAdjustment]),
            replace_prices: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice]),
            start_date: T.nilable(Time),
            trial_duration_days: T.nilable(Integer),
            usage_customer_ids: T.nilable(T::Array[String]),
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Models::SubscriptionCreateResponse)
      end
      def create(
        add_adjustments: nil,
        add_prices: nil,
        align_billing_with_subscription_start_date: nil,
        auto_collection: nil,
        aws_region: nil,
        billing_cycle_anchor_configuration: nil,
        coupon_redemption_code: nil,
        credits_overage_rate: nil,
        customer_id: nil,
        default_invoice_memo: nil,
        end_date: nil,
        external_customer_id: nil,
        external_marketplace: nil,
        external_marketplace_reporting_id: nil,
        external_plan_id: nil,
        filter: nil,
        initial_phase_order: nil,
        invoicing_threshold: nil,
        metadata: nil,
        net_terms: nil,
        per_credit_overage_amount: nil,
        plan_id: nil,
        plan_version_number: nil,
        price_overrides: nil,
        remove_adjustments: nil,
        remove_prices: nil,
        replace_adjustments: nil,
        replace_prices: nil,
        start_date: nil,
        trial_duration_days: nil,
        usage_customer_ids: nil,
        request_options: {}
      )
      end

      sig do
        params(
            subscription_id: String,
            auto_collection: T.nilable(T::Boolean),
            default_invoice_memo: T.nilable(String),
            invoicing_threshold: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            net_terms: T.nilable(Integer),
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Models::Subscription)
      end
      def update(
        subscription_id,
        auto_collection: nil,
        default_invoice_memo: nil,
        invoicing_threshold: nil,
        metadata: nil,
        net_terms: nil,
        request_options: {}
      )
      end

      sig do
        params(
            created_at_gt: T.nilable(Time),
            created_at_gte: T.nilable(Time),
            created_at_lt: T.nilable(Time),
            created_at_lte: T.nilable(Time),
            cursor: T.nilable(String),
            customer_id: T.nilable(T::Array[String]),
            external_customer_id: T.nilable(String),
            limit: Integer,
            status: T.nilable(Symbol),
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Page[Orb::Models::Subscription])
      end
      def list(
        created_at_gt: nil,
        created_at_gte: nil,
        created_at_lt: nil,
        created_at_lte: nil,
        cursor: nil,
        customer_id: nil,
        external_customer_id: nil,
        limit: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        params(
            subscription_id: String,
            cancel_option: Symbol,
            allow_invoice_credit_or_void: T.nilable(T::Boolean),
            cancellation_date: T.nilable(Time),
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Models::SubscriptionCancelResponse)
      end
      def cancel(
        subscription_id,
        cancel_option:,
        allow_invoice_credit_or_void: nil,
        cancellation_date: nil,
        request_options: {}
      )
      end

      sig do
        params(
            subscription_id: String,
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Models::Subscription)
      end
      def fetch(subscription_id, request_options: {})
      end

      sig do
        params(
            subscription_id: String,
            currency: T.nilable(String),
            timeframe_end: T.nilable(Time),
            timeframe_start: T.nilable(Time),
            view_mode: T.nilable(Symbol),
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Models::SubscriptionFetchCostsResponse)
      end
      def fetch_costs(
        subscription_id,
        currency: nil,
        timeframe_end: nil,
        timeframe_start: nil,
        view_mode: nil,
        request_options: {}
      )
      end

      sig do
        params(
            subscription_id: String,
            cursor: T.nilable(String),
            limit: Integer,
            start_date_gt: T.nilable(Time),
            start_date_gte: T.nilable(Time),
            start_date_lt: T.nilable(Time),
            start_date_lte: T.nilable(Time),
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Page[Orb::Models::SubscriptionFetchScheduleResponse])
      end
      def fetch_schedule(
        subscription_id,
        cursor: nil,
        limit: nil,
        start_date_gt: nil,
        start_date_gte: nil,
        start_date_lt: nil,
        start_date_lte: nil,
        request_options: {}
      )
      end

      sig do
        params(
            subscription_id: String,
            billable_metric_id: T.nilable(String),
            first_dimension_key: T.nilable(String),
            first_dimension_value: T.nilable(String),
            granularity: T.nilable(Symbol),
            group_by: T.nilable(String),
            second_dimension_key: T.nilable(String),
            second_dimension_value: T.nilable(String),
            timeframe_end: T.nilable(Time),
            timeframe_start: T.nilable(Time),
            view_mode: T.nilable(Symbol),
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(
            T.any(
              Orb::Models::SubscriptionUsage::UngroupedSubscriptionUsage,
              Orb::Models::SubscriptionUsage::GroupedSubscriptionUsage
            )
          )
      end
      def fetch_usage(
        subscription_id,
        billable_metric_id: nil,
        first_dimension_key: nil,
        first_dimension_value: nil,
        granularity: nil,
        group_by: nil,
        second_dimension_key: nil,
        second_dimension_value: nil,
        timeframe_end: nil,
        timeframe_start: nil,
        view_mode: nil,
        request_options: {}
      )
      end

      sig do
        params(
            subscription_id: String,
            add: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add],
            add_adjustments: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment],
            allow_invoice_credit_or_void: T.nilable(T::Boolean),
            edit: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit],
            edit_adjustments: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment],
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Models::SubscriptionPriceIntervalsResponse)
      end
      def price_intervals(
        subscription_id,
        add: nil,
        add_adjustments: nil,
        allow_invoice_credit_or_void: nil,
        edit: nil,
        edit_adjustments: nil,
        request_options: {}
      )
      end

      sig do
        params(
            subscription_id: String,
            change_option: Symbol,
            add_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment]),
            add_prices: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice]),
            align_billing_with_plan_change_date: T.nilable(T::Boolean),
            auto_collection: T.nilable(T::Boolean),
            billing_cycle_alignment: T.nilable(Symbol),
            billing_cycle_anchor_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAnchorConfiguration),
            change_date: T.nilable(Time),
            coupon_redemption_code: T.nilable(String),
            credits_overage_rate: T.nilable(Float),
            default_invoice_memo: T.nilable(String),
            external_plan_id: T.nilable(String),
            filter: T.nilable(String),
            initial_phase_order: T.nilable(Integer),
            invoicing_threshold: T.nilable(String),
            net_terms: T.nilable(Integer),
            per_credit_overage_amount: T.nilable(Float),
            plan_id: T.nilable(String),
            plan_version_number: T.nilable(Integer),
            price_overrides: T.nilable(T::Array[T.anything]),
            remove_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::RemoveAdjustment]),
            remove_prices: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::RemovePrice]),
            replace_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment]),
            replace_prices: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice]),
            trial_duration_days: T.nilable(Integer),
            usage_customer_ids: T.nilable(T::Array[String]),
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Models::SubscriptionSchedulePlanChangeResponse)
      end
      def schedule_plan_change(
        subscription_id,
        change_option:,
        add_adjustments: nil,
        add_prices: nil,
        align_billing_with_plan_change_date: nil,
        auto_collection: nil,
        billing_cycle_alignment: nil,
        billing_cycle_anchor_configuration: nil,
        change_date: nil,
        coupon_redemption_code: nil,
        credits_overage_rate: nil,
        default_invoice_memo: nil,
        external_plan_id: nil,
        filter: nil,
        initial_phase_order: nil,
        invoicing_threshold: nil,
        net_terms: nil,
        per_credit_overage_amount: nil,
        plan_id: nil,
        plan_version_number: nil,
        price_overrides: nil,
        remove_adjustments: nil,
        remove_prices: nil,
        replace_adjustments: nil,
        replace_prices: nil,
        trial_duration_days: nil,
        usage_customer_ids: nil,
        request_options: {}
      )
      end

      sig do
        params(
            subscription_id: String,
            allow_invoice_credit_or_void: T.nilable(T::Boolean),
            effective_date: T.nilable(Date),
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Models::SubscriptionTriggerPhaseResponse)
      end
      def trigger_phase(subscription_id, allow_invoice_credit_or_void: nil, effective_date: nil, request_options: {})
      end

      sig do
        params(
            subscription_id: String,
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Models::SubscriptionUnscheduleCancellationResponse)
      end
      def unschedule_cancellation(subscription_id, request_options: {})
      end

      sig do
        params(
            subscription_id: String,
            price_id: String,
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesResponse)
      end
      def unschedule_fixed_fee_quantity_updates(subscription_id, price_id:, request_options: {})
      end

      sig do
        params(
            subscription_id: String,
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse)
      end
      def unschedule_pending_plan_changes(subscription_id, request_options: {})
      end

      sig do
        params(
            subscription_id: String,
            price_id: String,
            quantity: Float,
            allow_invoice_credit_or_void: T.nilable(T::Boolean),
            change_option: Symbol,
            effective_date: T.nilable(Date),
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse)
      end
      def update_fixed_fee_quantity(
        subscription_id,
        price_id:,
        quantity:,
        allow_invoice_credit_or_void: nil,
        change_option: nil,
        effective_date: nil,
        request_options: {}
      )
      end

      sig do
        params(
            subscription_id: String,
            trial_end_date: T.any(Time, Symbol),
            shift: T::Boolean,
            request_options: T.nilable(T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything]))
          )
          .returns(Orb::Models::SubscriptionUpdateTrialResponse)
      end
      def update_trial(subscription_id, trial_end_date:, shift: nil, request_options: {})
      end

      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
