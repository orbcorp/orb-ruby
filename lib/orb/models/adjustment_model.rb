# frozen_string_literal: true

module Orb
  module Models
    # @abstract
    #
    # @example
    # ```ruby
    # case adjustment_model
    # in {
    #   adjustment_type: "usage_discount",
    #   id: String,
    #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
    #   is_invoice_level: Orb::BooleanModel
    # }
    #   # Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment ...
    # in {
    #   adjustment_type: "amount_discount",
    #   id: String,
    #   amount_discount: String,
    #   applies_to_price_ids: ^(Orb::ArrayOf[String])
    # }
    #   # Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment ...
    # in {
    #   adjustment_type: "percentage_discount",
    #   id: String,
    #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
    #   is_invoice_level: Orb::BooleanModel
    # }
    #   # Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment ...
    # in {
    #   adjustment_type: "minimum",
    #   id: String,
    #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
    #   is_invoice_level: Orb::BooleanModel
    # }
    #   # Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment ...
    # in {
    #   adjustment_type: "maximum",
    #   id: String,
    #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
    #   is_invoice_level: Orb::BooleanModel
    # }
    #   # Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment ...
    # end
    # ```
    #
    # @example
    # ```ruby
    # case adjustment_model
    # in Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment
    #   # ...
    # in Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment
    #   # ...
    # in Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment
    #   # ...
    # in Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment
    #   # ...
    # in Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment
    #   # ...
    # end
    # ```
    class AdjustmentModel < Orb::Union
      discriminator :adjustment_type

      variant :usage_discount, -> { Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment }

      variant :amount_discount, -> { Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment }

      variant :percentage_discount, -> { Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment }

      variant :minimum, -> { Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment }

      variant :maximum, -> { Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment }

      class PlanPhaseUsageDiscountAdjustment < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute adjustment_type
        #
        #   @return [Symbol, :usage_discount]
        required :adjustment_type, const: :usage_discount

        # @!attribute applies_to_price_ids
        #   The price IDs that this adjustment applies to.
        #
        #   @return [Array<String>]
        required :applies_to_price_ids, Orb::ArrayOf[String]

        # @!attribute is_invoice_level
        #   True for adjustments that apply to an entire invocice, false for adjustments
        #     that apply to only one price.
        #
        #   @return [Boolean]
        required :is_invoice_level, Orb::BooleanModel

        # @!attribute plan_phase_order
        #   The plan phase in which this adjustment is active.
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute reason
        #   The reason for the adjustment.
        #
        #   @return [String, nil]
        required :reason, String, nil?: true

        # @!attribute usage_discount
        #   The number of usage units by which to discount the price this adjustment applies
        #     to in a given billing period.
        #
        #   @return [Float]
        required :usage_discount, Float

        # @!parse
        #   # @param id [String]
        #   # @param applies_to_price_ids [Array<String>]
        #   # @param is_invoice_level [Boolean]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param reason [String, nil]
        #   # @param usage_discount [Float]
        #   # @param adjustment_type [Symbol, :usage_discount]
        #   #
        #   def initialize(
        #     id:,
        #     applies_to_price_ids:,
        #     is_invoice_level:,
        #     plan_phase_order:,
        #     reason:,
        #     usage_discount:,
        #     adjustment_type: :usage_discount,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      class PlanPhaseAmountDiscountAdjustment < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute adjustment_type
        #
        #   @return [Symbol, :amount_discount]
        required :adjustment_type, const: :amount_discount

        # @!attribute amount_discount
        #   The amount by which to discount the prices this adjustment applies to in a given
        #     billing period.
        #
        #   @return [String]
        required :amount_discount, String

        # @!attribute applies_to_price_ids
        #   The price IDs that this adjustment applies to.
        #
        #   @return [Array<String>]
        required :applies_to_price_ids, Orb::ArrayOf[String]

        # @!attribute is_invoice_level
        #   True for adjustments that apply to an entire invocice, false for adjustments
        #     that apply to only one price.
        #
        #   @return [Boolean]
        required :is_invoice_level, Orb::BooleanModel

        # @!attribute plan_phase_order
        #   The plan phase in which this adjustment is active.
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute reason
        #   The reason for the adjustment.
        #
        #   @return [String, nil]
        required :reason, String, nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param amount_discount [String]
        #   # @param applies_to_price_ids [Array<String>]
        #   # @param is_invoice_level [Boolean]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param reason [String, nil]
        #   # @param adjustment_type [Symbol, :amount_discount]
        #   #
        #   def initialize(
        #     id:,
        #     amount_discount:,
        #     applies_to_price_ids:,
        #     is_invoice_level:,
        #     plan_phase_order:,
        #     reason:,
        #     adjustment_type: :amount_discount,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      class PlanPhasePercentageDiscountAdjustment < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute adjustment_type
        #
        #   @return [Symbol, :percentage_discount]
        required :adjustment_type, const: :percentage_discount

        # @!attribute applies_to_price_ids
        #   The price IDs that this adjustment applies to.
        #
        #   @return [Array<String>]
        required :applies_to_price_ids, Orb::ArrayOf[String]

        # @!attribute is_invoice_level
        #   True for adjustments that apply to an entire invocice, false for adjustments
        #     that apply to only one price.
        #
        #   @return [Boolean]
        required :is_invoice_level, Orb::BooleanModel

        # @!attribute percentage_discount
        #   The percentage (as a value between 0 and 1) by which to discount the price
        #     intervals this adjustment applies to in a given billing period.
        #
        #   @return [Float]
        required :percentage_discount, Float

        # @!attribute plan_phase_order
        #   The plan phase in which this adjustment is active.
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute reason
        #   The reason for the adjustment.
        #
        #   @return [String, nil]
        required :reason, String, nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param applies_to_price_ids [Array<String>]
        #   # @param is_invoice_level [Boolean]
        #   # @param percentage_discount [Float]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param reason [String, nil]
        #   # @param adjustment_type [Symbol, :percentage_discount]
        #   #
        #   def initialize(
        #     id:,
        #     applies_to_price_ids:,
        #     is_invoice_level:,
        #     percentage_discount:,
        #     plan_phase_order:,
        #     reason:,
        #     adjustment_type: :percentage_discount,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      class PlanPhaseMinimumAdjustment < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute adjustment_type
        #
        #   @return [Symbol, :minimum]
        required :adjustment_type, const: :minimum

        # @!attribute applies_to_price_ids
        #   The price IDs that this adjustment applies to.
        #
        #   @return [Array<String>]
        required :applies_to_price_ids, Orb::ArrayOf[String]

        # @!attribute is_invoice_level
        #   True for adjustments that apply to an entire invocice, false for adjustments
        #     that apply to only one price.
        #
        #   @return [Boolean]
        required :is_invoice_level, Orb::BooleanModel

        # @!attribute item_id
        #   The item ID that revenue from this minimum will be attributed to.
        #
        #   @return [String]
        required :item_id, String

        # @!attribute minimum_amount
        #   The minimum amount to charge in a given billing period for the prices this
        #     adjustment applies to.
        #
        #   @return [String]
        required :minimum_amount, String

        # @!attribute plan_phase_order
        #   The plan phase in which this adjustment is active.
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute reason
        #   The reason for the adjustment.
        #
        #   @return [String, nil]
        required :reason, String, nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param applies_to_price_ids [Array<String>]
        #   # @param is_invoice_level [Boolean]
        #   # @param item_id [String]
        #   # @param minimum_amount [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param reason [String, nil]
        #   # @param adjustment_type [Symbol, :minimum]
        #   #
        #   def initialize(
        #     id:,
        #     applies_to_price_ids:,
        #     is_invoice_level:,
        #     item_id:,
        #     minimum_amount:,
        #     plan_phase_order:,
        #     reason:,
        #     adjustment_type: :minimum,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      class PlanPhaseMaximumAdjustment < Orb::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute adjustment_type
        #
        #   @return [Symbol, :maximum]
        required :adjustment_type, const: :maximum

        # @!attribute applies_to_price_ids
        #   The price IDs that this adjustment applies to.
        #
        #   @return [Array<String>]
        required :applies_to_price_ids, Orb::ArrayOf[String]

        # @!attribute is_invoice_level
        #   True for adjustments that apply to an entire invocice, false for adjustments
        #     that apply to only one price.
        #
        #   @return [Boolean]
        required :is_invoice_level, Orb::BooleanModel

        # @!attribute maximum_amount
        #   The maximum amount to charge in a given billing period for the prices this
        #     adjustment applies to.
        #
        #   @return [String]
        required :maximum_amount, String

        # @!attribute plan_phase_order
        #   The plan phase in which this adjustment is active.
        #
        #   @return [Integer, nil]
        required :plan_phase_order, Integer, nil?: true

        # @!attribute reason
        #   The reason for the adjustment.
        #
        #   @return [String, nil]
        required :reason, String, nil?: true

        # @!parse
        #   # @param id [String]
        #   # @param applies_to_price_ids [Array<String>]
        #   # @param is_invoice_level [Boolean]
        #   # @param maximum_amount [String]
        #   # @param plan_phase_order [Integer, nil]
        #   # @param reason [String, nil]
        #   # @param adjustment_type [Symbol, :maximum]
        #   #
        #   def initialize(
        #     id:,
        #     applies_to_price_ids:,
        #     is_invoice_level:,
        #     maximum_amount:,
        #     plan_phase_order:,
        #     reason:,
        #     adjustment_type: :maximum,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void
      end
    end
  end
end
