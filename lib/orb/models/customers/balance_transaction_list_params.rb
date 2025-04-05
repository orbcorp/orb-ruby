# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::BalanceTransactions#list
      class BalanceTransactionListParams < Orb::Internal::Type::BaseModel
        # @!parse
        #   extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute cursor
        #   Cursor for pagination. This can be populated by the `next_cursor` value returned
        #   from the initial request.
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

        # @!attribute operation_time_gt
        #
        #   @return [Time, nil]
        optional :operation_time_gt, Time, api_name: :"operation_time[gt]", nil?: true

        # @!attribute operation_time_gte
        #
        #   @return [Time, nil]
        optional :operation_time_gte, Time, api_name: :"operation_time[gte]", nil?: true

        # @!attribute operation_time_lt
        #
        #   @return [Time, nil]
        optional :operation_time_lt, Time, api_name: :"operation_time[lt]", nil?: true

        # @!attribute operation_time_lte
        #
        #   @return [Time, nil]
        optional :operation_time_lte, Time, api_name: :"operation_time[lte]", nil?: true

        # @!parse
        #   # @param cursor [String, nil]
        #   # @param limit [Integer]
        #   # @param operation_time_gt [Time, nil]
        #   # @param operation_time_gte [Time, nil]
        #   # @param operation_time_lt [Time, nil]
        #   # @param operation_time_lte [Time, nil]
        #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(
        #     cursor: nil,
        #     limit: nil,
        #     operation_time_gt: nil,
        #     operation_time_gte: nil,
        #     operation_time_lt: nil,
        #     operation_time_lte: nil,
        #     request_options: {},
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
      end
    end
  end
end
