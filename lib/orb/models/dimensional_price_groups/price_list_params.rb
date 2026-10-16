# frozen_string_literal: true

module Orb
  module Models
    module DimensionalPriceGroups
      # @see Orb::Resources::DimensionalPriceGroups::Prices#list
      class PriceListParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute dimensional_price_group_id
        #
        #   @return [String]
        required :dimensional_price_group_id, String

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
        #   active omits archived prices. archived returns only archived prices. all returns
        #   both.
        #
        #   @return [Symbol, Orb::Models::DimensionalPriceGroups::PriceListParams::Status, nil]
        optional :status, enum: -> { Orb::DimensionalPriceGroups::PriceListParams::Status }

        # @!method initialize(dimensional_price_group_id:, cursor: nil, limit: nil, status: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::DimensionalPriceGroups::PriceListParams} for more details.
        #
        #   @param dimensional_price_group_id [String]
        #
        #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
        #
        #   @param limit [Integer] The number of items to fetch. Defaults to 20.
        #
        #   @param status [Symbol, Orb::Models::DimensionalPriceGroups::PriceListParams::Status] active omits archived prices. archived returns only archived prices. all returns
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

        # active omits archived prices. archived returns only archived prices. all returns
        # both.
        module Status
          extend Orb::Internal::Type::Enum

          ACTIVE = :active
          ARCHIVED = :archived
          ALL = :all

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
