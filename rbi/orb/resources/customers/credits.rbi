# typed: strong

module Orb
  module Resources
    class Customers
      class Credits
        sig { returns(Orb::Resources::Customers::Credits::Ledger) }
        attr_reader :ledger

        sig { returns(Orb::Resources::Customers::Credits::TopUps) }
        attr_reader :top_ups

        # Returns a paginated list of unexpired, non-zero credit blocks for a customer.
        #
        # If `include_all_blocks` is set to `true`, all credit blocks (including expired
        # and depleted blocks) will be included in the response.
        #
        # Note that `currency` defaults to credits if not specified. To use a real world
        # currency, set `currency` to an ISO 4217 string.
        sig do
          params(
            customer_id: String,
            currency: T.nilable(String),
            cursor: T.nilable(String),
            include_all_blocks: T::Boolean,
            limit: Integer,
            request_options: Orb::RequestOpts
          )
            .returns(Orb::Internal::Page[Orb::Models::Customers::CreditListResponse])
        end
        def list(
          customer_id,
          # The ledger currency or custom pricing unit to use.
          currency: nil,
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          # from the initial request.
          cursor: nil,
          # If set to True, all expired and depleted blocks, as well as active block will be
          # returned.
          include_all_blocks: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          request_options: {}
        ); end
        # Returns a paginated list of unexpired, non-zero credit blocks for a customer.
        #
        # If `include_all_blocks` is set to `true`, all credit blocks (including expired
        # and depleted blocks) will be included in the response.
        #
        # Note that `currency` defaults to credits if not specified. To use a real world
        # currency, set `currency` to an ISO 4217 string.
        sig do
          params(
            external_customer_id: String,
            currency: T.nilable(String),
            cursor: T.nilable(String),
            include_all_blocks: T::Boolean,
            limit: Integer,
            request_options: Orb::RequestOpts
          )
            .returns(Orb::Internal::Page[Orb::Models::Customers::CreditListByExternalIDResponse])
        end
        def list_by_external_id(
          external_customer_id,
          # The ledger currency or custom pricing unit to use.
          currency: nil,
          # Cursor for pagination. This can be populated by the `next_cursor` value returned
          # from the initial request.
          cursor: nil,
          # If set to True, all expired and depleted blocks, as well as active block will be
          # returned.
          include_all_blocks: nil,
          # The number of items to fetch. Defaults to 20.
          limit: nil,
          request_options: {}
        ); end
        # @api private
        sig { params(client: Orb::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
