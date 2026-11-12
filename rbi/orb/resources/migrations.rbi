# typed: strong

module Orb
  module Resources
    # A migration moves a plan's subscriptions onto one of the plan's versions. Each
    # subscription is migrated asynchronously, either immediately or at a scheduled
    # time, and the migration reports its overall status as it progresses.
    class Migrations
      # A migration moves a plan's subscriptions onto one of the plan's versions. Each
      # subscription is migrated asynchronously, either immediately or at a scheduled
      # time, and the migration reports its overall status as it progresses.
      sig { returns(Orb::Resources::Migrations::Subscriptions) }
      attr_reader :subscriptions

      # This endpoint creates a migration of a plan's subscriptions to one of its
      # versions. With `included_subscription_ids` it migrates exactly those
      # subscriptions; otherwise it migrates the plan's subscriptions that match the
      # filters. Each subscription is migrated asynchronously; fetch the migration to
      # follow its status.
      sig do
        params(
          effective_time: Orb::MigrationCreateParams::EffectiveTime::OrSymbol,
          target_plan_version_number: Integer,
          allow_invoice_credit_or_void: T::Boolean,
          can_defer_billing: T::Boolean,
          effective_date: T.nilable(Date),
          excluded_subscription_ids: T.nilable(T::Array[String]),
          external_plan_id: T.nilable(String),
          in_trial: T.nilable(T::Boolean),
          included_subscription_ids: T.nilable(T::Array[String]),
          plan_id: T.nilable(String),
          plan_version_numbers: T.nilable(T::Array[Integer]),
          reason: T.nilable(String),
          statuses: T::Array[Orb::MigrationCreateParams::Status::OrSymbol],
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::MigrationCreateResponse)
      end
      def create(
        # When the migration takes effect: 'immediately', 'requested_date' on
        # `effective_date`, 'start_of_term' or 'end_of_term' for the start or end of each
        # subscription's current billing period, or 'start_of_invoice' or 'end_of_invoice'
        # for the start of its current or next invoice.
        effective_time:,
        # The plan version to migrate subscriptions to. It can't be a draft version.
        target_plan_version_number:,
        # When false, a subscription whose migration would void an issued invoice or
        # create a credit note fails instead.
        allow_invoice_credit_or_void: nil,
        # When true, an in-arrears price the migration ends mid-cycle bills its final line
        # item on the next scheduled invoice instead of on its end date.
        can_defer_billing: nil,
        # The date the migration takes effect, at midnight in each customer's timezone.
        # Required when `effective_time` is `requested_date`, and not allowed otherwise.
        effective_date: nil,
        # Leave these subscriptions out. Can't be combined with
        # `included_subscription_ids`.
        excluded_subscription_ids: nil,
        # The external ID of the plan whose subscriptions to migrate.
        external_plan_id: nil,
        # `true` migrates only subscriptions in a trial, `false` only subscriptions not in
        # a trial.
        in_trial: nil,
        # Migrate only these subscriptions. When set, the filters below are ignored.
        included_subscription_ids: nil,
        # The plan whose subscriptions to migrate. Exactly one of `plan_id` and
        # `external_plan_id` is required.
        plan_id: nil,
        # Migrate only subscriptions currently on these plan versions.
        plan_version_numbers: nil,
        # Why the migration was created.
        reason: nil,
        # Migrate subscriptions with these statuses. Defaults to active subscriptions.
        statuses: nil,
        request_options: {}
      )
      end

      # This endpoint returns a migration identified by its ID.
      sig do
        params(
          migration_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::MigrationRetrieveResponse)
      end
      def retrieve(migration_id, request_options: {})
      end

      # This endpoint returns a list of migrations across all plans in the account,
      # optionally filtered by plan (`plan_id` or `external_plan_id`). The list of
      # migrations is ordered starting from the most recently created migration. The
      # response also includes pagination_metadata, which lets the caller retrieve the
      # next page of results if they exist.
      sig do
        params(
          cursor: T.nilable(String),
          external_plan_id: T.nilable(String),
          limit: Integer,
          plan_id: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Internal::Page[Orb::Models::MigrationListResponse])
      end
      def list(
        # Cursor for pagination. This can be populated by the `next_cursor` value returned
        # from the initial request.
        cursor: nil,
        external_plan_id: nil,
        # The number of items to fetch. Defaults to 20.
        limit: nil,
        plan_id: nil,
        request_options: {}
      )
      end

      # This endpoint cancels a migration identified by its ID.
      sig do
        params(
          migration_id: String,
          request_options: Orb::RequestOptions::OrHash
        ).returns(Orb::Models::MigrationCancelResponse)
      end
      def cancel(migration_id, request_options: {})
      end

      # @api private
      sig { params(client: Orb::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
