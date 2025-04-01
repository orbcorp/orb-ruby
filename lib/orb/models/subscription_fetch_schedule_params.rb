# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#fetch_schedule
    class SubscriptionFetchScheduleParams < Orb::BaseModel
      # @!parse
      #   extend Orb::Type::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute cursor
      #   Cursor for pagination. This can be populated by the `next_cursor` value returned
      #     from the initial request.
      #
      #   @return [String, nil]
      optional :cursor, String, nil?: true

      # @!attribute [r] limit
      #   The number of items to fetch. Defaults to 20.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute start_date_gt
      #
      #   @return [Time, nil]
      optional :start_date_gt, Time, api_name: :"start_date[gt]", nil?: true

      # @!attribute start_date_gte
      #
      #   @return [Time, nil]
      optional :start_date_gte, Time, api_name: :"start_date[gte]", nil?: true

      # @!attribute start_date_lt
      #
      #   @return [Time, nil]
      optional :start_date_lt, Time, api_name: :"start_date[lt]", nil?: true

      # @!attribute start_date_lte
      #
      #   @return [Time, nil]
      optional :start_date_lte, Time, api_name: :"start_date[lte]", nil?: true

      # @!parse
      #   # @param cursor [String, nil]
      #   # @param limit [Integer]
      #   # @param start_date_gt [Time, nil]
      #   # @param start_date_gte [Time, nil]
      #   # @param start_date_lt [Time, nil]
      #   # @param start_date_lte [Time, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     cursor: nil,
      #     limit: nil,
      #     start_date_gt: nil,
      #     start_date_gte: nil,
      #     start_date_lt: nil,
      #     start_date_lte: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
