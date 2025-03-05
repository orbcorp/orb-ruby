# frozen_string_literal: true

module Orb
  module Models
    class CouponRedemptionModel < Orb::BaseModel
      # @!attribute coupon_id
      #
      #   @return [String]
      required :coupon_id, String

      # @!attribute end_date
      #
      #   @return [Time, nil]
      required :end_date, Time, nil?: true

      # @!attribute start_date
      #
      #   @return [Time]
      required :start_date, Time

      # @!parse
      #   # @param coupon_id [String]
      #   # @param end_date [Time, nil]
      #   # @param start_date [Time]
      #   #
      #   def initialize(coupon_id:, end_date:, start_date:, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void
    end
  end
end
