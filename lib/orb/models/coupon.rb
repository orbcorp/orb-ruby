require 'orb/model'
module Orb
    module Models
        class Coupon < Orb::Model

                # @!attribute [rw] id
                required :id, String
                # @!attribute [rw] archived_at
                required :archived_at, String
                # @!attribute [rw] discount
                required :discount, Orb::Unknown
                # @!attribute [rw] duration_in_months
                required :duration_in_months, Integer
                # @!attribute [rw] max_redemptions
                required :max_redemptions, Integer
                # @!attribute [rw] redemption_code
                required :redemption_code, String
                # @!attribute [rw] times_redeemed
                required :times_redeemed, Integer

        end
    end
end