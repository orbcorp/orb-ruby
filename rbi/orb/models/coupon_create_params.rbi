# typed: strong

module Orb
  module Models
    class CouponCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::CouponCreateParams, Orb::Internal::AnyHash) }

      sig do
        returns(
          T.any(
            Orb::CouponCreateParams::Discount::Percentage,
            Orb::CouponCreateParams::Discount::Amount
          )
        )
      end
      attr_accessor :discount

      # This string can be used to redeem this coupon for a given subscription.
      sig { returns(String) }
      attr_accessor :redemption_code

      # This allows for a coupon's discount to apply for a limited time (determined in
      # months); a `null` value here means "unlimited time".
      sig { returns(T.nilable(Integer)) }
      attr_accessor :duration_in_months

      # The maximum number of redemptions allowed for this coupon before it is
      # exhausted;`null` here means "unlimited".
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_redemptions

      sig do
        params(
          discount:
            T.any(
              Orb::CouponCreateParams::Discount::Percentage::OrHash,
              Orb::CouponCreateParams::Discount::Amount::OrHash
            ),
          redemption_code: String,
          duration_in_months: T.nilable(Integer),
          max_redemptions: T.nilable(Integer),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        discount:,
        # This string can be used to redeem this coupon for a given subscription.
        redemption_code:,
        # This allows for a coupon's discount to apply for a limited time (determined in
        # months); a `null` value here means "unlimited time".
        duration_in_months: nil,
        # The maximum number of redemptions allowed for this coupon before it is
        # exhausted;`null` here means "unlimited".
        max_redemptions: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            discount:
              T.any(
                Orb::CouponCreateParams::Discount::Percentage,
                Orb::CouponCreateParams::Discount::Amount
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
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Orb::CouponCreateParams::Discount::Percentage,
              Orb::CouponCreateParams::Discount::Amount
            )
          end

        class Percentage < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::CouponCreateParams::Discount::Percentage,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :discount_type

          sig { returns(Float) }
          attr_accessor :percentage_discount

          sig do
            params(percentage_discount: Float, discount_type: Symbol).returns(
              T.attached_class
            )
          end
          def self.new(percentage_discount:, discount_type: :percentage)
          end

          sig do
            override.returns(
              { discount_type: Symbol, percentage_discount: Float }
            )
          end
          def to_hash
          end
        end

        class Amount < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::CouponCreateParams::Discount::Amount,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :amount_discount

          sig { returns(Symbol) }
          attr_accessor :discount_type

          sig do
            params(amount_discount: String, discount_type: Symbol).returns(
              T.attached_class
            )
          end
          def self.new(amount_discount:, discount_type: :amount)
          end

          sig do
            override.returns({ amount_discount: String, discount_type: Symbol })
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[Orb::CouponCreateParams::Discount::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
