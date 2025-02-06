# typed: strong

module Orb
  module Models
    class CouponCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
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

      sig { returns(String) }
      attr_accessor :redemption_code

      sig { returns(T.nilable(Integer)) }
      attr_accessor :duration_in_months

      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_redemptions

      sig do
        params(
          discount: T.any(
            Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount,
            Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount
          ),
          redemption_code: String,
          duration_in_months: T.nilable(Integer),
          max_redemptions: T.nilable(Integer),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
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

      sig do
        override.returns(
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

      class Discount < Orb::Union
        abstract!

        class NewCouponPercentageDiscount < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :discount_type

          sig { returns(Float) }
          attr_accessor :percentage_discount

          sig { params(percentage_discount: Float, discount_type: Symbol).void }
          def initialize(percentage_discount:, discount_type: :percentage)
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

          sig { params(amount_discount: String, discount_type: Symbol).void }
          def initialize(amount_discount:, discount_type: :amount)
          end

          sig { override.returns({amount_discount: String, discount_type: Symbol}) }
          def to_hash
          end
        end

        sig do
          override.returns(
            [
              [Symbol, Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount],
              [Symbol, Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount]
            ]
          )
        end
        private_class_method def self.variants
        end
      end
    end
  end
end
