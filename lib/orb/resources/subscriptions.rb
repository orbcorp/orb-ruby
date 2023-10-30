require 'orb/model'
require 'orb/models/subscription'
require 'orb/models/subscription_fetch_costs_response'
require 'orb/models/subscription_fetch_schedule_response'
require 'orb/pagination'
module Orb
    module Resources
        class SubscriptionPage < Page
          required :data, Orb::ArrayOf.new(Orb::Models::Subscription)

        end

        class SubscriptionFetchScheduleResponsePage < Page
          required :data, Orb::ArrayOf.new(Orb::Models::SubscriptionFetchScheduleResponse)

        end

        class SubscriptionsResource

                attr_reader
                def initialize(client:)
                    @client = client
                end
                def create(align_billing_with_subscription_start_date: Orb::NotGiven.instance, auto_collection: Orb::NotGiven.instance, aws_region: Orb::NotGiven.instance, coupon_redemption_code: Orb::NotGiven.instance, credits_overage_rate: Orb::NotGiven.instance, customer_id: Orb::NotGiven.instance, default_invoice_memo: Orb::NotGiven.instance, end_date: Orb::NotGiven.instance, external_customer_id: Orb::NotGiven.instance, external_marketplace: Orb::NotGiven.instance, external_marketplace_reporting_id: Orb::NotGiven.instance, external_plan_id: Orb::NotGiven.instance, initial_phase_order: Orb::NotGiven.instance, invoicing_threshold: Orb::NotGiven.instance, metadata: Orb::NotGiven.instance, net_terms: Orb::NotGiven.instance, per_credit_overage_amount: Orb::NotGiven.instance, plan_id: Orb::NotGiven.instance, price_overrides: Orb::NotGiven.instance, start_date: Orb::NotGiven.instance)
                    request = {method: :post, path: "/subscriptions", body: {align_billing_with_subscription_start_date: align_billing_with_subscription_start_date, auto_collection: auto_collection, aws_region: aws_region, coupon_redemption_code: coupon_redemption_code, credits_overage_rate: credits_overage_rate, customer_id: customer_id, default_invoice_memo: default_invoice_memo, end_date: end_date, external_customer_id: external_customer_id, external_marketplace: external_marketplace, external_marketplace_reporting_id: external_marketplace_reporting_id, external_plan_id: external_plan_id, initial_phase_order: initial_phase_order, invoicing_threshold: invoicing_threshold, metadata: metadata, net_terms: net_terms, per_credit_overage_amount: per_credit_overage_amount, plan_id: plan_id, price_overrides: price_overrides, start_date: start_date, }, query: nil, }

                    @client.request(model: Orb::Models::Subscription, **request)
                end
                def list(created_at_gt: Orb::NotGiven.instance, created_at_gte: Orb::NotGiven.instance, created_at_lt: Orb::NotGiven.instance, created_at_lte: Orb::NotGiven.instance, cursor: Orb::NotGiven.instance, customer_id: Orb::NotGiven.instance, external_customer_id: Orb::NotGiven.instance, limit: Orb::NotGiven.instance, status: Orb::NotGiven.instance)
                    request = {method: :get, path: "/subscriptions", query: {created_at[gt]: created_at_gt, created_at[gte]: created_at_gte, created_at[lt]: created_at_lt, created_at[lte]: created_at_lte, cursor: cursor, customer_id: customer_id, external_customer_id: external_customer_id, limit: limit, status: status, }, }

                    @client.request(page: SubscriptionPage, **request)
                end
                def cancel(subscription_id, cancel_option: Orb::NotGiven.instance, cancellation_date: Orb::NotGiven.instance)
                    request = {method: :post, path: "/subscriptions/#{subscription_id}/cancel", body: {cancel_option: cancel_option, cancellation_date: cancellation_date, }, query: nil, }

                    @client.request(model: Orb::Models::Subscription, **request)
                end
                def fetch(subscription_id)
                    request = {method: :get, path: "/subscriptions/#{subscription_id}", query: nil, }

                    @client.request(model: Orb::Models::Subscription, **request)
                end
                def fetch_costs(subscription_id, group_by: Orb::NotGiven.instance, timeframe_end: Orb::NotGiven.instance, timeframe_start: Orb::NotGiven.instance, view_mode: Orb::NotGiven.instance)
                    request = {method: :get, path: "/subscriptions/#{subscription_id}/costs", query: {group_by: group_by, timeframe_end: timeframe_end, timeframe_start: timeframe_start, view_mode: view_mode, }, }

                    @client.request(model: Orb::Models::SubscriptionFetchCostsResponse, **request)
                end
                def fetch_schedule(subscription_id, cursor: Orb::NotGiven.instance, limit: Orb::NotGiven.instance, start_date_gt: Orb::NotGiven.instance, start_date_gte: Orb::NotGiven.instance, start_date_lt: Orb::NotGiven.instance, start_date_lte: Orb::NotGiven.instance)
                    request = {method: :get, path: "/subscriptions/#{subscription_id}/schedule", query: {cursor: cursor, limit: limit, start_date[gt]: start_date_gt, start_date[gte]: start_date_gte, start_date[lt]: start_date_lt, start_date[lte]: start_date_lte, }, }

                    @client.request(page: SubscriptionFetchScheduleResponsePage, **request)
                end
                def fetch_usage(subscription_id, billable_metric_id: Orb::NotGiven.instance, cursor: Orb::NotGiven.instance, first_dimension_key: Orb::NotGiven.instance, first_dimension_value: Orb::NotGiven.instance, granularity: Orb::NotGiven.instance, group_by: Orb::NotGiven.instance, limit: Orb::NotGiven.instance, second_dimension_key: Orb::NotGiven.instance, second_dimension_value: Orb::NotGiven.instance, timeframe_end: Orb::NotGiven.instance, timeframe_start: Orb::NotGiven.instance, view_mode: Orb::NotGiven.instance)
                    request = {method: :get, path: "/subscriptions/#{subscription_id}/usage", query: {billable_metric_id: billable_metric_id, cursor: cursor, first_dimension_key: first_dimension_key, first_dimension_value: first_dimension_value, granularity: granularity, group_by: group_by, limit: limit, second_dimension_key: second_dimension_key, second_dimension_value: second_dimension_value, timeframe_end: timeframe_end, timeframe_start: timeframe_start, view_mode: view_mode, }, }

                    @client.request(**request)
                end
                def price_intervals(subscription_id, add: Orb::NotGiven.instance, edit: Orb::NotGiven.instance)
                    request = {method: :post, path: "/subscriptions/#{subscription_id}/price_intervals", body: {add: add, edit: edit, }, query: nil, }

                    @client.request(model: Orb::Models::Subscription, **request)
                end
                def schedule_plan_change(subscription_id, change_option: Orb::NotGiven.instance, align_billing_with_plan_change_date: Orb::NotGiven.instance, billing_cycle_alignment: Orb::NotGiven.instance, change_date: Orb::NotGiven.instance, coupon_redemption_code: Orb::NotGiven.instance, credits_overage_rate: Orb::NotGiven.instance, external_plan_id: Orb::NotGiven.instance, initial_phase_order: Orb::NotGiven.instance, invoicing_threshold: Orb::NotGiven.instance, per_credit_overage_amount: Orb::NotGiven.instance, plan_id: Orb::NotGiven.instance, price_overrides: Orb::NotGiven.instance)
                    request = {method: :post, path: "/subscriptions/#{subscription_id}/schedule_plan_change", body: {change_option: change_option, align_billing_with_plan_change_date: align_billing_with_plan_change_date, billing_cycle_alignment: billing_cycle_alignment, change_date: change_date, coupon_redemption_code: coupon_redemption_code, credits_overage_rate: credits_overage_rate, external_plan_id: external_plan_id, initial_phase_order: initial_phase_order, invoicing_threshold: invoicing_threshold, per_credit_overage_amount: per_credit_overage_amount, plan_id: plan_id, price_overrides: price_overrides, }, query: nil, }

                    @client.request(model: Orb::Models::Subscription, **request)
                end
                def trigger_phase(subscription_id, effective_date: Orb::NotGiven.instance)
                    request = {method: :post, path: "/subscriptions/#{subscription_id}/trigger_phase", body: {effective_date: effective_date, }, query: nil, }

                    @client.request(model: Orb::Models::Subscription, **request)
                end
                def unschedule_cancellation(subscription_id)
                    request = {method: :post, path: "/subscriptions/#{subscription_id}/unschedule_cancellation", query: nil, }

                    @client.request(model: Orb::Models::Subscription, **request)
                end
                def unschedule_fixed_fee_quantity_updates(subscription_id, price_id: Orb::NotGiven.instance)
                    request = {method: :post, path: "/subscriptions/#{subscription_id}/unschedule_fixed_fee_quantity_updates", body: {price_id: price_id, }, query: nil, }

                    @client.request(model: Orb::Models::Subscription, **request)
                end
                def unschedule_pending_plan_changes(subscription_id)
                    request = {method: :post, path: "/subscriptions/#{subscription_id}/unschedule_pending_plan_changes", query: nil, }

                    @client.request(model: Orb::Models::Subscription, **request)
                end
                def update_fixed_fee_quantity(subscription_id, price_id: Orb::NotGiven.instance, quantity: Orb::NotGiven.instance, change_option: Orb::NotGiven.instance, effective_date: Orb::NotGiven.instance)
                    request = {method: :post, path: "/subscriptions/#{subscription_id}/update_fixed_fee_quantity", body: {price_id: price_id, quantity: quantity, change_option: change_option, effective_date: effective_date, }, query: nil, }

                    @client.request(model: Orb::Models::Subscription, **request)
                end

        end
    end
end