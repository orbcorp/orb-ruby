# typed: strong

module Orb
  module Models
    class AdjustmentInterval < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Orb::AdjustmentInterval, Orb::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Orb::AdjustmentInterval::Adjustment::Variants) }
      attr_accessor :adjustment

      # The price interval IDs that this adjustment applies to.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_interval_ids

      # The end date of the adjustment interval.
      sig { returns(T.nilable(Time)) }
      attr_accessor :end_date

      # The start date of the adjustment interval.
      sig { returns(Time) }
      attr_accessor :start_date

      sig do
        params(
          id: String,
          adjustment:
            T.any(
              Orb::PlanPhaseUsageDiscountAdjustment::OrHash,
              Orb::PlanPhaseAmountDiscountAdjustment::OrHash,
              Orb::PlanPhasePercentageDiscountAdjustment::OrHash,
              Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::OrHash,
              Orb::PlanPhaseMinimumAdjustment::OrHash,
              Orb::PlanPhaseMaximumAdjustment::OrHash
            ),
          applies_to_price_interval_ids: T::Array[String],
          end_date: T.nilable(Time),
          start_date: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        adjustment:,
        # The price interval IDs that this adjustment applies to.
        applies_to_price_interval_ids:,
        # The end date of the adjustment interval.
        end_date:,
        # The start date of the adjustment interval.
        start_date:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            adjustment: Orb::AdjustmentInterval::Adjustment::Variants,
            applies_to_price_interval_ids: T::Array[String],
            end_date: T.nilable(Time),
            start_date: Time
          }
        )
      end
      def to_hash
      end

      module Adjustment
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Orb::PlanPhaseUsageDiscountAdjustment,
              Orb::PlanPhaseAmountDiscountAdjustment,
              Orb::PlanPhasePercentageDiscountAdjustment,
              Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount,
              Orb::PlanPhaseMinimumAdjustment,
              Orb::PlanPhaseMaximumAdjustment
            )
          end

        class TieredPercentageDiscount < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount,
                Orb::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Symbol) }
          attr_accessor :adjustment_type

          # The price IDs that this adjustment applies to.
          sig { returns(T::Array[String]) }
          attr_accessor :applies_to_price_ids

          # The filters that determine which prices to apply this adjustment to.
          sig do
            returns(
              T::Array[
                Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter
              ]
            )
          end
          attr_accessor :filters

          # True for adjustments that apply to an entire invoice, false for adjustments that
          # apply to only one price.
          sig { returns(T::Boolean) }
          attr_accessor :is_invoice_level

          # The plan phase in which this adjustment is active.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          # The reason for the adjustment.
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # The adjustment id this adjustment replaces. This adjustment will take the place
          # of the replaced adjustment in plan version migrations.
          sig { returns(T.nilable(String)) }
          attr_accessor :replaces_adjustment_id

          # The ordered, contiguous bands of cumulative eligible spend, each discounted at
          # its own percentage (progressive fill-a-tier), applied to the prices this
          # adjustment covers in a given billing period.
          sig do
            returns(
              T::Array[
                Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Tier
              ]
            )
          end
          attr_accessor :tiers

          sig do
            params(
              id: String,
              applies_to_price_ids: T::Array[String],
              filters:
                T::Array[
                  Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::OrHash
                ],
              is_invoice_level: T::Boolean,
              plan_phase_order: T.nilable(Integer),
              reason: T.nilable(String),
              replaces_adjustment_id: T.nilable(String),
              tiers:
                T::Array[
                  Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Tier::OrHash
                ],
              adjustment_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # The price IDs that this adjustment applies to.
            applies_to_price_ids:,
            # The filters that determine which prices to apply this adjustment to.
            filters:,
            # True for adjustments that apply to an entire invoice, false for adjustments that
            # apply to only one price.
            is_invoice_level:,
            # The plan phase in which this adjustment is active.
            plan_phase_order:,
            # The reason for the adjustment.
            reason:,
            # The adjustment id this adjustment replaces. This adjustment will take the place
            # of the replaced adjustment in plan version migrations.
            replaces_adjustment_id:,
            # The ordered, contiguous bands of cumulative eligible spend, each discounted at
            # its own percentage (progressive fill-a-tier), applied to the prices this
            # adjustment covers in a given billing period.
            tiers:,
            adjustment_type: :tiered_percentage_discount
          )
          end

          sig do
            override.returns(
              {
                id: String,
                adjustment_type: Symbol,
                applies_to_price_ids: T::Array[String],
                filters:
                  T::Array[
                    Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter
                  ],
                is_invoice_level: T::Boolean,
                plan_phase_order: T.nilable(Integer),
                reason: T.nilable(String),
                replaces_adjustment_id: T.nilable(String),
                tiers:
                  T::Array[
                    Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Tier
                  ]
              }
            )
          end
          def to_hash
          end

          class Filter < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter,
                  Orb::Internal::AnyHash
                )
              end

            # The property of the price to filter on.
            sig do
              returns(
                Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::Field::TaggedSymbol
              )
            end
            attr_accessor :field

            # Should prices that match the filter be included or excluded.
            sig do
              returns(
                Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::Operator::TaggedSymbol
              )
            end
            attr_accessor :operator

            # The IDs or values that match this filter.
            sig { returns(T::Array[String]) }
            attr_accessor :values

            sig do
              params(
                field:
                  Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::Field::OrSymbol,
                operator:
                  Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::Operator::OrSymbol,
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
                  field:
                    Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::Field::TaggedSymbol,
                  operator:
                    Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::Operator::TaggedSymbol,
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
                  T.all(
                    Symbol,
                    Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::Field
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PRICE_ID =
                T.let(
                  :price_id,
                  Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::Field::TaggedSymbol
                )
              ITEM_ID =
                T.let(
                  :item_id,
                  Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::Field::TaggedSymbol
                )
              PRICE_TYPE =
                T.let(
                  :price_type,
                  Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::Field::TaggedSymbol
                )
              CURRENCY =
                T.let(
                  :currency,
                  Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::Field::TaggedSymbol
                )
              PRICING_UNIT_ID =
                T.let(
                  :pricing_unit_id,
                  Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::Field::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::Field::TaggedSymbol
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
                  T.all(
                    Symbol,
                    Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::Operator
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INCLUDES =
                T.let(
                  :includes,
                  Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::Operator::TaggedSymbol
                )
              EXCLUDES =
                T.let(
                  :excludes,
                  Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::Operator::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Filter::Operator::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Tier < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::AdjustmentInterval::Adjustment::TieredPercentageDiscount::Tier,
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
        end

        sig do
          override.returns(
            T::Array[Orb::AdjustmentInterval::Adjustment::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
