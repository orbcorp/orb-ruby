# typed: strong

module Orb
  module Models
    class DiscountOverride < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::DiscountOverride, Orb::Internal::AnyHash) }

      sig { returns(Orb::DiscountOverride::DiscountType::OrSymbol) }
      attr_accessor :discount_type

      # Only available if discount_type is `amount`.
      sig { returns(T.nilable(String)) }
      attr_accessor :amount_discount

      # Only available if discount_type is `percentage`. This is a number between 0
      # and 1.
      sig { returns(T.nilable(Float)) }
      attr_accessor :percentage_discount

      # Only available if discount_type is `usage`. Number of usage units that this
      # discount is for
      sig { returns(T.nilable(Float)) }
      attr_accessor :usage_discount

      sig do
        params(
          discount_type: Orb::DiscountOverride::DiscountType::OrSymbol,
          amount_discount: T.nilable(String),
          percentage_discount: T.nilable(Float),
          usage_discount: T.nilable(Float)
        ).returns(T.attached_class)
      end
      def self.new(
        discount_type:,
        # Only available if discount_type is `amount`.
        amount_discount: nil,
        # Only available if discount_type is `percentage`. This is a number between 0
        # and 1.
        percentage_discount: nil,
        # Only available if discount_type is `usage`. Number of usage units that this
        # discount is for
        usage_discount: nil
      )
      end

      sig do
        override.returns(
          {
            discount_type: Orb::DiscountOverride::DiscountType::OrSymbol,
            amount_discount: T.nilable(String),
            percentage_discount: T.nilable(Float),
            usage_discount: T.nilable(Float)
          }
        )
      end
      def to_hash
      end

      module DiscountType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::DiscountOverride::DiscountType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PERCENTAGE =
          T.let(:percentage, Orb::DiscountOverride::DiscountType::TaggedSymbol)
        USAGE = T.let(:usage, Orb::DiscountOverride::DiscountType::TaggedSymbol)
        AMOUNT =
          T.let(:amount, Orb::DiscountOverride::DiscountType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::DiscountOverride::DiscountType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
