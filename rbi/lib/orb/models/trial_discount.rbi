# typed: strong

module Orb
  module Models
    class TrialDiscount < Orb::BaseModel
      # List of price_ids that this discount applies to. For plan/plan phase discounts,
      #   this can be a subset of prices.
      sig { returns(T::Array[String]) }
      def applies_to_price_ids
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def applies_to_price_ids=(_)
      end

      sig { returns(Symbol) }
      def discount_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def discount_type=(_)
      end

      sig { returns(T.nilable(String)) }
      def reason
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def reason=(_)
      end

      # Only available if discount_type is `trial`
      sig { returns(T.nilable(String)) }
      def trial_amount_discount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def trial_amount_discount=(_)
      end

      # Only available if discount_type is `trial`
      sig { returns(T.nilable(Float)) }
      def trial_percentage_discount
      end

      sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
      def trial_percentage_discount=(_)
      end

      sig do
        params(
          applies_to_price_ids: T::Array[String],
          discount_type: Symbol,
          reason: T.nilable(String),
          trial_amount_discount: T.nilable(String),
          trial_percentage_discount: T.nilable(Float)
        )
          .returns(T.attached_class)
      end
      def self.new(
        applies_to_price_ids:,
        discount_type:,
        reason: nil,
        trial_amount_discount: nil,
        trial_percentage_discount: nil
      )
      end

      sig do
        override
          .returns(
            {
              applies_to_price_ids: T::Array[String],
              discount_type: Symbol,
              reason: T.nilable(String),
              trial_amount_discount: T.nilable(String),
              trial_percentage_discount: T.nilable(Float)
            }
          )
      end
      def to_hash
      end

      class DiscountType < Orb::Enum
        abstract!

        TRIAL = :trial

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
