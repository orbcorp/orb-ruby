# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::SubscriptionChanges#list
    class SubscriptionChangeListParams < Orb::Internal::Type::BaseModel
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

      # @!attribute external_customer_id
      #
      #   @return [String, nil]
      optional :external_customer_id, String, nil?: true

      # @!attribute limit
      #   The number of items to fetch. Defaults to 20.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::SubscriptionChangeListParams::Status, nil]
      optional :status, enum: -> { Orb::SubscriptionChangeListParams::Status }, nil?: true

      # @!method initialize(cursor: nil, customer_id: nil, external_customer_id: nil, limit: nil, status: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionChangeListParams} for more details.
      #
      #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #
      #   @param customer_id [String, nil]
      #
      #   @param external_customer_id [String, nil]
      #
      #   @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      #   @param status [Symbol, Orb::Models::SubscriptionChangeListParams::Status, nil]
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      module Status
        extend Orb::Internal::Type::Enum

        PENDING = :pending
        APPLIED = :applied
        CANCELLED = :cancelled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
