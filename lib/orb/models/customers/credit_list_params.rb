# frozen_string_literal: true

module Orb
  module Models
    module Customers
      # @see Orb::Resources::Customers::Credits#list
      class CreditListParams < Orb::Internal::Type::BaseModel
        # @!parse
        #   extend Orb::Internal::Type::RequestParameters::Converter
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

        # @!attribute [r] include_all_blocks
        #   If set to True, all expired and depleted blocks, as well as active block will be
        #   returned.
        #
        #   @return [Boolean, nil]
        optional :include_all_blocks, Orb::Internal::Type::Boolean

        # @!parse
        #   # @return [Boolean]
        #   attr_writer :include_all_blocks

        # @!attribute [r] limit
        #   The number of items to fetch. Defaults to 20.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!parse
        #   # @return [Integer]
        #   attr_writer :limit

        # @!parse
        #   # @param currency [String, nil]
        #   # @param cursor [String, nil]
        #   # @param include_all_blocks [Boolean]
        #   # @param limit [Integer]
        #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
        #   #
        #   def initialize(currency: nil, cursor: nil, include_all_blocks: nil, limit: nil, request_options: {}, **) = super

        # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void
      end
    end
  end
end
