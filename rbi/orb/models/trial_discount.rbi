# typed: strong

module Orb
  module Models
    class TrialDiscount < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::TrialDiscount, Orb::Internal::AnyHash) }

      sig { returns(Orb::TrialDiscount::DiscountType::OrSymbol) }
      attr_accessor :discount_type

      # List of price_ids that this discount applies to. For plan/plan phase discounts,
      # this can be a subset of prices.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :applies_to_price_ids

      # The filters that determine which prices to apply this discount to.
      sig { returns(T.nilable(T::Array[Orb::TrialDiscount::Filter])) }
      attr_accessor :filters

      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      # Only available if discount_type is `trial`
      sig { returns(T.nilable(String)) }
      attr_accessor :trial_amount_discount

      # Only available if discount_type is `trial`
      sig { returns(T.nilable(Float)) }
      attr_accessor :trial_percentage_discount

      sig do
        params(
          discount_type: Orb::TrialDiscount::DiscountType::OrSymbol,
          applies_to_price_ids: T.nilable(T::Array[String]),
          filters: T.nilable(T::Array[Orb::TrialDiscount::Filter::OrHash]),
          reason: T.nilable(String),
          trial_amount_discount: T.nilable(String),
          trial_percentage_discount: T.nilable(Float)
        ).returns(T.attached_class)
      end
      def self.new(
        discount_type:,
        # List of price_ids that this discount applies to. For plan/plan phase discounts,
        # this can be a subset of prices.
        applies_to_price_ids: nil,
        # The filters that determine which prices to apply this discount to.
        filters: nil,
        reason: nil,
        # Only available if discount_type is `trial`
        trial_amount_discount: nil,
        # Only available if discount_type is `trial`
        trial_percentage_discount: nil
      )
      end

      sig do
        override.returns(
          {
            discount_type: Orb::TrialDiscount::DiscountType::OrSymbol,
            applies_to_price_ids: T.nilable(T::Array[String]),
            filters: T.nilable(T::Array[Orb::TrialDiscount::Filter]),
            reason: T.nilable(String),
            trial_amount_discount: T.nilable(String),
            trial_percentage_discount: T.nilable(Float)
          }
        )
      end
      def to_hash
      end

      module DiscountType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Orb::TrialDiscount::DiscountType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRIAL = T.let(:trial, Orb::TrialDiscount::DiscountType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Orb::TrialDiscount::DiscountType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Filter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::TrialDiscount::Filter, Orb::Internal::AnyHash)
          end

        # The property of the price to filter on.
        sig { returns(Orb::TrialDiscount::Filter::Field::OrSymbol) }
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig { returns(Orb::TrialDiscount::Filter::Operator::OrSymbol) }
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field: Orb::TrialDiscount::Filter::Field::OrSymbol,
            operator: Orb::TrialDiscount::Filter::Operator::OrSymbol,
            values: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The property of the price to filter on.
          field:,
          # Should prices that match the filter be included or excluded.
          operator:,
          # The IDs or values that match this filter.
          values:
        )
        end

        sig do
          override.returns(
            {
              field: Orb::TrialDiscount::Filter::Field::OrSymbol,
              operator: Orb::TrialDiscount::Filter::Operator::OrSymbol,
              values: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # The property of the price to filter on.
        module Field
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::TrialDiscount::Filter::Field) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(:price_id, Orb::TrialDiscount::Filter::Field::TaggedSymbol)
          ITEM_ID =
            T.let(:item_id, Orb::TrialDiscount::Filter::Field::TaggedSymbol)
          PRICE_TYPE =
            T.let(:price_type, Orb::TrialDiscount::Filter::Field::TaggedSymbol)
          CURRENCY =
            T.let(:currency, Orb::TrialDiscount::Filter::Field::TaggedSymbol)
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::TrialDiscount::Filter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Orb::TrialDiscount::Filter::Field::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Should prices that match the filter be included or excluded.
        module Operator
          extend Orb::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Orb::TrialDiscount::Filter::Operator) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(:includes, Orb::TrialDiscount::Filter::Operator::TaggedSymbol)
          EXCLUDES =
            T.let(:excludes, Orb::TrialDiscount::Filter::Operator::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Orb::TrialDiscount::Filter::Operator::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
