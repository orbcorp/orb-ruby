# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#fetch_schedule
    class SubscriptionFetchScheduleParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

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

      # @!attribute start_date_gt
      #
      #   @return [Time, nil]
      optional :start_date_gt, Time, nil?: true

      # @!attribute start_date_gte
      #
      #   @return [Time, nil]
      optional :start_date_gte, Time, nil?: true

      # @!attribute start_date_lt
      #
      #   @return [Time, nil]
      optional :start_date_lt, Time, nil?: true

      # @!attribute start_date_lte
      #
      #   @return [Time, nil]
      optional :start_date_lte, Time, nil?: true

      # @!method initialize(cursor: nil, limit: nil, start_date_gt: nil, start_date_gte: nil, start_date_lt: nil, start_date_lte: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionFetchScheduleParams} for more details.
      #
      #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #   ...
      #
      #   @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      #   @param start_date_gt [Time, nil]
      #
      #   @param start_date_gte [Time, nil]
      #
      #   @param start_date_lt [Time, nil]
      #
      #   @param start_date_lte [Time, nil]
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
