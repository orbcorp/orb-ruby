# frozen_string_literal: true

module Orb
  module Resources
    class Migrations
      # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      # subscribed to by a customer. Plans define the billing behavior of the
      # subscription. You can see more about how to configure prices in the
      # [Price resource](/reference/price).
      class Subscriptions
        # Some parameter documentations has been truncated, see
        # {Orb::Models::Migrations::SubscriptionListParams} for more details.
        #
        # This endpoint returns the subscriptions a migration applies to, with the status
        # of each one. A subscription that could not be migrated has the status `failed`
        # and a `failure_reason`.
        #
        # The list is empty until the migration has finished selecting its subscriptions.
        # Once a migration is canceled, only the subscriptions it processed before the
        # cancellation are returned.
        #
        # @overload list(migration_id, cursor: nil, limit: nil, status: nil, subscription_id: nil, request_options: {})
        #
        # @param migration_id [String]
        #
        # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
        #
        # @param limit [Integer] The number of items to fetch. Defaults to 20.
        #
        # @param status [Array<Symbol, Orb::Models::Migrations::SubscriptionListParams::Status>, nil] Only return subscriptions with one of these statuses.
        #
        # @param subscription_id [Array<String>, nil] Only return these subscriptions. Up to 100 IDs.
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Internal::Page<Orb::Models::MigrationSubscription>]
        #
        # @see Orb::Models::Migrations::SubscriptionListParams
        def list(migration_id, params = {})
          parsed, options = Orb::Migrations::SubscriptionListParams.dump_request(params)
          query = Orb::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["migrations/%1$s/subscriptions", migration_id],
            query: query,
            page: Orb::Internal::Page,
            model: Orb::MigrationSubscription,
            options: options
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
end
