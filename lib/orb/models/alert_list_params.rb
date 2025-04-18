# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Alerts#list
    class AlertListParams < Orb::Internal::Type::BaseModel
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

      # @!attribute customer_id
      #   Fetch alerts scoped to this customer_id
      #
      #   @return [String, nil]
      optional :customer_id, String, nil?: true

      # @!attribute external_customer_id
      #   Fetch alerts scoped to this external_customer_id
      #
      #   @return [String, nil]
      optional :external_customer_id, String, nil?: true

      # @!attribute [r] limit
      #   The number of items to fetch. Defaults to 20.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute subscription_id
      #   Fetch alerts scoped to this subscription_id
      #
      #   @return [String, nil]
      optional :subscription_id, String, nil?: true

      # @!method initialize(created_at_gt: nil, created_at_gte: nil, created_at_lt: nil, created_at_lte: nil, cursor: nil, customer_id: nil, external_customer_id: nil, limit: nil, subscription_id: nil, request_options: {})
      #   @param created_at_gt [Time, nil]
      #   @param created_at_gte [Time, nil]
      #   @param created_at_lt [Time, nil]
      #   @param created_at_lte [Time, nil]
      #   @param cursor [String, nil]
      #   @param customer_id [String, nil]
      #   @param external_customer_id [String, nil]
      #   @param limit [Integer]
      #   @param subscription_id [String, nil]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
