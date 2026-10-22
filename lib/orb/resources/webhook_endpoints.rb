# frozen_string_literal: true

module Orb
  module Resources
    # A webhook endpoint is an HTTPS URL that Orb sends
    # [webhook events](/integrations-and-exports/webhooks) to.
    class WebhookEndpoints
      # Some parameter documentations has been truncated, see
      # {Orb::Models::WebhookEndpointCreateParams} for more details.
      #
      # This endpoint creates a webhook endpoint and returns the secret used to sign its
      # webhook events. The secret isn't returned by any other endpoint. An account can
      # have at most 20 webhook endpoints by default.
      #
      # @overload create(url:, enabled_event_types: nil, payload_style: nil, request_options: {})
      #
      # @param url [String] The HTTPS URL that Orb sends webhook events to.
      #
      # @param enabled_event_types [Array<String>, nil] The webhook event types to send to this endpoint. If omitted or null, all event
      #
      # @param payload_style [Symbol, Orb::Models::WebhookEndpointCreateParams::PayloadStyle, nil] The payload style of the webhook events sent to this endpoint. If omitted or nul
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::WebhookEndpointWithSecret]
      #
      # @see Orb::Models::WebhookEndpointCreateParams
      def create(params)
        parsed, options = Orb::WebhookEndpointCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "webhook_endpoints",
          body: parsed,
          model: Orb::WebhookEndpointWithSecret,
          options: options
        )
      end

      # This endpoint returns a webhook endpoint identified by its ID.
      #
      # @overload retrieve(webhook_endpoint_id, request_options: {})
      #
      # @param webhook_endpoint_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::WebhookEndpoint]
      #
      # @see Orb::Models::WebhookEndpointRetrieveParams
      def retrieve(webhook_endpoint_id, params = {})
        @client.request(
          method: :get,
          path: ["webhook_endpoints/%1$s", webhook_endpoint_id],
          model: Orb::WebhookEndpoint,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::WebhookEndpointUpdateParams} for more details.
      #
      # This endpoint updates a webhook endpoint's URL or the event types sent to it.
      #
      # @overload update(webhook_endpoint_id, enabled_event_types: nil, payload_style: nil, url: nil, request_options: {})
      #
      # @param webhook_endpoint_id [String]
      #
      # @param enabled_event_types [Array<String>, nil] The webhook event types to send to this endpoint. Null sends all event types; om
      #
      # @param payload_style [Symbol, Orb::Models::WebhookEndpointUpdateParams::PayloadStyle, nil] The payload style of the webhook events sent to this endpoint. Applies to events
      #
      # @param url [String, nil] The HTTPS URL that Orb sends webhook events to.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::WebhookEndpoint]
      #
      # @see Orb::Models::WebhookEndpointUpdateParams
      def update(webhook_endpoint_id, params = {})
        parsed, options = Orb::WebhookEndpointUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["webhook_endpoints/%1$s", webhook_endpoint_id],
          body: parsed,
          model: Orb::WebhookEndpoint,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::WebhookEndpointListParams} for more details.
      #
      # This endpoint returns the account's webhook endpoints, ordered starting from the
      # most recently created.
      #
      # @overload list(cursor: nil, limit: nil, request_options: {})
      #
      # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #
      # @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Models::WebhookEndpoint>]
      #
      # @see Orb::Models::WebhookEndpointListParams
      def list(params = {})
        parsed, options = Orb::WebhookEndpointListParams.dump_request(params)
        query = Orb::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "webhook_endpoints",
          query: query,
          page: Orb::Internal::Page,
          model: Orb::WebhookEndpoint,
          options: options
        )
      end

      # This endpoint deletes a webhook endpoint. Orb stops sending webhook events to it
      # immediately.
      #
      # @overload delete(webhook_endpoint_id, request_options: {})
      #
      # @param webhook_endpoint_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Orb::Models::WebhookEndpointDeleteParams
      def delete(webhook_endpoint_id, params = {})
        @client.request(
          method: :delete,
          path: ["webhook_endpoints/%1$s", webhook_endpoint_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # This endpoint disables a webhook endpoint, so Orb stops sending webhook events
      # to it until it is enabled again.
      #
      # @overload disable(webhook_endpoint_id, request_options: {})
      #
      # @param webhook_endpoint_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::WebhookEndpoint]
      #
      # @see Orb::Models::WebhookEndpointDisableParams
      def disable(webhook_endpoint_id, params = {})
        @client.request(
          method: :post,
          path: ["webhook_endpoints/%1$s/disable", webhook_endpoint_id],
          model: Orb::WebhookEndpoint,
          options: params[:request_options]
        )
      end

      # This endpoint enables a webhook endpoint, so Orb resumes sending webhook events
      # to it.
      #
      # @overload enable(webhook_endpoint_id, request_options: {})
      #
      # @param webhook_endpoint_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::WebhookEndpoint]
      #
      # @see Orb::Models::WebhookEndpointEnableParams
      def enable(webhook_endpoint_id, params = {})
        @client.request(
          method: :post,
          path: ["webhook_endpoints/%1$s/enable", webhook_endpoint_id],
          model: Orb::WebhookEndpoint,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
