# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Migrations#list
    class MigrationListParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute cursor
      #   Cursor for pagination. This can be populated by the `next_cursor` value returned
      #   from the initial request.
      #
      #   @return [String, nil]
      optional :cursor, String, nil?: true

      # @!attribute external_plan_id
      #
      #   @return [String, nil]
      optional :external_plan_id, String, nil?: true

      # @!attribute limit
      #   The number of items to fetch. Defaults to 20.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute plan_id
      #
      #   @return [String, nil]
      optional :plan_id, String, nil?: true

      # @!method initialize(cursor: nil, external_plan_id: nil, limit: nil, plan_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::MigrationListParams} for more details.
      #
      #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #
      #   @param external_plan_id [String, nil]
      #
      #   @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      #   @param plan_id [String, nil]
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
