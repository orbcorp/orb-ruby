# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Plans#list
    class PlanListParams < Orb::Internal::Type::BaseModel
      # @!parse
      #   extend Orb::Internal::Type::RequestParameters::Converter
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

      # @!attribute [r] limit
      #   The number of items to fetch. Defaults to 20.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute [r] status
      #   The plan status to filter to ('active', 'archived', or 'draft').
      #
      #   @return [Symbol, Orb::Models::PlanListParams::Status, nil]
      optional :status, enum: -> { Orb::Models::PlanListParams::Status }

      # @!parse
      #   # @return [Symbol, Orb::Models::PlanListParams::Status]
      #   attr_writer :status

      # @!parse
      #   # @param created_at_gt [Time, nil]
      #   # @param created_at_gte [Time, nil]
      #   # @param created_at_lt [Time, nil]
      #   # @param created_at_lte [Time, nil]
      #   # @param cursor [String, nil]
      #   # @param limit [Integer]
      #   # @param status [Symbol, Orb::Models::PlanListParams::Status]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     created_at_gt: nil,
      #     created_at_gte: nil,
      #     created_at_lt: nil,
      #     created_at_lte: nil,
      #     cursor: nil,
      #     limit: nil,
      #     status: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::Internal::Type::BaseModel) -> void

      # The plan status to filter to ('active', 'archived', or 'draft').
      module Status
        extend Orb::Internal::Type::Enum

        ACTIVE = :active
        ARCHIVED = :archived
        DRAFT = :draft

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
