# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#redeem_coupon
    class SubscriptionRedeemCouponParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute change_option
      #
      #   @return [Symbol, Orb::Models::SubscriptionRedeemCouponParams::ChangeOption]
      required :change_option, enum: -> { Orb::SubscriptionRedeemCouponParams::ChangeOption }

      # @!attribute allow_invoice_credit_or_void
      #   If false, this request will fail if it would void an issued invoice or create a
      #   credit note. Consider using this as a safety mechanism if you do not expect
      #   existing invoices to be changed.
      #
      #   @return [Boolean, nil]
      optional :allow_invoice_credit_or_void, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute change_date
      #   The date that the coupon discount should take effect. This parameter can only be
      #   passed if the `change_option` is `requested_date`.
      #
      #   @return [Time, nil]
      optional :change_date, Time, nil?: true

      # @!attribute coupon_id
      #   Coupon ID to be redeemed for this subscription.
      #
      #   @return [String, nil]
      optional :coupon_id, String, nil?: true

      # @!attribute coupon_redemption_code
      #   Redemption code of the coupon to be redeemed for this subscription.
      #
      #   @return [String, nil]
      optional :coupon_redemption_code, String, nil?: true

      # @!method initialize(change_option:, allow_invoice_credit_or_void: nil, change_date: nil, coupon_id: nil, coupon_redemption_code: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionRedeemCouponParams} for more details.
      #
      #   @param change_option [Symbol, Orb::Models::SubscriptionRedeemCouponParams::ChangeOption]
      #
      #   @param allow_invoice_credit_or_void [Boolean, nil] If false, this request will fail if it would void an issued invoice or create a
      #
      #   @param change_date [Time, nil] The date that the coupon discount should take effect. This parameter can only be
      #
      #   @param coupon_id [String, nil] Coupon ID to be redeemed for this subscription.
      #
      #   @param coupon_redemption_code [String, nil] Redemption code of the coupon to be redeemed for this subscription.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      module ChangeOption
        extend Orb::Internal::Type::Enum

        REQUESTED_DATE = :requested_date
        END_OF_SUBSCRIPTION_TERM = :end_of_subscription_term
        IMMEDIATE = :immediate

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
