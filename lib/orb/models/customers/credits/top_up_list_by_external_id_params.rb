# frozen_string_literal: true

module Orb
  module Models
    module Customers
      module Credits
        class TopUpListByExternalIDParams < Orb::BaseModel
          # @!parse
          #   extend Orb::RequestParameters::Converter
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

          # @!parse
          #   # @param cursor [String, nil]
          #   # @param limit [Integer]
          #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
          #   #
          #   def initialize(cursor: nil, limit: nil, request_options: {}, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end
    end
  end
end
