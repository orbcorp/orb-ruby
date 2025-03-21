# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionListParams < Orb::BaseModel
      # @!parse
      #   extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute created_at_gt
      #
      #   @return [Time, nil]
      optional :created_at_gt, Time, api_name: :"created_at[gt]", nil?: true

      # @!attribute created_at_gte
      #
      #   @return [Time, nil]
      optional :created_at_gte, Time, api_name: :"created_at[gte]", nil?: true

      # @!attribute created_at_lt
      #
      #   @return [Time, nil]
      optional :created_at_lt, Time, api_name: :"created_at[lt]", nil?: true

      # @!attribute created_at_lte
      #
      #   @return [Time, nil]
      optional :created_at_lte, Time, api_name: :"created_at[lte]", nil?: true

      # @!attribute cursor
      #   Cursor for pagination. This can be populated by the `next_cursor` value returned
      #     from the initial request.
      #
      #   @return [String, nil]
      optional :cursor, String, nil?: true

      # @!attribute customer_id
      #
      #   @return [Array<String>, nil]
      optional :customer_id, Orb::ArrayOf[String], nil?: true

      # @!attribute external_customer_id
      #
      #   @return [Array<String>, nil]
      optional :external_customer_id, Orb::ArrayOf[String], nil?: true

      # @!attribute [r] limit
      #   The number of items to fetch. Defaults to 20.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!parse
      #   # @return [Integer]
      #   attr_writer :limit

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::SubscriptionListParams::Status, nil]
      optional :status, enum: -> { Orb::Models::SubscriptionListParams::Status }, nil?: true

      # @!parse
      #   # @param created_at_gt [Time, nil]
      #   # @param created_at_gte [Time, nil]
      #   # @param created_at_lt [Time, nil]
      #   # @param created_at_lte [Time, nil]
      #   # @param cursor [String, nil]
      #   # @param customer_id [Array<String>, nil]
      #   # @param external_customer_id [Array<String>, nil]
      #   # @param limit [Integer]
      #   # @param status [Symbol, Orb::Models::SubscriptionListParams::Status, nil]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     created_at_gt: nil,
      #     created_at_gte: nil,
      #     created_at_lt: nil,
      #     created_at_lte: nil,
      #     cursor: nil,
      #     customer_id: nil,
      #     external_customer_id: nil,
      #     limit: nil,
      #     status: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::BaseModel) -> void

      module Status
        extend Orb::Enum

        ACTIVE = :active
        ENDED = :ended
        UPCOMING = :upcoming

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
