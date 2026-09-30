# frozen_string_literal: true

module Orb
  module Models
    module Events
      # @see Orb::Resources::Events::Backfills#list
      class BackfillListParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute cursor
        #   Cursor for pagination. This can be populated by the `next_cursor` value returned
        #   from the initial request.
        #
        #   @return [String, nil]
        optional :cursor, String, nil?: true

        # @!attribute customer_id
        #
        #   @return [String, nil]
        optional :customer_id, String, nil?: true

        # @!attribute limit
        #   The number of items to fetch. Defaults to 20.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute status
        #   The status of the backfill.
        #
        #   @return [Symbol, Orb::Models::Events::BackfillListParams::Status, nil]
        optional :status, enum: -> { Orb::Events::BackfillListParams::Status }, nil?: true

        # @!method initialize(cursor: nil, customer_id: nil, limit: nil, status: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Events::BackfillListParams} for more details.
        #
        #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
        #
        #   @param customer_id [String, nil]
        #
        #   @param limit [Integer] The number of items to fetch. Defaults to 20.
        #
        #   @param status [Symbol, Orb::Models::Events::BackfillListParams::Status, nil] The status of the backfill.
        #
        #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

        # The status of the backfill.
        module Status
          extend Orb::Internal::Type::Enum

          PENDING = :pending
          REFLECTED = :reflected
          PENDING_REVERT = :pending_revert
          REVERTED = :reverted

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
