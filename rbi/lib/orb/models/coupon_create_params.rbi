# typed: strong

module Orb
  module Models
    class CouponCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            discount: Orb::Models::CouponCreateParams::Discount::Variants,
            redemption_code: String,
            duration_in_months: T.nilable(Integer),
            max_redemptions: T.nilable(Integer)
          },
          Orb::RequestParameters::Shape
        )
      end

      sig { returns(Orb::Models::CouponCreateParams::Discount::Variants) }
      attr_accessor :discount

      sig { returns(String) }
      attr_accessor :redemption_code

      sig { returns(T.nilable(Integer)) }
      attr_accessor :duration_in_months

      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_redemptions

      sig do
        params(
          discount: Orb::Models::CouponCreateParams::Discount::Variants,
          redemption_code: String,
          duration_in_months: T.nilable(Integer),
          max_redemptions: T.nilable(Integer),
          request_options: Orb::RequestOpts
        ).void
      end
      def initialize(
        discount:,
        redemption_code:,
        duration_in_months: nil,
        max_redemptions: nil,
        request_options: {}
      )
      end

      sig { returns(Orb::Models::CouponCreateParams::Shape) }
      def to_h; end

      class Discount < Orb::Union
        abstract!

        Variants = T.type_alias do
          T.any(
            Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount,
            Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount
          )
        end

        class NewCouponPercentageDiscount < Orb::BaseModel
          Shape = T.type_alias { {discount_type: Symbol, percentage_discount: Float} }

          sig { returns(Symbol) }
          attr_accessor :discount_type

          sig { returns(Float) }
          attr_accessor :percentage_discount

          sig { params(percentage_discount: Float, discount_type: Symbol).void }
          def initialize(percentage_discount:, discount_type: :percentage); end

          sig { returns(Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount::Shape) }
          def to_h; end
        end

        class NewCouponAmountDiscount < Orb::BaseModel
          Shape = T.type_alias { {amount_discount: String, discount_type: Symbol} }

          sig { returns(String) }
          attr_accessor :amount_discount

          sig { returns(Symbol) }
          attr_accessor :discount_type

          sig { params(amount_discount: String, discount_type: Symbol).void }
          def initialize(amount_discount:, discount_type: :amount); end

          sig { returns(Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount::Shape) }
          def to_h; end
        end

        sig do
          override.returns(
            [
              [Symbol, Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount],
              [Symbol, Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount]
            ]
          )
        end
        private_class_method def self.variants; end
      end
    end
  end
end
