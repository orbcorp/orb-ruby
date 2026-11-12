# frozen_string_literal: true

module Orb
  module Resources
    # A migration moves a plan's subscriptions onto one of the plan's versions. Each
    # subscription is migrated asynchronously, either immediately or at a scheduled
    # time, and the migration reports its overall status as it progresses.
    class Migrations
      # A migration moves a plan's subscriptions onto one of the plan's versions. Each
      # subscription is migrated asynchronously, either immediately or at a scheduled
      # time, and the migration reports its overall status as it progresses.
      # @return [Orb::Resources::Migrations::Subscriptions]
      attr_reader :subscriptions

      # Some parameter documentations has been truncated, see
      # {Orb::Models::MigrationCreateParams} for more details.
      #
      # This endpoint creates a migration of a plan's subscriptions to one of its
      # versions. With `included_subscription_ids` it migrates exactly those
      # subscriptions; otherwise it migrates the plan's subscriptions that match the
      # filters. Each subscription is migrated asynchronously; fetch the migration to
      # follow its status.
      #
      # @overload create(effective_time:, target_plan_version_number:, allow_invoice_credit_or_void: nil, can_defer_billing: nil, effective_date: nil, excluded_subscription_ids: nil, external_plan_id: nil, in_trial: nil, included_subscription_ids: nil, plan_id: nil, plan_version_numbers: nil, reason: nil, statuses: nil, request_options: {})
      #
      # @param effective_time [Symbol, Orb::Models::MigrationCreateParams::EffectiveTime] When the migration takes effect: 'immediately', 'requested_date' on `effective_d
      #
      # @param target_plan_version_number [Integer] The plan version to migrate subscriptions to. It can't be a draft version.
      #
      # @param allow_invoice_credit_or_void [Boolean] When false, a subscription whose migration would void an issued invoice or creat
      #
      # @param can_defer_billing [Boolean] When true, an in-arrears price the migration ends mid-cycle bills its final line
      #
      # @param effective_date [Date, nil] The date the migration takes effect, at midnight in each customer's timezone. Re
      #
      # @param excluded_subscription_ids [Array<String>, nil] Leave these subscriptions out. Can't be combined with `included_subscription_ids
      #
      # @param external_plan_id [String, nil] The external ID of the plan whose subscriptions to migrate.
      #
      # @param in_trial [Boolean, nil] `true` migrates only subscriptions in a trial, `false` only subscriptions not in
      #
      # @param included_subscription_ids [Array<String>, nil] Migrate only these subscriptions. When set, the filters below are ignored.
      #
      # @param plan_id [String, nil] The plan whose subscriptions to migrate. Exactly one of `plan_id` and
      # `external\_
      #
      # @param plan_version_numbers [Array<Integer>, nil] Migrate only subscriptions currently on these plan versions.
      #
      # @param reason [String, nil] Why the migration was created.
      #
      # @param statuses [Array<Symbol, Orb::Models::MigrationCreateParams::Status>] Migrate subscriptions with these statuses. Defaults to active subscriptions.
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::MigrationCreateResponse]
      #
      # @see Orb::Models::MigrationCreateParams
      def create(params)
        parsed, options = Orb::MigrationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "migrations",
          body: parsed,
          model: Orb::Models::MigrationCreateResponse,
          options: options
        )
      end

      # This endpoint returns a migration identified by its ID.
      #
      # @overload retrieve(migration_id, request_options: {})
      #
      # @param migration_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::MigrationRetrieveResponse]
      #
      # @see Orb::Models::MigrationRetrieveParams
      def retrieve(migration_id, params = {})
        @client.request(
          method: :get,
          path: ["migrations/%1$s", migration_id],
          model: Orb::Models::MigrationRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Orb::Models::MigrationListParams} for more details.
      #
      # This endpoint returns a list of migrations across all plans in the account,
      # optionally filtered by plan (`plan_id` or `external_plan_id`). The list of
      # migrations is ordered starting from the most recently created migration. The
      # response also includes pagination_metadata, which lets the caller retrieve the
      # next page of results if they exist.
      #
      # @overload list(cursor: nil, external_plan_id: nil, limit: nil, plan_id: nil, request_options: {})
      #
      # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #
      # @param external_plan_id [String, nil]
      #
      # @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      # @param plan_id [String, nil]
      #
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Internal::Page<Orb::Models::MigrationListResponse>]
      #
      # @see Orb::Models::MigrationListParams
      def list(params = {})
        parsed, options = Orb::MigrationListParams.dump_request(params)
        query = Orb::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "migrations",
          query: query,
          page: Orb::Internal::Page,
          model: Orb::Models::MigrationListResponse,
          options: options
        )
      end

      # This endpoint cancels a migration identified by its ID.
      #
      # @overload cancel(migration_id, request_options: {})
      #
      # @param migration_id [String]
      # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Orb::Models::MigrationCancelResponse]
      #
      # @see Orb::Models::MigrationCancelParams
      def cancel(migration_id, params = {})
        @client.request(
          method: :post,
          path: ["migrations/%1$s/cancel", migration_id],
          model: Orb::Models::MigrationCancelResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Orb::Client]
      def initialize(client:)
        @client = client
        @subscriptions = Orb::Resources::Migrations::Subscriptions.new(client: client)
      end
    end
  end
end
