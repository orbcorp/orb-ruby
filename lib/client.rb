require 'resources/coupons/coupons'
require 'resources/coupons/subscriptions'
require 'resources/credit_notes'
require 'resources/customers/balance_transactions'
require 'resources/customers/costs'
require 'resources/customers/credits/credits'
require 'resources/customers/credits/ledger'
require 'resources/customers/customers'
require 'resources/customers/usage'
require 'resources/events/backfills'
require 'resources/events/events'
require 'resources/invoice_line_items'
require 'resources/invoices'
require 'resources/items'
require 'resources/metrics'
require 'resources/plans/external_plan_id'
require 'resources/plans/plans'
require 'resources/prices/external_price_id'
require 'resources/prices/prices'
require 'resources/subscriptions'
require 'resources/top_level'
# api_key

require 'base_client'

require 'pooled_net_requester'

class Client < BaseClient

        attr_reader(:default_params, :resources_top_level_resource, :resources_coupons_resource, :resources_coupons_subscriptions_resource, :resources_credit_notes_resource, :resources_customers_resource, :resources_customers_costs_resource, :resources_customers_usage_resource, :resources_customers_credits_resource, :resources_customers_credits_ledger_resource, :resources_customers_balance_transactions_resource, :resources_events_resource, :resources_events_backfills_resource, :resources_invoice_line_items_resource, :resources_invoices_resource, :resources_items_resource, :resources_metrics_resource, :resources_plans_resource, :resources_plans_external_plan_id_resource, :resources_prices_resource, :resources_prices_external_price_id_resource, :resources_subscriptions_resource)
        def auth_headers
            {"Authorization" => "Bearer #{@api_key}"}
        end
        def initialize(environment:, api_key:nil, requester:nil)
            environments = {production: "https://api.withorb.com/v1"}
            @default_headers = {}
            @default_params = {}
            @api_key = [
                  api_key, ENV['ORB_API_KEY']].find {|value| !value.nil?}
            super(server_uri_string: environments[environment.to_sym], headers: @default_headers)

            @requester = requester || PooledNetRequester.new
            @resources_top_level_resource = Resources::TopLevelResource.new(client: self)
            @resources_coupons_resource = Resources::CouponsResource.new(client: self)
            @resources_coupons_subscriptions_resource = Resources::Coupons::SubscriptionsResource.new(client: self)
            @resources_credit_notes_resource = Resources::CreditNotesResource.new(client: self)
            @resources_customers_resource = Resources::CustomersResource.new(client: self)
            @resources_customers_costs_resource = Resources::Customers::CostsResource.new(client: self)
            @resources_customers_usage_resource = Resources::Customers::UsageResource.new(client: self)
            @resources_customers_credits_resource = Resources::Customers::CreditsResource.new(client: self)
            @resources_customers_credits_ledger_resource = Resources::Customers::Credits::LedgerResource.new(client: self)
            @resources_customers_balance_transactions_resource = Resources::Customers::BalanceTransactionsResource.new(client: self)
            @resources_events_resource = Resources::EventsResource.new(client: self)
            @resources_events_backfills_resource = Resources::Events::BackfillsResource.new(client: self)
            @resources_invoice_line_items_resource = Resources::InvoiceLineItemsResource.new(client: self)
            @resources_invoices_resource = Resources::InvoicesResource.new(client: self)
            @resources_items_resource = Resources::ItemsResource.new(client: self)
            @resources_metrics_resource = Resources::MetricsResource.new(client: self)
            @resources_plans_resource = Resources::PlansResource.new(client: self)
            @resources_plans_external_plan_id_resource = Resources::Plans::ExternalPlanIDResource.new(client: self)
            @resources_prices_resource = Resources::PricesResource.new(client: self)
            @resources_prices_external_price_id_resource = Resources::Prices::ExternalPriceIDResource.new(client: self)
            @resources_subscriptions_resource = Resources::SubscriptionsResource.new(client: self)
        end

end

c = Client.new environment: 'local'
              pp c.resources_default_path_params_resource.global_with_standard nil, 'yarp'