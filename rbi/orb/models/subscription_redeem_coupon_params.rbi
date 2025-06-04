# typed: strong

module Orb
  module Models
    class SubscriptionRedeemCouponParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::SubscriptionRedeemCouponParams, Orb::Internal::AnyHash)
        end

      sig do
        returns(Orb::SubscriptionRedeemCouponParams::ChangeOption::OrSymbol)
      end
      attr_accessor :change_option

      # If false, this request will fail if it would void an issued invoice or create a
      # credit note. Consider using this as a safety mechanism if you do not expect
      # existing invoices to be changed.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_invoice_credit_or_void

      # The date that the coupon discount should take effect. This parameter can only be
      # passed if the `change_option` is `requested_date`.
      sig { returns(T.nilable(Time)) }
      attr_accessor :change_date

      # Coupon ID to be redeemed for this subscription.
      sig { returns(T.nilable(String)) }
      attr_accessor :coupon_id

      # Redemption code of the coupon to be redeemed for this subscription.
      sig { returns(T.nilable(String)) }
      attr_accessor :coupon_redemption_code

      sig do
        params(
          change_option:
            Orb::SubscriptionRedeemCouponParams::ChangeOption::OrSymbol,
          allow_invoice_credit_or_void: T.nilable(T::Boolean),
          change_date: T.nilable(Time),
          coupon_id: T.nilable(String),
          coupon_redemption_code: T.nilable(String),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        change_option:,
        # If false, this request will fail if it would void an issued invoice or create a
        # credit note. Consider using this as a safety mechanism if you do not expect
        # existing invoices to be changed.
        allow_invoice_credit_or_void: nil,
        # The date that the coupon discount should take effect. This parameter can only be
        # passed if the `change_option` is `requested_date`.
        change_date: nil,
        # Coupon ID to be redeemed for this subscription.
        coupon_id: nil,
        # Redemption code of the coupon to be redeemed for this subscription.
        coupon_redemption_code: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            change_option:
              Orb::SubscriptionRedeemCouponParams::ChangeOption::OrSymbol,
            allow_invoice_credit_or_void: T.nilable(T::Boolean),
            change_date: T.nilable(Time),
            coupon_id: T.nilable(String),
            coupon_redemption_code: T.nilable(String),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      module ChangeOption
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::SubscriptionRedeemCouponParams::ChangeOption)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REQUESTED_DATE =
          T.let(
            :requested_date,
            Orb::SubscriptionRedeemCouponParams::ChangeOption::TaggedSymbol
          )
        END_OF_SUBSCRIPTION_TERM =
          T.let(
            :end_of_subscription_term,
            Orb::SubscriptionRedeemCouponParams::ChangeOption::TaggedSymbol
          )
        IMMEDIATE =
          T.let(
            :immediate,
            Orb::SubscriptionRedeemCouponParams::ChangeOption::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::SubscriptionRedeemCouponParams::ChangeOption::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
