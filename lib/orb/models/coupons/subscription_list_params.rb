# frozen_string_literal: true

module Orb
  module Models
    module Coupons
      # @see Orb::Resources::Coupons::Subscriptions#list
      class SubscriptionListParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        # @!attribute coupon_id
        #
        #   @return [String]
        required :coupon_id, String

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

        # @!method initialize(coupon_id:, cursor: nil, limit: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Coupons::SubscriptionListParams} for more details.
        #
        #   @param coupon_id [String]
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
