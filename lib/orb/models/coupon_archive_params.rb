# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Coupons#archive
    class CouponArchiveParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute coupon_id
      #
      #   @return [String]
      required :coupon_id, String

      # @!method initialize(coupon_id:, request_options: {})
      #   @param coupon_id [String]
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
