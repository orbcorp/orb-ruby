# typed: strong

module Orb
  module Models
    class CouponCreateParams < Orb::BaseModel
      extend Orb::Type::RequestParameters::Converter
      include Orb::RequestParameters

      sig do
        returns(
          T.any(
            Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount,
            Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount
          )
        )
      end
      attr_accessor :discount

      # This string can be used to redeem this coupon for a given subscription.
      sig { returns(String) }
      attr_accessor :redemption_code

      # This allows for a coupon's discount to apply for a limited time (determined in
      #   months); a `null` value here means "unlimited time".
      sig { returns(T.nilable(Integer)) }
      attr_accessor :duration_in_months

      # The maximum number of redemptions allowed for this coupon before it is
      #   exhausted;`null` here means "unlimited".
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_redemptions

      sig do
        params(
          discount: T.any(
            Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount,
            Orb::Util::AnyHash,
            Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount
          ),
          redemption_code: String,
          duration_in_months: T.nilable(Integer),
          max_redemptions: T.nilable(Integer),
          request_options: T.any(Orb::RequestOptions, Orb::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        discount:,
        redemption_code:,
        duration_in_months: nil,
        max_redemptions: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              discount: T.any(
                Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount,
                Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount
              ),
              redemption_code: String,
              duration_in_months: T.nilable(Integer),
              max_redemptions: T.nilable(Integer),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      module Discount
        extend Orb::Union

        class NewCouponPercentageDiscount < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :discount_type

          sig { returns(Float) }
          attr_accessor :percentage_discount

          sig { params(percentage_discount: Float, discount_type: Symbol).returns(T.attached_class) }
          def self.new(percentage_discount:, discount_type: :percentage)
          end

          sig { override.returns({discount_type: Symbol, percentage_discount: Float}) }
          def to_hash
          end
        end

        class NewCouponAmountDiscount < Orb::BaseModel
          sig { returns(String) }
          attr_accessor :amount_discount

          sig { returns(Symbol) }
          attr_accessor :discount_type

          sig { params(amount_discount: String, discount_type: Symbol).returns(T.attached_class) }
          def self.new(amount_discount:, discount_type: :amount)
          end

          sig { override.returns({amount_discount: String, discount_type: Symbol}) }
          def to_hash
          end
        end

        sig do
          override
            .returns(
              [Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount, Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount]
            )
        end
        def self.variants
        end
      end
    end
  end
end
