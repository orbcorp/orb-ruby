# typed: strong

module Orb
  module Models
    class PlanPhaseMinimumAdjustment < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Orb::PlanPhaseMinimumAdjustment, Orb::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig do
        returns(Orb::PlanPhaseMinimumAdjustment::AdjustmentType::TaggedSymbol)
      end
      attr_accessor :adjustment_type

      # The price IDs that this adjustment applies to.
      sig { returns(T::Array[String]) }
      attr_accessor :applies_to_price_ids

      # The filters that determine which prices to apply this adjustment to.
      sig { returns(T::Array[Orb::PlanPhaseMinimumAdjustment::Filter]) }
      attr_accessor :filters

      # True for adjustments that apply to an entire invoice, false for adjustments that
      # apply to only one price.
      sig { returns(T::Boolean) }
      attr_accessor :is_invoice_level

      # The item ID that revenue from this minimum will be attributed to.
      sig { returns(String) }
      attr_accessor :item_id

      # The minimum amount to charge in a given billing period for the prices this
      # adjustment applies to.
      sig { returns(String) }
      attr_accessor :minimum_amount

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

      sig do
        params(
          id: String,
          adjustment_type:
            Orb::PlanPhaseMinimumAdjustment::AdjustmentType::OrSymbol,
          applies_to_price_ids: T::Array[String],
          filters: T::Array[Orb::PlanPhaseMinimumAdjustment::Filter::OrHash],
          is_invoice_level: T::Boolean,
          item_id: String,
          minimum_amount: String,
          plan_phase_order: T.nilable(Integer),
          reason: T.nilable(String),
          replaces_adjustment_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        adjustment_type:,
        # The price IDs that this adjustment applies to.
        applies_to_price_ids:,
        # The filters that determine which prices to apply this adjustment to.
        filters:,
        # True for adjustments that apply to an entire invoice, false for adjustments that
        # apply to only one price.
        is_invoice_level:,
        # The item ID that revenue from this minimum will be attributed to.
        item_id:,
        # The minimum amount to charge in a given billing period for the prices this
        # adjustment applies to.
        minimum_amount:,
        # The plan phase in which this adjustment is active.
        plan_phase_order:,
        # The reason for the adjustment.
        reason:,
        # The adjustment id this adjustment replaces. This adjustment will take the place
        # of the replaced adjustment in plan version migrations.
        replaces_adjustment_id:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            adjustment_type:
              Orb::PlanPhaseMinimumAdjustment::AdjustmentType::TaggedSymbol,
            applies_to_price_ids: T::Array[String],
            filters: T::Array[Orb::PlanPhaseMinimumAdjustment::Filter],
            is_invoice_level: T::Boolean,
            item_id: String,
            minimum_amount: String,
            plan_phase_order: T.nilable(Integer),
            reason: T.nilable(String),
            replaces_adjustment_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module AdjustmentType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Orb::PlanPhaseMinimumAdjustment::AdjustmentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MINIMUM =
          T.let(
            :minimum,
            Orb::PlanPhaseMinimumAdjustment::AdjustmentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::PlanPhaseMinimumAdjustment::AdjustmentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Filter < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::PlanPhaseMinimumAdjustment::Filter,
              Orb::Internal::AnyHash
            )
          end

        # The property of the price to filter on.
        sig do
          returns(Orb::PlanPhaseMinimumAdjustment::Filter::Field::TaggedSymbol)
        end
        attr_accessor :field

        # Should prices that match the filter be included or excluded.
        sig do
          returns(
            Orb::PlanPhaseMinimumAdjustment::Filter::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        # The IDs or values that match this filter.
        sig { returns(T::Array[String]) }
        attr_accessor :values

        sig do
          params(
            field: Orb::PlanPhaseMinimumAdjustment::Filter::Field::OrSymbol,
            operator:
              Orb::PlanPhaseMinimumAdjustment::Filter::Operator::OrSymbol,
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
                Orb::PlanPhaseMinimumAdjustment::Filter::Field::TaggedSymbol,
              operator:
                Orb::PlanPhaseMinimumAdjustment::Filter::Operator::TaggedSymbol,
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
              T.all(Symbol, Orb::PlanPhaseMinimumAdjustment::Filter::Field)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRICE_ID =
            T.let(
              :price_id,
              Orb::PlanPhaseMinimumAdjustment::Filter::Field::TaggedSymbol
            )
          ITEM_ID =
            T.let(
              :item_id,
              Orb::PlanPhaseMinimumAdjustment::Filter::Field::TaggedSymbol
            )
          PRICE_TYPE =
            T.let(
              :price_type,
              Orb::PlanPhaseMinimumAdjustment::Filter::Field::TaggedSymbol
            )
          CURRENCY =
            T.let(
              :currency,
              Orb::PlanPhaseMinimumAdjustment::Filter::Field::TaggedSymbol
            )
          PRICING_UNIT_ID =
            T.let(
              :pricing_unit_id,
              Orb::PlanPhaseMinimumAdjustment::Filter::Field::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::PlanPhaseMinimumAdjustment::Filter::Field::TaggedSymbol
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
              T.all(Symbol, Orb::PlanPhaseMinimumAdjustment::Filter::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCLUDES =
            T.let(
              :includes,
              Orb::PlanPhaseMinimumAdjustment::Filter::Operator::TaggedSymbol
            )
          EXCLUDES =
            T.let(
              :excludes,
              Orb::PlanPhaseMinimumAdjustment::Filter::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Orb::PlanPhaseMinimumAdjustment::Filter::Operator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
