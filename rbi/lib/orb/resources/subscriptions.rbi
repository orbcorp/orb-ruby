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
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::SubscriptionCreateResponse)
      end
      def create(
        add_adjustments:,
        add_prices:,
        align_billing_with_subscription_start_date:,
        auto_collection:,
        aws_region:,
        billing_cycle_anchor_configuration:,
        coupon_redemption_code:,
        credits_overage_rate:,
        customer_id:,
        default_invoice_memo:,
        end_date:,
        external_customer_id:,
        external_marketplace:,
        external_marketplace_reporting_id:,
        external_plan_id:,
        filter:,
        initial_phase_order:,
        invoicing_threshold:,
        metadata:,
        net_terms:,
        per_credit_overage_amount:,
        plan_id:,
        plan_version_number:,
        price_overrides:,
        remove_adjustments:,
        remove_prices:,
        replace_adjustments:,
        replace_prices:,
        start_date:,
        trial_duration_days:,
        request_options: {}
      ); end

      sig do
        params(
          subscription_id: String,
          auto_collection: T.nilable(T::Boolean),
          default_invoice_memo: T.nilable(String),
          invoicing_threshold: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          net_terms: T.nilable(Integer),
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::Subscription)
      end
      def update(
        subscription_id,
        auto_collection:,
        default_invoice_memo:,
        invoicing_threshold:,
        metadata:,
        net_terms:,
        request_options: {}
      ); end

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
          request_options: Orb::RequestOpts
        ).returns(Orb::Page[Orb::Models::Subscription])
      end
      def list(
        created_at_gt:,
        created_at_gte:,
        created_at_lt:,
        created_at_lte:,
        cursor:,
        customer_id:,
        external_customer_id:,
        limit:,
        status:,
        request_options: {}
      ); end

      sig do
        params(
          subscription_id: String,
          cancel_option: Symbol,
          cancellation_date: T.nilable(Time),
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::SubscriptionCancelResponse)
      end
      def cancel(subscription_id, cancel_option:, cancellation_date:, request_options: {}); end

      sig do
        params(subscription_id: String, request_options: Orb::RequestOpts).returns(Orb::Models::Subscription)
      end
      def fetch(subscription_id, request_options: {}); end

      sig do
        params(
          subscription_id: String,
          currency: T.nilable(String),
          timeframe_end: T.nilable(Time),
          timeframe_start: T.nilable(Time),
          view_mode: T.nilable(Symbol),
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::SubscriptionFetchCostsResponse)
      end
      def fetch_costs(
        subscription_id,
        currency:,
        timeframe_end:,
        timeframe_start:,
        view_mode:,
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
          request_options: Orb::RequestOpts
        ).returns(Orb::Page[Orb::Models::SubscriptionFetchScheduleResponse])
      end
      def fetch_schedule(
        subscription_id,
        cursor:,
        limit:,
        start_date_gt:,
        start_date_gte:,
        start_date_lt:,
        start_date_lte:,
        request_options: {}
      ); end

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
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::SubscriptionUsage::Variants)
      end
      def fetch_usage(
        subscription_id,
        billable_metric_id:,
        first_dimension_key:,
        first_dimension_value:,
        granularity:,
        group_by:,
        second_dimension_key:,
        second_dimension_value:,
        timeframe_end:,
        timeframe_start:,
        view_mode:,
        request_options: {}
      ); end

      sig do
        params(
          subscription_id: String,
          add: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Add],
          add_adjustments: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment],
          edit: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::Edit],
          edit_adjustments: T::Array[Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment],
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::SubscriptionPriceIntervalsResponse)
      end
      def price_intervals(
        subscription_id,
        add:,
        add_adjustments:,
        edit:,
        edit_adjustments:,
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
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::SubscriptionSchedulePlanChangeResponse)
      end
      def schedule_plan_change(
        subscription_id,
        change_option:,
        add_adjustments:,
        add_prices:,
        align_billing_with_plan_change_date:,
        auto_collection:,
        billing_cycle_alignment:,
        billing_cycle_anchor_configuration:,
        change_date:,
        coupon_redemption_code:,
        credits_overage_rate:,
        default_invoice_memo:,
        external_plan_id:,
        filter:,
        initial_phase_order:,
        invoicing_threshold:,
        net_terms:,
        per_credit_overage_amount:,
        plan_id:,
        plan_version_number:,
        price_overrides:,
        remove_adjustments:,
        remove_prices:,
        replace_adjustments:,
        replace_prices:,
        trial_duration_days:,
        request_options: {}
      ); end

      sig do
        params(
          subscription_id: String,
          effective_date: T.nilable(Date),
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::SubscriptionTriggerPhaseResponse)
      end
      def trigger_phase(subscription_id, effective_date:, request_options: {}); end

      sig do
        params(
          subscription_id: String,
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::SubscriptionUnscheduleCancellationResponse)
      end
      def unschedule_cancellation(subscription_id, request_options: {}); end

      sig do
        params(
          subscription_id: String,
          price_id: String,
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::SubscriptionUnscheduleFixedFeeQuantityUpdatesResponse)
      end
      def unschedule_fixed_fee_quantity_updates(subscription_id, price_id:, request_options: {}); end

      sig do
        params(
          subscription_id: String,
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::SubscriptionUnschedulePendingPlanChangesResponse)
      end
      def unschedule_pending_plan_changes(subscription_id, request_options: {}); end

      sig do
        params(
          subscription_id: String,
          price_id: String,
          quantity: Float,
          change_option: Symbol,
          effective_date: T.nilable(Date),
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::SubscriptionUpdateFixedFeeQuantityResponse)
      end
      def update_fixed_fee_quantity(
        subscription_id,
        price_id:,
        quantity:,
        change_option:,
        effective_date:,
        request_options: {}
      )
      end

      sig do
        params(
          subscription_id: String,
          trial_end_date: Orb::Models::SubscriptionUpdateTrialParams::TrialEndDate::Variants,
          shift: T::Boolean,
          request_options: Orb::RequestOpts
        ).returns(Orb::Models::SubscriptionUpdateTrialResponse)
      end
      def update_trial(subscription_id, trial_end_date:, shift:, request_options: {}); end

      sig { params(client: Orb::Client).void }
      def initialize(client:); end
    end
  end
end
