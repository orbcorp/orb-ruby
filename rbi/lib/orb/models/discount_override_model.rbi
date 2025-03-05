# typed: strong

module Orb
  module Models
    class DiscountOverrideModel < Orb::BaseModel
      sig { returns(Symbol) }
      def discount_type
      end

      sig { params(_: Symbol).returns(Symbol) }
      def discount_type=(_)
      end

      sig { returns(T.nilable(String)) }
      def amount_discount
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def amount_discount=(_)
      end

      sig { returns(T.nilable(Float)) }
      def percentage_discount
      end

      sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
      def percentage_discount=(_)
      end

      sig { returns(T.nilable(Float)) }
      def usage_discount
      end

      sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
      def usage_discount=(_)
      end

      sig do
        params(
          discount_type: Symbol,
          amount_discount: T.nilable(String),
          percentage_discount: T.nilable(Float),
          usage_discount: T.nilable(Float)
        )
          .void
      end
      def initialize(discount_type:, amount_discount: nil, percentage_discount: nil, usage_discount: nil)
      end

      sig do
        override
          .returns(
            {
              discount_type: Symbol,
              amount_discount: T.nilable(String),
              percentage_discount: T.nilable(Float),
              usage_discount: T.nilable(Float)
            }
          )
      end
      def to_hash
      end

      class DiscountType < Orb::Enum
        abstract!

        PERCENTAGE = :percentage
        USAGE = :usage
        AMOUNT = :amount

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
