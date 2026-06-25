# typed: strong

module Orb
  module Models
    module Discount
      extend Orb::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Orb::PercentageDiscount,
            Orb::TrialDiscount,
            Orb::UsageDiscount,
            Orb::AmountDiscount,
            Orb::Discount::TieredPercentage
          )
        end

      class TieredPercentage < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Orb::Discount::TieredPercentage, Orb::Internal::AnyHash)
          end

        sig { returns(Symbol) }
        attr_accessor :discount_type

        # Only available if discount_type is `tiered_percentage`. The ordered, contiguous
        # bands of cumulative eligible spend, each discounted at its own percentage
        # (progressive fill-a-tier).
        sig { returns(T::Array[Orb::Discount::TieredPercentage::Tier]) }
        attr_accessor :tiers

        # List of price_ids that this discount applies to. For plan/plan phase discounts,
        # this can be a subset of prices.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :applies_to_price_ids

        # The filters that determine which prices to apply this discount to.
        sig do
          returns(T.nilable(T::Array[Orb::Discount::TieredPercentage::Filter]))
        end
        attr_accessor :filters

        sig { returns(T.nilable(String)) }
        attr_accessor :reason

        sig do
          params(
            tiers: T::Array[Orb::Discount::TieredPercentage::Tier::OrHash],
            applies_to_price_ids: T.nilable(T::Array[String]),
            filters:
              T.nilable(
                T::Array[Orb::Discount::TieredPercentage::Filter::OrHash]
              ),
            reason: T.nilable(String),
            discount_type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Only available if discount_type is `tiered_percentage`. The ordered, contiguous
          # bands of cumulative eligible spend, each discounted at its own percentage
          # (progressive fill-a-tier).
          tiers:,
          # List of price_ids that this discount applies to. For plan/plan phase discounts,
          # this can be a subset of prices.
          applies_to_price_ids: nil,
          # The filters that determine which prices to apply this discount to.
          filters: nil,
          reason: nil,
          discount_type: :tiered_percentage
        )
        end

        sig do
          override.returns(
            {
              discount_type: Symbol,
              tiers: T::Array[Orb::Discount::TieredPercentage::Tier],
              applies_to_price_ids: T.nilable(T::Array[String]),
              filters:
                T.nilable(T::Array[Orb::Discount::TieredPercentage::Filter]),
              reason: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Tier < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Discount::TieredPercentage::Tier,
                Orb::Internal::AnyHash
              )
            end

          # Exclusive lower bound of cumulative spend for this tier.
          sig { returns(Float) }
          attr_accessor :lower_bound

          # The percentage (between 0 and 1) discounted from spend that falls within this
          # tier.
          sig { returns(Float) }
          attr_accessor :percentage

          # Inclusive upper bound of cumulative spend for this tier; null for the final
          # open-ended tier.
          sig { returns(T.nilable(Float)) }
          attr_accessor :upper_bound

          # One band of a tiered percentage discount. Bounds are denominated in the
          # discount's currency. `lower_bound` is the exclusive start of the band and
          # `upper_bound` is the inclusive end; `upper_bound` is null only for the
          # open-ended final tier.
          sig do
            params(
              lower_bound: Float,
              percentage: Float,
              upper_bound: T.nilable(Float)
            ).returns(T.attached_class)
          end
          def self.new(
            # Exclusive lower bound of cumulative spend for this tier.
            lower_bound:,
            # The percentage (between 0 and 1) discounted from spend that falls within this
            # tier.
            percentage:,
            # Inclusive upper bound of cumulative spend for this tier; null for the final
            # open-ended tier.
            upper_bound: nil
          )
          end

          sig do
            override.returns(
              {
                lower_bound: Float,
                percentage: Float,
                upper_bound: T.nilable(Float)
              }
            )
          end
          def to_hash
          end
        end

        class Filter < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Discount::TieredPercentage::Filter,
                Orb::Internal::AnyHash
              )
            end

          # The property of the price to filter on.
          sig do
            returns(Orb::Discount::TieredPercentage::Filter::Field::OrSymbol)
          end
          attr_accessor :field

          # Should prices that match the filter be included or excluded.
          sig do
            returns(Orb::Discount::TieredPercentage::Filter::Operator::OrSymbol)
          end
          attr_accessor :operator

          # The IDs or values that match this filter.
          sig { returns(T::Array[String]) }
          attr_accessor :values

          sig do
            params(
              field: Orb::Discount::TieredPercentage::Filter::Field::OrSymbol,
              operator:
                Orb::Discount::TieredPercentage::Filter::Operator::OrSymbol,
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
                field: Orb::Discount::TieredPercentage::Filter::Field::OrSymbol,
                operator:
                  Orb::Discount::TieredPercentage::Filter::Operator::OrSymbol,
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
              T.type_alias do
                T.all(Symbol, Orb::Discount::TieredPercentage::Filter::Field)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PRICE_ID =
              T.let(
                :price_id,
                Orb::Discount::TieredPercentage::Filter::Field::TaggedSymbol
              )
            ITEM_ID =
              T.let(
                :item_id,
                Orb::Discount::TieredPercentage::Filter::Field::TaggedSymbol
              )
            PRICE_TYPE =
              T.let(
                :price_type,
                Orb::Discount::TieredPercentage::Filter::Field::TaggedSymbol
              )
            CURRENCY =
              T.let(
                :currency,
                Orb::Discount::TieredPercentage::Filter::Field::TaggedSymbol
              )
            PRICING_UNIT_ID =
              T.let(
                :pricing_unit_id,
                Orb::Discount::TieredPercentage::Filter::Field::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Discount::TieredPercentage::Filter::Field::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Should prices that match the filter be included or excluded.
          module Operator
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Orb::Discount::TieredPercentage::Filter::Operator)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCLUDES =
              T.let(
                :includes,
                Orb::Discount::TieredPercentage::Filter::Operator::TaggedSymbol
              )
            EXCLUDES =
              T.let(
                :excludes,
                Orb::Discount::TieredPercentage::Filter::Operator::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::Discount::TieredPercentage::Filter::Operator::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      sig { override.returns(T::Array[Orb::Discount::Variants]) }
      def self.variants
      end
    end
  end
end
