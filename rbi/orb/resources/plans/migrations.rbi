# typed: strong

module Orb
  module Resources
    class Plans
      # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      # subscribed to by a customer. Plans define the billing behavior of the
      # subscription. You can see more about how to configure prices in the
      # [Price resource](/reference/price).
      class Migrations
        # Fetch migration
        sig do
          params(
            migration_id: String,
            plan_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Models::Plans::MigrationRetrieveResponse)
        end
        def retrieve(migration_id, plan_id:, request_options: {})
        end

        # This endpoint returns a list of all migrations for a plan. The list of
        # migrations is ordered starting from the most recently created migration. The
        # response also includes pagination_metadata, which lets the caller retrieve the
        # next page of results if they exist.
        sig do
          params(
            plan_id: String,
            cursor: T.nilable(String),
            limit: Integer,
            request_options: Orb::RequestOptions::OrHash
          ).returns(
            Orb::Internal::Page[Orb::Models::Plans::MigrationListResponse]
          )
        end
        def list(
          plan_id,
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          # from the initial request.
          cursor: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          request_options: {}
        )
        end

        # This endpoint cancels a migration.
        sig do
          params(
            migration_id: String,
            plan_id: String,
            request_options: Orb::RequestOptions::OrHash
          ).returns(Orb::Models::Plans::MigrationCancelResponse)
        end
        def cancel(migration_id, plan_id:, request_options: {})
        end

        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
