# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::BalanceTransactions#list
      class BalanceTransactionListParams < Orb::Internal::Type::BaseModel
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

        # @!attribute operation_time_gt
        #
        #   @return [Time, nil]
        optional :operation_time_gt, Time, nil?: true

        # @!attribute operation_time_gte
        #
        #   @return [Time, nil]
        optional :operation_time_gte, Time, nil?: true

        # @!attribute operation_time_lt
        #
        #   @return [Time, nil]
        optional :operation_time_lt, Time, nil?: true

        # @!attribute operation_time_lte
        #
        #   @return [Time, nil]
        optional :operation_time_lte, Time, nil?: true

        # @!method initialize(cursor: nil, limit: nil, operation_time_gt: nil, operation_time_gte: nil, operation_time_lt: nil, operation_time_lte: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Customers::BalanceTransactionListParams} for more details.
        #
        #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
        #   ...
        #
        #   @param limit [Integer] The number of items to fetch. Defaults to 20.
        #
        #   @param operation_time_gt [Time, nil]
        #
        #   @param operation_time_gte [Time, nil]
        #
        #   @param operation_time_lt [Time, nil]
        #
        #   @param operation_time_lte [Time, nil]
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
