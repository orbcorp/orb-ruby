# frozen_string_literal: true

module Orb
  module Models
    module Migrations
      # @see Orb::Resources::Migrations::Subscriptions#list
      class SubscriptionListParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute migration_id
        #
        #   @return [String]
        required :migration_id, String

        # @!attribute cursor
        #   Cursor for pagination. This can be populated by the `next_cursor` value returned
        #   from the initial request.
        #
        #   @return [String, nil]
        optional :cursor, String, nil?: true

        # @!attribute limit
        #   The number of items to fetch. Defaults to 20.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute status
        #   Only return subscriptions with one of these statuses.
        #
        #   @return [Array<Symbol, Orb::Models::Migrations::SubscriptionListParams::Status>, nil]
        optional :status,
                 -> { Orb::Internal::Type::ArrayOf[enum: Orb::Migrations::SubscriptionListParams::Status] },
                 nil?: true

        # @!attribute subscription_id
        #   Only return these subscriptions. Up to 100 IDs.
        #
        #   @return [Array<String>, nil]
        optional :subscription_id, Orb::Internal::Type::ArrayOf[String], nil?: true

        # @!method initialize(migration_id:, cursor: nil, limit: nil, status: nil, subscription_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Migrations::SubscriptionListParams} for more details.
        #
        #   @param migration_id [String]
        #
        #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
        #
        #   @param limit [Integer] The number of items to fetch. Defaults to 20.
        #
        #   @param status [Array<Symbol, Orb::Models::Migrations::SubscriptionListParams::Status>, nil] Only return subscriptions with one of these statuses.
        #
        #   @param subscription_id [Array<String>, nil] Only return these subscriptions. Up to 100 IDs.
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

        module Status
          extend Orb::Internal::Type::Enum

          SCHEDULING = :scheduling
          SCHEDULED = :scheduled
          COMPLETED = :completed
          SKIPPED = :skipped
          FAILED = :failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
