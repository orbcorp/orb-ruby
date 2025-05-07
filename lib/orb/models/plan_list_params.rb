# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Plans#list
    class PlanListParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute created_at_gt
      #
      #   @return [Time, nil]
      optional :created_at_gt, Time, nil?: true

      # @!attribute created_at_gte
      #
      #   @return [Time, nil]
      optional :created_at_gte, Time, nil?: true

      # @!attribute created_at_lt
      #
      #   @return [Time, nil]
      optional :created_at_lt, Time, nil?: true

      # @!attribute created_at_lte
      #
      #   @return [Time, nil]
      optional :created_at_lte, Time, nil?: true

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
      #   The plan status to filter to ('active', 'archived', or 'draft').
      #
      #   @return [Symbol, Orb::PlanListParams::Status, nil]
      optional :status, enum: -> { Orb::PlanListParams::Status }

      # @!method initialize(created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, cursor: nil, limit: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::PlanListParams} for more details.
      #
      #   @param created_at_gt [Time, nil]
      #
      #   @param created_at_gte [Time, nil]
      #
      #   @param created_at_lt [Time, nil]
      #
      #   @param created_at_lte [Time, nil]
      #
      #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #
      #   @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      #   @param status [Symbol, Orb::PlanListParams::Status] The plan status to filter to ('active', 'archived', or 'draft').
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      # The plan status to filter to ('active', 'archived', or 'draft').
      module Status
        extend Orb::Internal::Type::Enum

        ACTIVE = :active
        ARCHIVED = :archived
        DRAFT = :draft

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
