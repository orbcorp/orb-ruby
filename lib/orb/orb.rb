require "orb/resources/coupons/coupons"
require "orb/resources/credit_notes"
require "orb/resources/customers/customers"
require "orb/resources/events/events"
require "orb/resources/invoice_line_items"
require "orb/resources/invoices"
require "orb/resources/items"
require "orb/resources/metrics"
require "orb/resources/plans/plans"
require "orb/resources/prices/prices"
require "orb/resources/subscriptions"
require "orb/resources/top_level"
require "orb/base_client"

require "orb/base_pagination"

require "orb/pooled_net_requester"

require "orb/util"

module Orb
  class Client < Orb::BaseClient
    attr_reader(
      :default_params,
      :top_level,
      :coupons,
      :credit_notes,
      :customers,
      :events,
      :invoice_line_items,
      :invoices,
      :items,
      :metrics,
      :plans,
      :prices,
      :subscriptions
    )
    def auth_headers
      { "Authorization" => "Bearer #{@api_key}" }
    end
    def initialize(
      environment: nil,
      api_key: nil,
      requester: nil,
      base_url: nil
    )
      environments = { production: "https://api.withorb.com/v1" }
      @default_headers = {}
      @default_params = {}
      @api_key = [api_key, ENV["ORB_API_KEY"]].find { |value| !value.nil? }
      super(
        server_uri_string: environments[environment&.to_sym] || base_url,
        headers: @default_headers
      )

      @requester = requester || Orb::PooledNetRequester.new
      @top_level = Orb::Resources::TopLevelResource.new(client: self)
      @coupons = Orb::Resources::CouponsResource.new(client: self)
      @credit_notes = Orb::Resources::CreditNotesResource.new(client: self)
      @customers = Orb::Resources::CustomersResource.new(client: self)
      @events = Orb::Resources::EventsResource.new(client: self)
      @invoice_line_items =
        Orb::Resources::InvoiceLineItemsResource.new(client: self)
      @invoices = Orb::Resources::InvoicesResource.new(client: self)
      @items = Orb::Resources::ItemsResource.new(client: self)
      @metrics = Orb::Resources::MetricsResource.new(client: self)
      @plans = Orb::Resources::PlansResource.new(client: self)
      @prices = Orb::Resources::PricesResource.new(client: self)
      @subscriptions = Orb::Resources::SubscriptionsResource.new(client: self)
    end
  end
end
