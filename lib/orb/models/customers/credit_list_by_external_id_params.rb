# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::Credits#list_by_external_id
      class CreditListByExternalIDParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute currency
        #   The ledger currency or custom pricing unit to use.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

        # @!attribute cursor
        #   Cursor for pagination. This can be populated by the `next_cursor` value returned
        #   from the initial request.
        #
        #   @return [String, nil]
        optional :cursor, String, nil?: true

        # @!attribute include_all_blocks
        #   If set to True, all expired and depleted blocks, as well as active block will be
        #   returned.
        #
        #   @return [Boolean, nil]
        optional :include_all_blocks, Orb::Internal::Type::Boolean

        # @!attribute limit
        #   The number of items to fetch. Defaults to 20.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(currency: nil, cursor: nil, include_all_blocks: nil, limit: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Customers::CreditListByExternalIDParams} for more details.
        #
        #   @param currency [String, nil] The ledger currency or custom pricing unit to use.
        #
        #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
        #   ...
        #
        #   @param include_all_blocks [Boolean] If set to True, all expired and depleted blocks, as well as active block will be
        #   ...
        #
        #   @param limit [Integer] The number of items to fetch. Defaults to 20.
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
