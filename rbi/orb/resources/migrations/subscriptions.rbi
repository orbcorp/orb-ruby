# typed: strong

module Orb
  module Resources
    class Migrations
      # A migration moves a plan's subscriptions onto one of the plan's versions. Each
      # subscription is migrated asynchronously, either immediately or at a scheduled
      # time, and the migration reports its overall status as it progresses.
      class Subscriptions
        # This endpoint returns the subscriptions a migration applies to, with the status
        # of each one. A subscription that could not be migrated has the status `failed`
        # and a `failure_reason`.
        #
        # The list is empty until the migration has finished selecting its subscriptions.
        # Once a migration is canceled, only the subscriptions it processed before the
        # cancellation are returned.
        sig do
          params(
            migration_id: String,
            cursor: T.nilable(String),
            limit: Integer,
            status:
              T.nilable(
                T::Array[
                  Orb::Migrations::SubscriptionListParams::Status::OrSymbol
                ]
              ),
            subscription_id: T.nilable(T::Array[String]),
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Internal::Page[Orb::MigrationSubscription])
        end
        def list(
          migration_id,
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          # from the initial request.
          cursor: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          # Only return subscriptions with one of these statuses.
          status: nil,
          # Only return these subscriptions. Up to 100 IDs.
          subscription_id: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
