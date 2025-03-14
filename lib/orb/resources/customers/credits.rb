# frozen_string_literal: true

module Orb
  module Resources
    class Customers
      class Credits
        # @return [Orb::Resources::Customers::Credits::Ledger]
        attr_reader :ledger

        # @return [Orb::Resources::Customers::Credits::TopUps]
        attr_reader :top_ups

        # Returns a paginated list of unexpired, non-zero credit blocks for a customer.
        #
        #   If `include_all_blocks` is set to `true`, all credit blocks (including expired
        #   and depleted blocks) will be included in the response.
        #
        #   Note that `currency` defaults to credits if not specified. To use a real world
        #   currency, set `currency` to an ISO 4217 string.
        #
        # @param customer_id [String]
        #
        # @param params [Orb::Models::Customers::CreditListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String, nil] :currency The ledger currency or custom pricing unit to use.
        #
        #   @option params [String, nil] :cursor Cursor for pagination. This can be populated by the `next_cursor` value returned
        #     from the initial request.
        #
        #   @option params [Boolean] :include_all_blocks If set to True, all expired and depleted blocks, as well as active block will be
        #     returned.
        #
        #   @option params [Integer] :limit The number of items to fetch. Defaults to 20.
        #
        #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Orb::Page<Orb::Models::Customers::CreditListResponse>]
        def list(customer_id, params = {})
          parsed, options = Orb::Models::Customers::CreditListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["customers/%0s/credits", customer_id],
            query: parsed,
            page: Orb::Page,
            model: Orb::Models::Customers::CreditListResponse,
            options: options
          )
        end

        # Returns a paginated list of unexpired, non-zero credit blocks for a customer.
        #
        #   If `include_all_blocks` is set to `true`, all credit blocks (including expired
        #   and depleted blocks) will be included in the response.
        #
        #   Note that `currency` defaults to credits if not specified. To use a real world
        #   currency, set `currency` to an ISO 4217 string.
        #
        # @param external_customer_id [String]
        #
        # @param params [Orb::Models::Customers::CreditListByExternalIDParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String, nil] :currency The ledger currency or custom pricing unit to use.
        #
        #   @option params [String, nil] :cursor Cursor for pagination. This can be populated by the `next_cursor` value returned
        #     from the initial request.
        #
        #   @option params [Boolean] :include_all_blocks If set to True, all expired and depleted blocks, as well as active block will be
        #     returned.
        #
        #   @option params [Integer] :limit The number of items to fetch. Defaults to 20.
        #
        #   @option params [Orb::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Orb::Page<Orb::Models::Customers::CreditListByExternalIDResponse>]
        def list_by_external_id(external_customer_id, params = {})
          parsed, options = Orb::Models::Customers::CreditListByExternalIDParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["customers/external_customer_id/%0s/credits", external_customer_id],
            query: parsed,
            page: Orb::Page,
            model: Orb::Models::Customers::CreditListByExternalIDResponse,
            options: options
          )
        end

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
