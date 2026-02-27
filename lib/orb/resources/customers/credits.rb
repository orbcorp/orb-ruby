# frozen_string_literal: true

module Orb
  module Resources
    class Customers
      class Credits
        # @return [Orb::Resources::Customers::Credits::Ledger]
        attr_reader :ledger

        # @return [Orb::Resources::Customers::Credits::TopUps]
        attr_reader :top_ups

        # Some parameter documentations has been truncated, see
        # {Orb::Models::Customers::CreditListParams} for more details.
        #
        # Returns a paginated list of unexpired, non-zero credit blocks for a customer.
        #
        # If `include_all_blocks` is set to `true`, all credit blocks (including expired
        # and depleted blocks) will be included in the response.
        #
        # Note that `currency` defaults to credits if not specified. To use a real world
        # currency, set `currency` to an ISO 4217 string.
        #
        # Results can be filtered by the block's `effective_date` using the
        # `effective_date[gte]`, `effective_date[gt]`, `effective_date[lt]`, and
        # `effective_date[lte]` query parameters. This filters on when the credit block
        # becomes effective, which may differ from creation time for backdated credits.
        #
        # @overload list(customer_id, currency: nil, cursor: nil, effective_date_gt: nil, effective_date_gte: nil, effective_date_lt: nil, effective_date_lte: nil, include_all_blocks: nil, limit: nil, request_options: {})
        #
        # @param customer_id [String]
        #
        # @param currency [String, nil] The ledger currency or custom pricing unit to use.
        #
        # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
        #
        # @param effective_date_gt [Time, nil]
        #
        # @param effective_date_gte [Time, nil]
        #
        # @param effective_date_lt [Time, nil]
        #
        # @param effective_date_lte [Time, nil]
        #
        # @param include_all_blocks [Boolean] If set to True, all expired and depleted blocks, as well as active block will be
        #
        # @param limit [Integer] The number of items to fetch. Defaults to 20.
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Internal::Page<Orb::Models::Customers::CreditListResponse>]
        #
        # @see Orb::Models::Customers::CreditListParams
        def list(customer_id, params = {})
          parsed, options = Orb::Customers::CreditListParams.dump_request(params)
          query = Orb::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["customers/%1$s/credits", customer_id],
            query: query.transform_keys(
              effective_date_gt: "effective_date[gt]",
              effective_date_gte: "effective_date[gte]",
              effective_date_lt: "effective_date[lt]",
              effective_date_lte: "effective_date[lte]"
            ),
            page: Orb::Internal::Page,
            model: Orb::Models::Customers::CreditListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Orb::Models::Customers::CreditListByExternalIDParams} for more details.
        #
        # Returns a paginated list of unexpired, non-zero credit blocks for a customer.
        #
        # If `include_all_blocks` is set to `true`, all credit blocks (including expired
        # and depleted blocks) will be included in the response.
        #
        # Note that `currency` defaults to credits if not specified. To use a real world
        # currency, set `currency` to an ISO 4217 string.
        #
        # Results can be filtered by the block's `effective_date` using the
        # `effective_date[gte]`, `effective_date[gt]`, `effective_date[lt]`, and
        # `effective_date[lte]` query parameters. This filters on when the credit block
        # becomes effective, which may differ from creation time for backdated credits.
        #
        # @overload list_by_external_id(external_customer_id, currency: nil, cursor: nil, effective_date_gt: nil, effective_date_gte: nil, effective_date_lt: nil, effective_date_lte: nil, include_all_blocks: nil, limit: nil, request_options: {})
        #
        # @param external_customer_id [String]
        #
        # @param currency [String, nil] The ledger currency or custom pricing unit to use.
        #
        # @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
        #
        # @param effective_date_gt [Time, nil]
        #
        # @param effective_date_gte [Time, nil]
        #
        # @param effective_date_lt [Time, nil]
        #
        # @param effective_date_lte [Time, nil]
        #
        # @param include_all_blocks [Boolean] If set to True, all expired and depleted blocks, as well as active block will be
        #
        # @param limit [Integer] The number of items to fetch. Defaults to 20.
        #
        # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Orb::Internal::Page<Orb::Models::Customers::CreditListByExternalIDResponse>]
        #
        # @see Orb::Models::Customers::CreditListByExternalIDParams
        def list_by_external_id(external_customer_id, params = {})
          parsed, options = Orb::Customers::CreditListByExternalIDParams.dump_request(params)
          query = Orb::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["customers/external_customer_id/%1$s/credits", external_customer_id],
            query: query.transform_keys(
              effective_date_gt: "effective_date[gt]",
              effective_date_gte: "effective_date[gte]",
              effective_date_lt: "effective_date[lt]",
              effective_date_lte: "effective_date[lte]"
            ),
            page: Orb::Internal::Page,
            model: Orb::Models::Customers::CreditListByExternalIDResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Orb::Client]
        def initialize(client:)
          @client = client
          @ledger = Orb::Resources::Customers::Credits::Ledger.new(client: client)
          @top_ups = Orb::Resources::Customers::Credits::TopUps.new(client: client)
        end
      end
    end
  end
end
