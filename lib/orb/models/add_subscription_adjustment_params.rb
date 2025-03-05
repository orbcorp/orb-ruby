# frozen_string_literal: true

module Orb
  module Models
    class AddSubscriptionAdjustmentParams < Orb::BaseModel
      # @!attribute adjustment
      #   The definition of a new adjustment to create and add to the subscription.
      #
      #   @return [Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewPercentageDiscount, Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewUsageDiscount, Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewAmountDiscount, Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMinimum, Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMaximum]
      required :adjustment, union: -> { Orb::Models::AddSubscriptionAdjustmentParams::Adjustment }

      # @!attribute end_date
      #   The end date of the adjustment interval. This is the date that the adjustment
      #     will stop affecting prices on the subscription.
      #
      #   @return [Time, nil]
      optional :end_date, Time, nil?: true

      # @!attribute plan_phase_order
      #   The phase to add this adjustment to.
      #
      #   @return [Integer, nil]
      optional :plan_phase_order, Integer, nil?: true

      # @!attribute start_date
      #   The start date of the adjustment interval. This is the date that the adjustment
      #     will start affecting prices on the subscription. If null, the adjustment will
      #     start when the phase or subscription starts.
      #
      #   @return [Time, nil]
      optional :start_date, Time, nil?: true

      # @!parse
      #   # @param adjustment [Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewPercentageDiscount, Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewUsageDiscount, Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewAmountDiscount, Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMinimum, Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMaximum]
      #   # @param end_date [Time, nil]
      #   # @param plan_phase_order [Integer, nil]
      #   # @param start_date [Time, nil]
      #   #
      #   def initialize(adjustment:, end_date: nil, plan_phase_order: nil, start_date: nil, **) = super

      # def initialize: (Hash | Orb::BaseModel) -> void

      # @abstract
      #
      # The definition of a new adjustment to create and add to the subscription.
      #
      # @example
      # ```ruby
      # case adjustment
      # in {
      #   adjustment_type: "percentage_discount",
      #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
      #   percentage_discount: Float,
      #   is_invoice_level: Orb::BooleanModel
      # }
      #   # Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewPercentageDiscount ...
      # in {
      #   adjustment_type: "usage_discount",
      #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
      #   usage_discount: Float,
      #   is_invoice_level: Orb::BooleanModel
      # }
      #   # Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewUsageDiscount ...
      # in {
      #   adjustment_type: "amount_discount",
      #   amount_discount: String,
      #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
      #   is_invoice_level: Orb::BooleanModel
      # }
      #   # Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewAmountDiscount ...
      # in {
      #   adjustment_type: "minimum",
      #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
      #   item_id: String,
      #   minimum_amount: String
      # }
      #   # Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMinimum ...
      # in {
      #   adjustment_type: "maximum",
      #   applies_to_price_ids: ^(Orb::ArrayOf[String]),
      #   maximum_amount: String,
      #   is_invoice_level: Orb::BooleanModel
      # }
      #   # Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMaximum ...
      # end
      # ```
      #
      # @example
      # ```ruby
      # case adjustment
      # in Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewPercentageDiscount
      #   # ...
      # in Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewUsageDiscount
      #   # ...
      # in Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewAmountDiscount
      #   # ...
      # in Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMinimum
      #   # ...
      # in Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMaximum
      #   # ...
      # end
      # ```
      class Adjustment < Orb::Union
        discriminator :adjustment_type

        variant :percentage_discount,
                -> { Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewPercentageDiscount }

        variant :usage_discount, -> { Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewUsageDiscount }

        variant :amount_discount,
                -> { Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewAmountDiscount }

        variant :minimum, -> { Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMinimum }

        variant :maximum, -> { Orb::Models::AddSubscriptionAdjustmentParams::Adjustment::NewMaximum }

        class NewPercentageDiscount < Orb::BaseModel
          # @!attribute adjustment_type
          #
          #   @return [Symbol, :percentage_discount]
          required :adjustment_type, const: :percentage_discount

          # @!attribute applies_to_price_ids
          #   The set of price IDs to which this adjustment applies.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute percentage_discount
          #
          #   @return [Float]
          required :percentage_discount, Float

          # @!attribute [r] is_invoice_level
          #   When false, this adjustment will be applied to a single price. Otherwise, it
          #     will be applied at the invoice level, possibly to multiple prices.
          #
          #   @return [Boolean, nil]
          optional :is_invoice_level, Orb::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :is_invoice_level

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param percentage_discount [Float]
          #   # @param is_invoice_level [Boolean]
          #   # @param adjustment_type [Symbol, :percentage_discount]
          #   #
          #   def initialize(
          #     applies_to_price_ids:,
          #     percentage_discount:,
          #     is_invoice_level: nil,
          #     adjustment_type: :percentage_discount,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        class NewUsageDiscount < Orb::BaseModel
          # @!attribute adjustment_type
          #
          #   @return [Symbol, :usage_discount]
          required :adjustment_type, const: :usage_discount

          # @!attribute applies_to_price_ids
          #   The set of price IDs to which this adjustment applies.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute usage_discount
          #
          #   @return [Float]
          required :usage_discount, Float

          # @!attribute [r] is_invoice_level
          #   When false, this adjustment will be applied to a single price. Otherwise, it
          #     will be applied at the invoice level, possibly to multiple prices.
          #
          #   @return [Boolean, nil]
          optional :is_invoice_level, Orb::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :is_invoice_level

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param usage_discount [Float]
          #   # @param is_invoice_level [Boolean]
          #   # @param adjustment_type [Symbol, :usage_discount]
          #   #
          #   def initialize(applies_to_price_ids:, usage_discount:, is_invoice_level: nil, adjustment_type: :usage_discount, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        class NewAmountDiscount < Orb::BaseModel
          # @!attribute adjustment_type
          #
          #   @return [Symbol, :amount_discount]
          required :adjustment_type, const: :amount_discount

          # @!attribute amount_discount
          #
          #   @return [String]
          required :amount_discount, String

          # @!attribute applies_to_price_ids
          #   The set of price IDs to which this adjustment applies.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute [r] is_invoice_level
          #   When false, this adjustment will be applied to a single price. Otherwise, it
          #     will be applied at the invoice level, possibly to multiple prices.
          #
          #   @return [Boolean, nil]
          optional :is_invoice_level, Orb::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :is_invoice_level

          # @!parse
          #   # @param amount_discount [String]
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param is_invoice_level [Boolean]
          #   # @param adjustment_type [Symbol, :amount_discount]
          #   #
          #   def initialize(amount_discount:, applies_to_price_ids:, is_invoice_level: nil, adjustment_type: :amount_discount, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        class NewMinimum < Orb::BaseModel
          # @!attribute adjustment_type
          #
          #   @return [Symbol, :minimum]
          required :adjustment_type, const: :minimum

          # @!attribute applies_to_price_ids
          #   The set of price IDs to which this adjustment applies.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute item_id
          #   The item ID that revenue from this minimum will be attributed to.
          #
          #   @return [String]
          required :item_id, String

          # @!attribute minimum_amount
          #
          #   @return [String]
          required :minimum_amount, String

          # @!attribute [r] is_invoice_level
          #   When false, this adjustment will be applied to a single price. Otherwise, it
          #     will be applied at the invoice level, possibly to multiple prices.
          #
          #   @return [Boolean, nil]
          optional :is_invoice_level, Orb::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :is_invoice_level

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param item_id [String]
          #   # @param minimum_amount [String]
          #   # @param is_invoice_level [Boolean]
          #   # @param adjustment_type [Symbol, :minimum]
          #   #
          #   def initialize(applies_to_price_ids:, item_id:, minimum_amount:, is_invoice_level: nil, adjustment_type: :minimum, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        class NewMaximum < Orb::BaseModel
          # @!attribute adjustment_type
          #
          #   @return [Symbol, :maximum]
          required :adjustment_type, const: :maximum

          # @!attribute applies_to_price_ids
          #   The set of price IDs to which this adjustment applies.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::ArrayOf[String]

          # @!attribute maximum_amount
          #
          #   @return [String]
          required :maximum_amount, String

          # @!attribute [r] is_invoice_level
          #   When false, this adjustment will be applied to a single price. Otherwise, it
          #     will be applied at the invoice level, possibly to multiple prices.
          #
          #   @return [Boolean, nil]
          optional :is_invoice_level, Orb::BooleanModel

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :is_invoice_level

          # @!parse
          #   # @param applies_to_price_ids [Array<String>]
          #   # @param maximum_amount [String]
          #   # @param is_invoice_level [Boolean]
          #   # @param adjustment_type [Symbol, :maximum]
          #   #
          #   def initialize(applies_to_price_ids:, maximum_amount:, is_invoice_level: nil, adjustment_type: :maximum, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end
      end
    end
  end
end
