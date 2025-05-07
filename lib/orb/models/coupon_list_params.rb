# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Coupons#list
    class CouponListParams < Orb::Internal::Type::BaseModel
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

      # @!attribute redemption_code
      #   Filter to coupons matching this redemption code.
      #
      #   @return [String, nil]
      optional :redemption_code, String, nil?: true

      # @!attribute show_archived
      #   Show archived coupons as well (by default, this endpoint only returns active
      #   coupons).
      #
      #   @return [Boolean, nil]
      optional :show_archived, Orb::Internal::Type::Boolean, nil?: true

      # @!method initialize(cursor: nil, limit: nil, redemption_code: nil, show_archived: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::CouponListParams} for more details.
      #
      #   @param cursor [String, nil] Cursor for pagination. This can be populated by the `next_cursor` value returned
      #
      #   @param limit [Integer] The number of items to fetch. Defaults to 20.
      #
      #   @param redemption_code [String, nil] Filter to coupons matching this redemption code.
      #
      #   @param show_archived [Boolean, nil] Show archived coupons as well (by default, this endpoint only returns active cou
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
