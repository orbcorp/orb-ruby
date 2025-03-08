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
      def discount
      end

      sig do
        params(
          _: T.any(
            Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount,
            Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount
          )
        )
          .returns(
            T.any(
              Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount,
              Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount
            )
          )
      end
      def discount=(_)
      end

      sig { returns(String) }
      def redemption_code
      end

      sig { params(_: String).returns(String) }
      def redemption_code=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def duration_in_months
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def duration_in_months=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def max_redemptions
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def max_redemptions=(_)
      end

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
        )
          .returns(T.attached_class)
      end
      def self.new(discount:, redemption_code:, duration_in_months: nil, max_redemptions: nil, request_options: {})
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

      class Discount < Orb::Union
        abstract!

        class NewCouponPercentageDiscount < Orb::BaseModel
          sig { returns(Symbol) }
          def discount_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def discount_type=(_)
          end

          sig { returns(Float) }
          def percentage_discount
          end

          sig { params(_: Float).returns(Float) }
          def percentage_discount=(_)
          end

          sig { params(percentage_discount: Float, discount_type: Symbol).returns(T.attached_class) }
          def self.new(percentage_discount:, discount_type: :percentage)
          end

          sig { override.returns({discount_type: Symbol, percentage_discount: Float}) }
          def to_hash
          end
        end

        class NewCouponAmountDiscount < Orb::BaseModel
          sig { returns(String) }
          def amount_discount
          end

          sig { params(_: String).returns(String) }
          def amount_discount=(_)
          end

          sig { returns(Symbol) }
          def discount_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def discount_type=(_)
          end

          sig { params(amount_discount: String, discount_type: Symbol).returns(T.attached_class) }
          def self.new(amount_discount:, discount_type: :amount)
          end

          sig { override.returns({amount_discount: String, discount_type: Symbol}) }
          def to_hash
          end
        end

        class << self
          sig do
            override
              .returns(
                [[Symbol, Orb::Models::CouponCreateParams::Discount::NewCouponPercentageDiscount], [Symbol, Orb::Models::CouponCreateParams::Discount::NewCouponAmountDiscount]]
              )
          end
          private def variants
          end
        end
      end
    end
  end
end
