# frozen_string_literal: true

# Standard libraries.
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"

# Gems.
require "connection_pool"

# Package files.
require_relative "orb/version"
require_relative "orb/util"
require_relative "orb/extern"
require_relative "orb/base_model"
require_relative "orb/base_page"
require_relative "orb/request_options"
require_relative "orb/errors"
require_relative "orb/base_client"
require_relative "orb/pooled_net_requester"
require_relative "orb/client"
require_relative "orb/page"
require_relative "orb/models/create_customer_alert_request"
require_relative "orb/models/add_credit_ledger_entry_request"
require_relative "orb/models/add_credit_top_up_request"
require_relative "orb/models/edit_customer_model"
require_relative "orb/models/edit_plan_model"
require_relative "orb/models/new_floating_price_model"
require_relative "orb/models/update_price_request_params"
require_relative "orb/models/address_input_model"
require_relative "orb/models/address_model"
require_relative "orb/models/add_subscription_adjustment_params"
require_relative "orb/models/add_subscription_price_params"
require_relative "orb/models/adjustment_interval_model"
require_relative "orb/models/adjustment_model"
require_relative "orb/models/affected_block_model"
require_relative "orb/models/aggregated_cost_model"
require_relative "orb/models/alert"
require_relative "orb/models/alert_create_for_customer_params"
require_relative "orb/models/alert_create_for_external_customer_params"
require_relative "orb/models/alert_create_for_subscription_params"
require_relative "orb/models/alert_disable_params"
require_relative "orb/models/alert_enable_params"
require_relative "orb/models/alert_list_params"
require_relative "orb/models/alert_model"
require_relative "orb/models/alert_retrieve_params"
require_relative "orb/models/alert_update_params"
require_relative "orb/models/allocation_model"
require_relative "orb/models/amount_discount"
require_relative "orb/models/amount_discount_interval_model"
require_relative "orb/models/amount_discount_model"
require_relative "orb/models/auto_collection_model"
require_relative "orb/models/backfill_model"
require_relative "orb/models/billable_metric"
require_relative "orb/models/billable_metric_model"
require_relative "orb/models/billable_metric_simple_model"
require_relative "orb/models/billable_metric_tiny_model"
require_relative "orb/models/billing_cycle_anchor_configuration_model"
require_relative "orb/models/billing_cycle_configuration_model"
require_relative "orb/models/billing_cycle_relative_date"
require_relative "orb/models/bps_config_model"
require_relative "orb/models/bulk_bps_config_model"
require_relative "orb/models/bulk_config_model"
require_relative "orb/models/coupon"
require_relative "orb/models/coupon_archive_params"
require_relative "orb/models/coupon_create_params"
require_relative "orb/models/coupon_fetch_params"
require_relative "orb/models/coupon_list_params"
require_relative "orb/models/coupon_model"
require_relative "orb/models/coupon_redemption_model"
require_relative "orb/models/coupons/subscription_list_params"
require_relative "orb/models/credit_ledger_entries_model"
require_relative "orb/models/credit_ledger_entry_model"
require_relative "orb/models/credit_note"
require_relative "orb/models/credit_note_create_params"
require_relative "orb/models/credit_note_discount_model"
require_relative "orb/models/credit_note_fetch_params"
require_relative "orb/models/credit_note_list_params"
require_relative "orb/models/credit_note_model"
require_relative "orb/models/credit_note_summary_model"
require_relative "orb/models/customer"
require_relative "orb/models/customer_balance_transaction_model"
require_relative "orb/models/customer_costs_model"
require_relative "orb/models/customer_create_params"
require_relative "orb/models/customer_credit_balances_model"
require_relative "orb/models/customer_delete_params"
require_relative "orb/models/customer_fetch_by_external_id_params"
require_relative "orb/models/customer_fetch_params"
require_relative "orb/models/customer_hierarchy_config_model"
require_relative "orb/models/customer_list_params"
require_relative "orb/models/customer_minified_model"
require_relative "orb/models/customer_model"
require_relative "orb/models/customers/balance_transaction_create_params"
require_relative "orb/models/customers/balance_transaction_list_params"
require_relative "orb/models/customers/cost_list_by_external_id_params"
require_relative "orb/models/customers/cost_list_params"
require_relative "orb/models/customers/credit_list_by_external_id_params"
require_relative "orb/models/customers/credit_list_params"
require_relative "orb/models/customers/credits/ledger_create_entry_by_external_id_params"
require_relative "orb/models/customers/credits/ledger_create_entry_params"
require_relative "orb/models/customers/credits/ledger_list_by_external_id_params"
require_relative "orb/models/customers/credits/ledger_list_params"
require_relative "orb/models/customers/credits/top_up_create_by_external_id_params"
require_relative "orb/models/customers/credits/top_up_create_params"
require_relative "orb/models/customers/credits/top_up_delete_by_external_id_params"
require_relative "orb/models/customers/credits/top_up_delete_params"
require_relative "orb/models/customers/credits/top_up_list_by_external_id_params"
require_relative "orb/models/customers/credits/top_up_list_params"
require_relative "orb/models/customer_sync_payment_methods_from_gateway_by_external_customer_id_params"
require_relative "orb/models/customer_sync_payment_methods_from_gateway_params"
require_relative "orb/models/customer_tax_id_model"
require_relative "orb/models/customer_update_by_external_id_params"
require_relative "orb/models/customer_update_params"
require_relative "orb/models/custom_rating_function_config_model"
require_relative "orb/models/dimensional_price_configuration_model"
require_relative "orb/models/dimensional_price_group"
require_relative "orb/models/dimensional_price_group_create_params"
require_relative "orb/models/dimensional_price_group_list_params"
require_relative "orb/models/dimensional_price_group_model"
require_relative "orb/models/dimensional_price_group_retrieve_params"
require_relative "orb/models/dimensional_price_groups/external_dimensional_price_group_id_retrieve_params"
require_relative "orb/models/dimensional_price_groups"
require_relative "orb/models/discount"
require_relative "orb/models/discount_model"
require_relative "orb/models/discount_override_model"
require_relative "orb/models/evaluate_price_group"
require_relative "orb/models/event_deprecate_params"
require_relative "orb/models/event_deprecate_response"
require_relative "orb/models/event_ingest_params"
require_relative "orb/models/event_ingest_response"
require_relative "orb/models/events/backfill_close_params"
require_relative "orb/models/events/backfill_create_params"
require_relative "orb/models/events/backfill_fetch_params"
require_relative "orb/models/events/backfill_list_params"
require_relative "orb/models/events/backfill_revert_params"
require_relative "orb/models/events/event_volumes"
require_relative "orb/models/events/volume_list_params"
require_relative "orb/models/event_search_params"
require_relative "orb/models/event_search_response"
require_relative "orb/models/event_update_params"
require_relative "orb/models/event_update_response"
require_relative "orb/models/fixed_fee_quantity_schedule_entry_model"
require_relative "orb/models/invoice"
require_relative "orb/models/invoice_create_params"
require_relative "orb/models/invoice_fetch_params"
require_relative "orb/models/invoice_fetch_upcoming_params"
require_relative "orb/models/invoice_fetch_upcoming_response"
require_relative "orb/models/invoice_issue_params"
require_relative "orb/models/invoice_level_discount"
require_relative "orb/models/invoice_level_discount_model"
require_relative "orb/models/invoice_line_item_create_params"
require_relative "orb/models/invoice_line_item_model"
require_relative "orb/models/invoice_list_params"
require_relative "orb/models/invoice_mark_paid_params"
require_relative "orb/models/invoice_model"
require_relative "orb/models/invoice_pay_params"
require_relative "orb/models/invoice_update_params"
require_relative "orb/models/invoice_void_params"
require_relative "orb/models/item"
require_relative "orb/models/item_create_params"
require_relative "orb/models/item_external_connection_model"
require_relative "orb/models/item_fetch_params"
require_relative "orb/models/item_list_params"
require_relative "orb/models/item_model"
require_relative "orb/models/item_slim_model"
require_relative "orb/models/item_update_params"
require_relative "orb/models/matrix_config_model"
require_relative "orb/models/matrix_value_model"
require_relative "orb/models/matrix_with_allocation_config_model"
require_relative "orb/models/maximum_interval_model"
require_relative "orb/models/maximum_model"
require_relative "orb/models/metric_create_params"
require_relative "orb/models/metric_fetch_params"
require_relative "orb/models/metric_list_params"
require_relative "orb/models/metric_update_params"
require_relative "orb/models/minimum_interval_model"
require_relative "orb/models/minimum_model"
require_relative "orb/models/mutated_subscription_model"
require_relative "orb/models/new_accounting_sync_configuration_model"
require_relative "orb/models/new_adjustment_model"
require_relative "orb/models/new_allocation_price_model"
require_relative "orb/models/new_billing_cycle_configuration_model"
require_relative "orb/models/new_reporting_configuration_model"
require_relative "orb/models/new_subscription_price_model"
require_relative "orb/models/new_tax_configuration_model"
require_relative "orb/models/package_config_model"
require_relative "orb/models/pagination_metadata"
require_relative "orb/models/pagination_metadata_model"
require_relative "orb/models/payment_attempt_model"
require_relative "orb/models/percentage_discount"
require_relative "orb/models/percentage_discount_interval_model"
require_relative "orb/models/percentage_discount_model"
require_relative "orb/models/plan"
require_relative "orb/models/plan_create_params"
require_relative "orb/models/plan_fetch_params"
require_relative "orb/models/plan_list_params"
require_relative "orb/models/plan_minified_model"
require_relative "orb/models/plan_model"
require_relative "orb/models/plans/external_plan_id_fetch_params"
require_relative "orb/models/plans/external_plan_id_update_params"
require_relative "orb/models/plan_update_params"
require_relative "orb/models/price"
require_relative "orb/models/price_create_params"
require_relative "orb/models/price_evaluate_params"
require_relative "orb/models/price_evaluate_response"
require_relative "orb/models/price_fetch_params"
require_relative "orb/models/price_interval_fixed_fee_quantity_transition_model"
require_relative "orb/models/price_interval_model"
require_relative "orb/models/price_list_params"
require_relative "orb/models/price_model"
require_relative "orb/models/prices/external_price_id_fetch_params"
require_relative "orb/models/prices/external_price_id_update_params"
require_relative "orb/models/price_update_params"
require_relative "orb/models/remove_subscription_adjustment_params"
require_relative "orb/models/remove_subscription_price_params"
require_relative "orb/models/replace_subscription_adjustment_params"
require_relative "orb/models/replace_subscription_price_params"
require_relative "orb/models/sub_line_item_grouping_model"
require_relative "orb/models/subscription"
require_relative "orb/models/subscription_cancel_params"
require_relative "orb/models/subscription_create_params"
require_relative "orb/models/subscription_fetch_costs_params"
require_relative "orb/models/subscription_fetch_costs_response"
require_relative "orb/models/subscription_fetch_params"
require_relative "orb/models/subscription_fetch_schedule_params"
require_relative "orb/models/subscription_fetch_schedule_response"
require_relative "orb/models/subscription_fetch_usage_params"
require_relative "orb/models/subscription_list_params"
require_relative "orb/models/subscription_minified_model"
require_relative "orb/models/subscription_model"
require_relative "orb/models/subscription_price_intervals_params"
require_relative "orb/models/subscriptions"
require_relative "orb/models/subscription_schedule_plan_change_params"
require_relative "orb/models/subscriptions_model"
require_relative "orb/models/subscription_trial_info_model"
require_relative "orb/models/subscription_trigger_phase_params"
require_relative "orb/models/subscription_unschedule_cancellation_params"
require_relative "orb/models/subscription_unschedule_fixed_fee_quantity_updates_params"
require_relative "orb/models/subscription_unschedule_pending_plan_changes_params"
require_relative "orb/models/subscription_update_fixed_fee_quantity_params"
require_relative "orb/models/subscription_update_params"
require_relative "orb/models/subscription_update_trial_params"
require_relative "orb/models/subscription_usage"
require_relative "orb/models/tax_amount_model"
require_relative "orb/models/threshold_model"
require_relative "orb/models/tiered_bps_config_model"
require_relative "orb/models/tiered_config_model"
require_relative "orb/models/top_level_ping_params"
require_relative "orb/models/top_level_ping_response"
require_relative "orb/models/top_up_model"
require_relative "orb/models/top_ups_model"
require_relative "orb/models/trial_discount"
require_relative "orb/models/trial_discount_model"
require_relative "orb/models/unit_config_model"
require_relative "orb/models/usage_discount_interval_model"
require_relative "orb/models/usage_model"
require_relative "orb/resources/alerts"
require_relative "orb/resources/coupons"
require_relative "orb/resources/coupons/subscriptions"
require_relative "orb/resources/credit_notes"
require_relative "orb/resources/customers"
require_relative "orb/resources/customers/balance_transactions"
require_relative "orb/resources/customers/costs"
require_relative "orb/resources/customers/credits"
require_relative "orb/resources/customers/credits/ledger"
require_relative "orb/resources/customers/credits/top_ups"
require_relative "orb/resources/dimensional_price_groups"
require_relative "orb/resources/dimensional_price_groups/external_dimensional_price_group_id"
require_relative "orb/resources/events"
require_relative "orb/resources/events/backfills"
require_relative "orb/resources/events/volume"
require_relative "orb/resources/invoice_line_items"
require_relative "orb/resources/invoices"
require_relative "orb/resources/items"
require_relative "orb/resources/metrics"
require_relative "orb/resources/plans"
require_relative "orb/resources/plans/external_plan_id"
require_relative "orb/resources/prices"
require_relative "orb/resources/prices/external_price_id"
require_relative "orb/resources/subscriptions"
require_relative "orb/resources/top_level"
