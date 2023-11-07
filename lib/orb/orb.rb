require "orb/base_client"
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
    def make_status_error(err_msg:, body:, response:)
      type = (body["type"] if body.is_a? Hash)
      if type ==
           "https://docs.withorb.com/reference/error-responses#400-constraint-violation"
        return(
          Orb::HTTP::ConstraintViolation.new(
            err_msg: err_msg,
            response: response,
            body: body
          )
        )
      end
      if type ==
           "https://docs.withorb.com/reference/error-responses#400-duplicate-resource-creation"
        return(
          Orb::HTTP::DuplicateResourceCreation.new(
            err_msg: err_msg,
            response: response,
            body: body
          )
        )
      end
      if type ==
           "https://docs.withorb.com/reference/error-responses#404-feature-not-available"
        return(
          Orb::HTTP::FeatureNotAvailable.new(
            err_msg: err_msg,
            response: response,
            body: body
          )
        )
      end
      if type ==
           "https://docs.withorb.com/reference/error-responses#400-request-validation-errors"
        return(
          Orb::HTTP::RequestValidationError.new(
            err_msg: err_msg,
            response: response,
            body: body
          )
        )
      end
      if type ==
           "https://docs.withorb.com/reference/error-responses#401-authentication-error"
        return(
          Orb::HTTP::OrbAuthenticationError.new(
            err_msg: err_msg,
            response: response,
            body: body
          )
        )
      end
      if type ==
           "https://docs.withorb.com/reference/error-responses#404-resource-not-found"
        return(
          Orb::HTTP::ResourceNotFound.new(
            err_msg: err_msg,
            response: response,
            body: body
          )
        )
      end
      if type ==
           "https://docs.withorb.com/reference/error-responses#404-url-not-found"
        return(
          Orb::HTTP::URLNotFound.new(
            err_msg: err_msg,
            response: response,
            body: body
          )
        )
      end
      if type ==
           "https://docs.withorb.com/reference/error-responses#409-resource-conflict"
        return(
          Orb::HTTP::ResourceConflict.new(
            err_msg: err_msg,
            response: response,
            body: body
          )
        )
      end
      if type ==
           "https://docs.withorb.com/reference/error-responses#413-request-too-large"
        return(
          Orb::HTTP::RequestTooLarge.new(
            err_msg: err_msg,
            response: response,
            body: body
          )
        )
      end
      if type ==
           "https://docs.withorb.com/reference/error-responses#413-resource-too-large"
        return(
          Orb::HTTP::ResourceTooLarge.new(
            err_msg: err_msg,
            response: response,
            body: body
          )
        )
      end
      if type ==
           "https://docs.withorb.com/reference/error-responses#429-too-many-requests"
        return(
          Orb::HTTP::TooManyRequests.new(
            err_msg: err_msg,
            response: response,
            body: body
          )
        )
      end
      if type ==
           "https://docs.withorb.com/reference/error-responses#500-internal-server-error"
        return(
          Orb::HTTP::OrbInternalServerError.new(
            err_msg: err_msg,
            response: response,
            body: body
          )
        )
      end
      case response.code.to_i
      when 500..599
        Orb::HTTP::OrbInternalServerError.new(
          err_msg: err_msg,
          response: response,
          body: {
            status => 500,
            type =>
              "https://docs.withorb.com/reference/error-responses#500-internal-server-error",
            detail => nil,
            title => nil
          }
        )
      when 400
        Orb::HTTP::BadRequestError.new(
          err_msg: err_msg,
          response: response,
          body: body
        )
      when 401
        Orb::HTTP::AuthenticationError.new(
          err_msg: err_msg,
          response: response,
          body: body
        )
      when 403
        Orb::HTTP::PermissionDeniedError.new(
          err_msg: err_msg,
          response: response,
          body: body
        )
      when 404
        Orb::HTTP::NotFoundError.new(
          err_msg: err_msg,
          response: response,
          body: body
        )
      when 409
        Orb::HTTP::ConflictError.new(
          err_msg: err_msg,
          response: response,
          body: body
        )
      when 422
        Orb::HTTP::UnprocessableEntityError.new(
          err_msg: err_msg,
          response: response,
          body: body
        )
      when 429
        Orb::HTTP::RateLimitError.new(
          err_msg: err_msg,
          response: response,
          body: body
        )
      when 500..599
        Orb::HTTP::InternalServerError.new(
          err_msg: err_msg,
          response: response,
          body: body
        )
      else
        Orb::HTTP::APIStatusError.new(
          err_msg: err_msg,
          response: response,
          body: body
        )
      end
    end
  end
end
