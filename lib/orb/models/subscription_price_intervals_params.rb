# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionPriceIntervalsParams < Orb::BaseModel
      # @!parse
      #   extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      # @!attribute [r] add
      #   A list of price intervals to add to the subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add>, nil]
      optional :add, -> { Orb::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::Add] }

      # @!parse
      #   # @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add>]
      #   attr_writer :add

      # @!attribute [r] add_adjustments
      #   A list of adjustments to add to the subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment>, nil]
      optional :add_adjustments,
               -> { Orb::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment] }

      # @!parse
      #   # @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment>]
      #   attr_writer :add_adjustments

      # @!attribute allow_invoice_credit_or_void
      #   If false, this request will fail if it would void an issued invoice or create a
      #     credit note. Consider using this as a safety mechanism if you do not expect
      #     existing invoices to be changed.
      #
      #   @return [Boolean, nil]
      optional :allow_invoice_credit_or_void, Orb::BooleanModel, nil?: true

      # @!attribute [r] edit
      #   A list of price intervals to edit on the subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Edit>, nil]
      optional :edit, -> { Orb::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::Edit] }

      # @!parse
      #   # @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Edit>]
      #   attr_writer :edit

      # @!attribute [r] edit_adjustments
      #   A list of adjustments to edit on the subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment>, nil]
      optional :edit_adjustments,
               -> { Orb::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment] }

      # @!parse
      #   # @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment>]
      #   attr_writer :edit_adjustments

      # @!parse
      #   # @param add [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add>]
      #   # @param add_adjustments [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment>]
      #   # @param allow_invoice_credit_or_void [Boolean, nil]
      #   # @param edit [Array<Orb::Models::SubscriptionPriceIntervalsParams::Edit>]
      #   # @param edit_adjustments [Array<Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment>]
      #   # @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     add: nil,
      #     add_adjustments: nil,
      #     allow_invoice_credit_or_void: nil,
      #     edit: nil,
      #     edit_adjustments: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::BaseModel) -> void

      class Add < Orb::BaseModel
        # @!attribute start_date
        #   The start date of the price interval. This is the date that the price will start
        #     billing on the subscription.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate]
        required :start_date, union: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::StartDate }

        # @!attribute allocation_price
        #   The definition of a new allocation price to create and add to the subscription.
        #
        #   @return [Orb::Models::NewAllocationPriceModel, nil]
        optional :allocation_price, -> { Orb::Models::NewAllocationPriceModel }, nil?: true

        # @!attribute discounts
        #   A list of discounts to initialize on the price interval.
        #
        #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams>, nil]
        optional :discounts,
                 -> { Orb::ArrayOf[union: Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount] },
                 nil?: true

        # @!attribute end_date
        #   The end date of the price interval. This is the date that the price will stop
        #     billing on the subscription.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :end_date, union: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::EndDate }, nil?: true

        # @!attribute external_price_id
        #   The external price id of the price to add to the subscription.
        #
        #   @return [String, nil]
        optional :external_price_id, String, nil?: true

        # @!attribute filter
        #   An additional filter to apply to usage queries. This filter must be expressed as
        #     a boolean
        #     [computed property](/extensibility/advanced-metrics#computed-properties). If
        #     null, usage queries will not include any additional filter.
        #
        #   @return [String, nil]
        optional :filter, String, nil?: true

        # @!attribute fixed_fee_quantity_transitions
        #   A list of fixed fee quantity transitions to initialize on the price interval.
        #
        #   @return [Array<Orb::Models::PriceIntervalFixedFeeQuantityTransitionModel>, nil]
        optional :fixed_fee_quantity_transitions,
                 -> { Orb::ArrayOf[Orb::Models::PriceIntervalFixedFeeQuantityTransitionModel] },
                 nil?: true

        # @!attribute maximum_amount
        #   The maximum amount that will be billed for this price interval for a given
        #     billing period.
        #
        #   @return [Float, nil]
        optional :maximum_amount, Float, nil?: true

        # @!attribute minimum_amount
        #   The minimum amount that will be billed for this price interval for a given
        #     billing period.
        #
        #   @return [Float, nil]
        optional :minimum_amount, Float, nil?: true

        # @!attribute price
        #   The definition of a new price to create and add to the subscription.
        #
        #   @return [Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice, Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice, Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice, Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice, Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice, Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice, nil]
        optional :price, union: -> { Orb::Models::NewFloatingPriceModel }, nil?: true

        # @!attribute price_id
        #   The id of the price to add to the subscription.
        #
        #   @return [String, nil]
        optional :price_id, String, nil?: true

        # @!attribute usage_customer_ids
        #   A list of customer IDs whose usage events will be aggregated and billed under
        #     this subscription. By default, a subscription only considers usage events
        #     associated with its attached customer's customer_id. When usage_customer_ids is
        #     provided, the subscription includes usage events from the specified customers
        #     only. Provided usage_customer_ids must be either the customer for this
        #     subscription itself, or any of that customer's children.
        #
        #   @return [Array<String>, nil]
        optional :usage_customer_ids, Orb::ArrayOf[String], nil?: true

        # @!parse
        #   # @param start_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate]
        #   # @param allocation_price [Orb::Models::NewAllocationPriceModel, nil]
        #   # @param discounts [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams>, nil]
        #   # @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        #   # @param external_price_id [String, nil]
        #   # @param filter [String, nil]
        #   # @param fixed_fee_quantity_transitions [Array<Orb::Models::PriceIntervalFixedFeeQuantityTransitionModel>, nil]
        #   # @param maximum_amount [Float, nil]
        #   # @param minimum_amount [Float, nil]
        #   # @param price [Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice, Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice, Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice, Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice, Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice, Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice, Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice, Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice, Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice, Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice, nil]
        #   # @param price_id [String, nil]
        #   # @param usage_customer_ids [Array<String>, nil]
        #   #
        #   def initialize(
        #     start_date:,
        #     allocation_price: nil,
        #     discounts: nil,
        #     end_date: nil,
        #     external_price_id: nil,
        #     filter: nil,
        #     fixed_fee_quantity_transitions: nil,
        #     maximum_amount: nil,
        #     minimum_amount: nil,
        #     price: nil,
        #     price_id: nil,
        #     usage_customer_ids: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # The start date of the price interval. This is the date that the price will start
        #   billing on the subscription.
        #
        # @example
        # ```ruby
        # case start_date
        # in Time
        #   # ...
        # in Orb::Models::BillingCycleRelativeDate
        #   # ...
        # end
        # ```
        class StartDate < Orb::Union
          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }
        end

        # @abstract
        #
        # @example
        # ```ruby
        # case discount
        # in {discount_type: "amount", amount_discount: Float}
        #   # Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams ...
        # in {discount_type: "percentage", percentage_discount: Float}
        #   # Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams ...
        # in {discount_type: "usage", usage_discount: Float}
        #   # Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams ...
        # end
        # ```
        #
        # @example
        # ```ruby
        # case discount
        # in Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams
        #   # ...
        # in Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams
        #   # ...
        # in Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams
        #   # ...
        # end
        # ```
        class Discount < Orb::Union
          discriminator :discount_type

          variant :amount,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams }

          variant :percentage,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams }

          variant :usage,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams }

          class AmountDiscountCreationParams < Orb::BaseModel
            # @!attribute amount_discount
            #   Only available if discount_type is `amount`.
            #
            #   @return [Float]
            required :amount_discount, Float

            # @!attribute discount_type
            #
            #   @return [Symbol, :amount]
            required :discount_type, const: :amount

            # @!parse
            #   # @param amount_discount [Float]
            #   # @param discount_type [Symbol, :amount]
            #   #
            #   def initialize(amount_discount:, discount_type: :amount, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          class PercentageDiscountCreationParams < Orb::BaseModel
            # @!attribute discount_type
            #
            #   @return [Symbol, :percentage]
            required :discount_type, const: :percentage

            # @!attribute percentage_discount
            #   Only available if discount_type is `percentage`. This is a number between 0
            #     and 1.
            #
            #   @return [Float]
            required :percentage_discount, Float

            # @!parse
            #   # @param percentage_discount [Float]
            #   # @param discount_type [Symbol, :percentage]
            #   #
            #   def initialize(percentage_discount:, discount_type: :percentage, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end

          class UsageDiscountCreationParams < Orb::BaseModel
            # @!attribute discount_type
            #
            #   @return [Symbol, :usage]
            required :discount_type, const: :usage

            # @!attribute usage_discount
            #   Only available if discount_type is `usage`. Number of usage units that this
            #     discount is for.
            #
            #   @return [Float]
            required :usage_discount, Float

            # @!parse
            #   # @param usage_discount [Float]
            #   # @param discount_type [Symbol, :usage]
            #   #
            #   def initialize(usage_discount:, discount_type: :usage, **) = super

            # def initialize: (Hash | Orb::BaseModel) -> void
          end
        end

        # @abstract
        #
        # The end date of the price interval. This is the date that the price will stop
        #   billing on the subscription.
        #
        # @example
        # ```ruby
        # case end_date
        # in Time
        #   # ...
        # in Orb::Models::BillingCycleRelativeDate
        #   # ...
        # end
        # ```
        class EndDate < Orb::Union
          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }
        end
      end

      class AddAdjustment < Orb::BaseModel
        # @!attribute adjustment
        #   The definition of a new adjustment to create and add to the subscription.
        #
        #   @return [Orb::Models::NewAdjustmentModel::NewPercentageDiscount, Orb::Models::NewAdjustmentModel::NewUsageDiscount, Orb::Models::NewAdjustmentModel::NewAmountDiscount, Orb::Models::NewAdjustmentModel::NewMinimum, Orb::Models::NewAdjustmentModel::NewMaximum]
        required :adjustment, union: -> { Orb::Models::NewAdjustmentModel }

        # @!attribute start_date
        #   The start date of the adjustment interval. This is the date that the adjustment
        #     will start affecting prices on the subscription.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate]
        required :start_date,
                 union: -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::StartDate }

        # @!attribute end_date
        #   The end date of the adjustment interval. This is the date that the adjustment
        #     will stop affecting prices on the subscription.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :end_date,
                 union: -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::EndDate },
                 nil?: true

        # @!parse
        #   # @param adjustment [Orb::Models::NewAdjustmentModel::NewPercentageDiscount, Orb::Models::NewAdjustmentModel::NewUsageDiscount, Orb::Models::NewAdjustmentModel::NewAmountDiscount, Orb::Models::NewAdjustmentModel::NewMinimum, Orb::Models::NewAdjustmentModel::NewMaximum]
        #   # @param start_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate]
        #   # @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        #   #
        #   def initialize(adjustment:, start_date:, end_date: nil, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # The start date of the adjustment interval. This is the date that the adjustment
        #   will start affecting prices on the subscription.
        #
        # @example
        # ```ruby
        # case start_date
        # in Time
        #   # ...
        # in Orb::Models::BillingCycleRelativeDate
        #   # ...
        # end
        # ```
        class StartDate < Orb::Union
          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }
        end

        # @abstract
        #
        # The end date of the adjustment interval. This is the date that the adjustment
        #   will stop affecting prices on the subscription.
        #
        # @example
        # ```ruby
        # case end_date
        # in Time
        #   # ...
        # in Orb::Models::BillingCycleRelativeDate
        #   # ...
        # end
        # ```
        class EndDate < Orb::Union
          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }
        end
      end

      class Edit < Orb::BaseModel
        # @!attribute price_interval_id
        #   The id of the price interval to edit.
        #
        #   @return [String]
        required :price_interval_id, String

        # @!attribute billing_cycle_day
        #   The updated billing cycle day for this price interval. If not specified, the
        #     billing cycle day will not be updated. Note that overlapping price intervals
        #     must have the same billing cycle day.
        #
        #   @return [Integer, nil]
        optional :billing_cycle_day, Integer, nil?: true

        # @!attribute end_date
        #   The updated end date of this price interval. If not specified, the start date
        #     will not be updated.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :end_date, union: -> { Orb::Models::SubscriptionPriceIntervalsParams::Edit::EndDate }, nil?: true

        # @!attribute filter
        #   An additional filter to apply to usage queries. This filter must be expressed as
        #     a boolean
        #     [computed property](/extensibility/advanced-metrics#computed-properties). If
        #     null, usage queries will not include any additional filter.
        #
        #   @return [String, nil]
        optional :filter, String, nil?: true

        # @!attribute fixed_fee_quantity_transitions
        #   A list of fixed fee quantity transitions to use for this price interval. Note
        #     that this list will overwrite all existing fixed fee quantity transitions on the
        #     price interval.
        #
        #   @return [Array<Orb::Models::PriceIntervalFixedFeeQuantityTransitionModel>, nil]
        optional :fixed_fee_quantity_transitions,
                 -> { Orb::ArrayOf[Orb::Models::PriceIntervalFixedFeeQuantityTransitionModel] },
                 nil?: true

        # @!attribute [r] start_date
        #   The updated start date of this price interval. If not specified, the start date
        #     will not be updated.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :start_date, union: -> { Orb::Models::SubscriptionPriceIntervalsParams::Edit::StartDate }

        # @!parse
        #   # @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate]
        #   attr_writer :start_date

        # @!attribute usage_customer_ids
        #   A list of customer IDs whose usage events will be aggregated and billed under
        #     this subscription. By default, a subscription only considers usage events
        #     associated with its attached customer's customer_id. When usage_customer_ids is
        #     provided, the subscription includes usage events from the specified customers
        #     only. Provided usage_customer_ids must be either the customer for this
        #     subscription itself, or any of that customer's children.
        #
        #   @return [Array<String>, nil]
        optional :usage_customer_ids, Orb::ArrayOf[String], nil?: true

        # @!parse
        #   # @param price_interval_id [String]
        #   # @param billing_cycle_day [Integer, nil]
        #   # @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        #   # @param filter [String, nil]
        #   # @param fixed_fee_quantity_transitions [Array<Orb::Models::PriceIntervalFixedFeeQuantityTransitionModel>, nil]
        #   # @param start_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate]
        #   # @param usage_customer_ids [Array<String>, nil]
        #   #
        #   def initialize(
        #     price_interval_id:,
        #     billing_cycle_day: nil,
        #     end_date: nil,
        #     filter: nil,
        #     fixed_fee_quantity_transitions: nil,
        #     start_date: nil,
        #     usage_customer_ids: nil,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # The updated end date of this price interval. If not specified, the start date
        #   will not be updated.
        #
        # @example
        # ```ruby
        # case end_date
        # in Time
        #   # ...
        # in Orb::Models::BillingCycleRelativeDate
        #   # ...
        # end
        # ```
        class EndDate < Orb::Union
          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }
        end

        # @abstract
        #
        # The updated start date of this price interval. If not specified, the start date
        #   will not be updated.
        #
        # @example
        # ```ruby
        # case start_date
        # in Time
        #   # ...
        # in Orb::Models::BillingCycleRelativeDate
        #   # ...
        # end
        # ```
        class StartDate < Orb::Union
          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }
        end
      end

      class EditAdjustment < Orb::BaseModel
        # @!attribute adjustment_interval_id
        #   The id of the adjustment interval to edit.
        #
        #   @return [String]
        required :adjustment_interval_id, String

        # @!attribute end_date
        #   The updated end date of this adjustment interval. If not specified, the start
        #     date will not be updated.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :end_date,
                 union: -> { Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment::EndDate },
                 nil?: true

        # @!attribute [r] start_date
        #   The updated start date of this adjustment interval. If not specified, the start
        #     date will not be updated.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :start_date,
                 union: -> { Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment::StartDate }

        # @!parse
        #   # @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate]
        #   attr_writer :start_date

        # @!parse
        #   # @param adjustment_interval_id [String]
        #   # @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        #   # @param start_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate]
        #   #
        #   def initialize(adjustment_interval_id:, end_date: nil, start_date: nil, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # The updated end date of this adjustment interval. If not specified, the start
        #   date will not be updated.
        #
        # @example
        # ```ruby
        # case end_date
        # in Time
        #   # ...
        # in Orb::Models::BillingCycleRelativeDate
        #   # ...
        # end
        # ```
        class EndDate < Orb::Union
          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }
        end

        # @abstract
        #
        # The updated start date of this adjustment interval. If not specified, the start
        #   date will not be updated.
        #
        # @example
        # ```ruby
        # case start_date
        # in Time
        #   # ...
        # in Orb::Models::BillingCycleRelativeDate
        #   # ...
        # end
        # ```
        class StartDate < Orb::Union
          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }
        end
      end
    end
  end
end
