# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        # @see Orb::Resources::Customers::Credits::TopUps#list
        class TopUpListParams < Orb::Internal::Type::BaseModel
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

          # @!method initialize(cursor: nil, limit: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Customers::Credits::TopUpListParams} for more details.
          #
          #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
          #
          #   @param limit [Integer] The number of items to fetch. Defaults to 20.
          #
          #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
