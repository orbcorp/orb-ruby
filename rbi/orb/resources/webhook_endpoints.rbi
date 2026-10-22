# typed: strong

module Orb
  module Resources
    # A webhook endpoint is an HTTPS URL that Orb sends
    # [webhook events](/integrations-and-exports/webhooks) to.
    class WebhookEndpoints
      # This endpoint creates a webhook endpoint and returns the secret used to sign its
      # webhook events. The secret isn't returned by any other endpoint. An account can
      # have at most 20 webhook endpoints by default.
      sig do
        params(
          url: String,
          enabled_event_types: T.nilable(T::Array[String]),
          payload_style:
            T.nilable(Orb::WebhookEndpointCreateParams::PayloadStyle::OrSymbol),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::WebhookEndpointWithSecret)
      end
      def create(
        # The HTTPS URL that Orb sends webhook events to.
        url:,
        # The webhook event types to send to this endpoint. If omitted or null, all event
        # types are sent.
        enabled_event_types: nil,
        # The payload style of the webhook events sent to this endpoint. If omitted or
        # null, the account's default style is used.
        payload_style: nil,
        request_options: {}
      )
      end

      # This endpoint returns a webhook endpoint identified by its ID.
      sig do
        params(
          webhook_endpoint_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::WebhookEndpoint)
      end
      def retrieve(webhook_endpoint_id, request_options: {})
      end

      # This endpoint updates a webhook endpoint's URL or the event types sent to it.
      sig do
        params(
          webhook_endpoint_id: String,
          enabled_event_types: T.nilable(T::Array[String]),
          payload_style:
            T.nilable(Orb::WebhookEndpointUpdateParams::PayloadStyle::OrSymbol),
          url: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::WebhookEndpoint)
      end
      def update(
        webhook_endpoint_id,
        # The webhook event types to send to this endpoint. Null sends all event types;
        # omit to leave them unchanged.
        enabled_event_types: nil,
        # The payload style of the webhook events sent to this endpoint. Applies to events
        # created after the change; omit to leave it unchanged.
        payload_style: nil,
        # The HTTPS URL that Orb sends webhook events to.
        url: nil,
        request_options: {}
      )
      end

      # This endpoint returns the account's webhook endpoints, ordered starting from the
      # most recently created.
      sig do
        params(
          cursor: T.nilable(String),
          limit: Integer,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Internal::Page[Orb::WebhookEndpoint])
      end
      def list(
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        request_options: {}
      )
      end

      # This endpoint deletes a webhook endpoint. Orb stops sending webhook events to it
      # immediately.
      sig do
        params(
          webhook_endpoint_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).void
      end
      def delete(webhook_endpoint_id, request_options: {})
      end

      # This endpoint disables a webhook endpoint, so Orb stops sending webhook events
      # to it until it is enabled again.
      sig do
        params(
          webhook_endpoint_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::WebhookEndpoint)
      end
      def disable(webhook_endpoint_id, request_options: {})
      end

      # This endpoint enables a webhook endpoint, so Orb resumes sending webhook events
      # to it.
      sig do
        params(
          webhook_endpoint_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::WebhookEndpoint)
      end
      def enable(webhook_endpoint_id, request_options: {})
      end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
