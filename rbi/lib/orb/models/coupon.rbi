# typed: strong

module Orb
  module Models
    class Coupon < Orb::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(Time)) }
      def archived_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def archived_at=(_)
      end

      sig { returns(T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount)) }
      def discount
      end

      sig do
        params(_: T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount))
          .returns(T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount))
      end
      def discount=(_)
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

      sig { returns(String) }
      def redemption_code
      end

      sig { params(_: String).returns(String) }
      def redemption_code=(_)
      end

      sig { returns(Integer) }
      def times_redeemed
      end

      sig { params(_: Integer).returns(Integer) }
      def times_redeemed=(_)
      end

      sig do
        params(
          id: String,
          archived_at: T.nilable(Time),
          discount: T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount),
          duration_in_months: T.nilable(Integer),
          max_redemptions: T.nilable(Integer),
          redemption_code: String,
          times_redeemed: Integer
        )
          .returns(T.attached_class)
      end
      def self.new(id:, archived_at:, discount:, duration_in_months:, max_redemptions:, redemption_code:, times_redeemed:)
      end

      sig do
        override
          .returns(
            {
              id: String,
              archived_at: T.nilable(Time),
              discount: T.any(Orb::Models::PercentageDiscount, Orb::Models::AmountDiscount),
              duration_in_months: T.nilable(Integer),
              max_redemptions: T.nilable(Integer),
              redemption_code: String,
              times_redeemed: Integer
            }
          )
      end
      def to_hash
      end

      class Discount < Orb::Union
        abstract!

        class << self
          sig { override.returns([[Symbol, Orb::Models::PercentageDiscount], [Symbol, Orb::Models::AmountDiscount]]) }
          private def variants
          end
        end
      end
    end
  end
end
