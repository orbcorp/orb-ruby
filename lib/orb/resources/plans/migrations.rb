# frozen_string_literal: true

module Orb
  module Resources
    class Plans
      class Migrations
        # Fetch migration
        #
        # @overload retrieve(migration_id, plan_id:, request_options: {})
        #
        # @param migration_id [String]
        # @param plan_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Plans::MigrationRetrieveResponse]
        #
        # @see Orb::Models::Plans::MigrationRetrieveParams
        def retrieve(migration_id, params)
          parsed, options = Orb::Plans::MigrationRetrieveParams.dump_request(params)
          plan_id =
            parsed.delete(:plan_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["plans/%1$s/migrations/%2$s", plan_id, migration_id],
            model: Orb::Models::Plans::MigrationRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Orb::Models::Plans::MigrationListParams} for more details.
        #
        # This endpoint returns a list of all migrations for a plan. The list of
        # migrations is ordered starting from the most recently created migration. The
        # response also includes pagination_metadata, which lets the caller retrieve the
        # next page of results if they exist.
        #
        # @overload list(plan_id, cursor: nil, limit: nil, request_options: {})
        #
        # @param plan_id [String]
        #
        # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
        #
        # @param limit [Integer] The number of items to fetch. Defaults to 20.
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Internal::Page<Orb::Models::Plans::MigrationListResponse>]
        #
        # @see Orb::Models::Plans::MigrationListParams
        def list(plan_id, params = {})
          parsed, options = Orb::Plans::MigrationListParams.dump_request(params)
          query = Orb::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["plans/%1$s/migrations", plan_id],
            query: query,
            page: Orb::Internal::Page,
            model: Orb::Models::Plans::MigrationListResponse,
            options: options
          )
        end

        # This endpoint cancels a migration.
        #
        # @overload cancel(migration_id, plan_id:, request_options: {})
        #
        # @param migration_id [String]
        # @param plan_id [String]
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Models::Plans::MigrationCancelResponse]
        #
        # @see Orb::Models::Plans::MigrationCancelParams
        def cancel(migration_id, params)
          parsed, options = Orb::Plans::MigrationCancelParams.dump_request(params)
          plan_id =
            parsed.delete(:plan_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["plans/%1$s/migrations/%2$s/cancel", plan_id, migration_id],
            model: Orb::Models::Plans::MigrationCancelResponse,
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
