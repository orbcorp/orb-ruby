require 'model'

require 'models/subscription'

require 'models/subscription_fetch_costs_response'

require 'models/subscription_fetch_schedule_response'

module Resources
    class SubscriptionsResource

            def initialize(client:)
                @client = client
            end
            def create(align_billing_with_subscription_start_date: nil, auto_collection: nil, aws_region: nil, coupon_redemption_code: nil, credits_overage_rate: nil, customer_id: nil, default_invoice_memo: nil, end_date: nil, external_customer_id: nil, external_marketplace: nil, external_marketplace_reporting_id: nil, external_plan_id: nil, initial_phase_order: nil, invoicing_threshold: nil, metadata: nil, net_terms: nil, per_credit_overage_amount: nil, plan_id: nil, price_overrides: nil, start_date: nil)
                response = @client.request(method: :post, path: "/subscriptions", body: {align_billing_with_subscription_start_date: align_billing_with_subscription_start_date, auto_collection: auto_collection, aws_region: aws_region, coupon_redemption_code: coupon_redemption_code, credits_overage_rate: credits_overage_rate, customer_id: customer_id, default_invoice_memo: default_invoice_memo, end_date: end_date, external_customer_id: external_customer_id, external_marketplace: external_marketplace, external_marketplace_reporting_id: external_marketplace_reporting_id, external_plan_id: external_plan_id, initial_phase_order: initial_phase_order, invoicing_threshold: invoicing_threshold, metadata: metadata, net_terms: net_terms, per_credit_overage_amount: per_credit_overage_amount, plan_id: plan_id, price_overrides: price_overrides, start_date: start_date})

                Models::Subscription.convert(**response)
            end
            def list(created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, cursor: nil, customer_id: nil, external_customer_id: nil, limit: nil, status: nil)
                response = @client.request(method: :get, path: "/subscriptions", body: {}, query: {created_at[gt]: created_at_gt, created_at[gte]: created_at_gte, created_at[lt]: created_at_lt, created_at[lte]: created_at_lte, cursor: cursor, customer_id: customer_id, external_customer_id: external_customer_id, limit: limit, status: status})

                Models::Subscription.convert(**response)
            end
            def cancel(subscription_id, cancel_option: nil, cancellation_date: nil)
                response = @client.request(method: :post, path: "/subscriptions/#{subscription_id}/cancel", body: {cancel_option: cancel_option, cancellation_date: cancellation_date})

                Models::Subscription.convert(**response)
            end
            def fetch(subscription_id)
                response = @client.request(method: :get, path: "/subscriptions/#{subscription_id}", body: {})

                Models::Subscription.convert(**response)
            end
            def fetch_costs(subscription_id, group_by: nil, timeframe_end: nil, timeframe_start: nil, view_mode: nil)
                response = @client.request(method: :get, path: "/subscriptions/#{subscription_id}/costs", body: {}, query: {group_by: group_by, timeframe_end: timeframe_end, timeframe_start: timeframe_start, view_mode: view_mode})

                Models::SubscriptionFetchCostsResponse.convert(**response)
            end
            def fetch_schedule(subscription_id, cursor: nil, limit: nil, start_date_gt: nil, start_date_gte: nil, start_date_lt: nil, start_date_lte: nil)
                response = @client.request(method: :get, path: "/subscriptions/#{subscription_id}/schedule", body: {}, query: {cursor: cursor, limit: limit, start_date[gt]: start_date_gt, start_date[gte]: start_date_gte, start_date[lt]: start_date_lt, start_date[lte]: start_date_lte})

                Models::SubscriptionFetchScheduleResponse.convert(**response)
            end
            def fetch_usage(subscription_id, billable_metric_id: nil, cursor: nil, first_dimension_key: nil, first_dimension_value: nil, granularity: nil, group_by: nil, limit: nil, second_dimension_key: nil, second_dimension_value: nil, timeframe_end: nil, timeframe_start: nil, view_mode: nil)
                @client.request(method: :get, path: "/subscriptions/#{subscription_id}/usage", body: {}, query: {billable_metric_id: billable_metric_id, cursor: cursor, first_dimension_key: first_dimension_key, first_dimension_value: first_dimension_value, granularity: granularity, group_by: group_by, limit: limit, second_dimension_key: second_dimension_key, second_dimension_value: second_dimension_value, timeframe_end: timeframe_end, timeframe_start: timeframe_start, view_mode: view_mode})
            end
            def price_intervals(subscription_id, add: nil, edit: nil)
                response = @client.request(method: :post, path: "/subscriptions/#{subscription_id}/price_intervals", body: {add: add, edit: edit})

                Models::Subscription.convert(**response)
            end
            def schedule_plan_change(subscription_id, change_option: nil, align_billing_with_plan_change_date: nil, billing_cycle_alignment: nil, change_date: nil, coupon_redemption_code: nil, credits_overage_rate: nil, external_plan_id: nil, initial_phase_order: nil, invoicing_threshold: nil, per_credit_overage_amount: nil, plan_id: nil, price_overrides: nil)
                response = @client.request(method: :post, path: "/subscriptions/#{subscription_id}/schedule_plan_change", body: {change_option: change_option, align_billing_with_plan_change_date: align_billing_with_plan_change_date, billing_cycle_alignment: billing_cycle_alignment, change_date: change_date, coupon_redemption_code: coupon_redemption_code, credits_overage_rate: credits_overage_rate, external_plan_id: external_plan_id, initial_phase_order: initial_phase_order, invoicing_threshold: invoicing_threshold, per_credit_overage_amount: per_credit_overage_amount, plan_id: plan_id, price_overrides: price_overrides})

                Models::Subscription.convert(**response)
            end
            def trigger_phase(subscription_id, effective_date: nil)
                response = @client.request(method: :post, path: "/subscriptions/#{subscription_id}/trigger_phase", body: {effective_date: effective_date})

                Models::Subscription.convert(**response)
            end
            def unschedule_cancellation(subscription_id)
                response = @client.request(method: :post, path: "/subscriptions/#{subscription_id}/unschedule_cancellation", body: {})

                Models::Subscription.convert(**response)
            end
            def unschedule_fixed_fee_quantity_updates(subscription_id, price_id: nil)
                response = @client.request(method: :post, path: "/subscriptions/#{subscription_id}/unschedule_fixed_fee_quantity_updates", body: {price_id: price_id})

                Models::Subscription.convert(**response)
            end
            def unschedule_pending_plan_changes(subscription_id)
                response = @client.request(method: :post, path: "/subscriptions/#{subscription_id}/unschedule_pending_plan_changes", body: {})

                Models::Subscription.convert(**response)
            end
            def update_fixed_fee_quantity(subscription_id, price_id: nil, quantity: nil, change_option: nil, effective_date: nil)
                response = @client.request(method: :post, path: "/subscriptions/#{subscription_id}/update_fixed_fee_quantity", body: {price_id: price_id, quantity: quantity, change_option: change_option, effective_date: effective_date})

                Models::Subscription.convert(**response)
            end

    end
end