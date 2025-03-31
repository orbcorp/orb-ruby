# frozen_string_literal: true

module Orb
  module Models
    class SubscriptionPriceIntervalsParams < Orb::BaseModel
      # @!parse
      #   extend Orb::Type::RequestParameters::Converter
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
        #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice, nil]
        optional :allocation_price,
                 -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice },
                 nil?: true

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
        #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition>, nil]
        optional :fixed_fee_quantity_transitions,
                 -> { Orb::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition] },
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
        #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice, nil]
        optional :price, union: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price }, nil?: true

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
        #   # @param allocation_price [Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice, nil]
        #   # @param discounts [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams>, nil]
        #   # @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        #   # @param external_price_id [String, nil]
        #   # @param filter [String, nil]
        #   # @param fixed_fee_quantity_transitions [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition>, nil]
        #   # @param maximum_amount [Float, nil]
        #   # @param minimum_amount [Float, nil]
        #   # @param price [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice, nil]
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

        # The start date of the price interval. This is the date that the price will start
        #   billing on the subscription.
        module StartDate
          extend Orb::Union

          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }

          # @!parse
          #   # @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
          #   def self.variants; end
        end

        class AllocationPrice < Orb::BaseModel
          # @!attribute amount
          #   An amount of the currency to allocate to the customer at the specified cadence.
          #
          #   @return [String]
          required :amount, String

          # @!attribute cadence
          #   The cadence at which to allocate the amount to the customer.
          #
          #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence]
          required :cadence,
                   enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence }

          # @!attribute currency
          #   An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #     this price.
          #
          #   @return [String]
          required :currency, String

          # @!attribute expires_at_end_of_cadence
          #   Whether the allocated amount should expire at the end of the cadence or roll
          #     over to the next period.
          #
          #   @return [Boolean]
          required :expires_at_end_of_cadence, Orb::BooleanModel

          # @!parse
          #   # The definition of a new allocation price to create and add to the subscription.
          #   #
          #   # @param amount [String]
          #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence]
          #   # @param currency [String]
          #   # @param expires_at_end_of_cadence [Boolean]
          #   #
          #   def initialize(amount:, cadence:, currency:, expires_at_end_of_cadence:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void

          # The cadence at which to allocate the amount to the customer.
          module Cadence
            extend Orb::Enum

            ONE_TIME = :one_time
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            SEMI_ANNUAL = :semi_annual
            ANNUAL = :annual
            CUSTOM = :custom

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        module Discount
          extend Orb::Union

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

          # @!parse
          #   # @return [Array(Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::AmountDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::PercentageDiscountCreationParams, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::UsageDiscountCreationParams)]
          #   def self.variants; end
        end

        # The end date of the price interval. This is the date that the price will stop
        #   billing on the subscription.
        module EndDate
          extend Orb::Union

          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }

          # @!parse
          #   # @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
          #   def self.variants; end
        end

        class FixedFeeQuantityTransition < Orb::BaseModel
          # @!attribute effective_date
          #   The date that the fixed fee quantity transition should take effect.
          #
          #   @return [Time]
          required :effective_date, Time

          # @!attribute quantity
          #   The quantity of the fixed fee quantity transition.
          #
          #   @return [Integer]
          required :quantity, Integer

          # @!parse
          #   # @param effective_date [Time]
          #   # @param quantity [Integer]
          #   #
          #   def initialize(effective_date:, quantity:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # The definition of a new price to create and add to the subscription.
        module Price
          extend Orb::Union

          discriminator :model_type

          variant :unit, -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice }

          variant :package,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice }

          variant :matrix, -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice }

          variant :matrix_with_allocation,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice }

          variant :tiered, -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice }

          variant :tiered_bps,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice }

          variant :bps, -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice }

          variant :bulk_bps,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice }

          variant :bulk, -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice }

          variant :threshold_total_amount,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice }

          variant :tiered_package,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice }

          variant :grouped_tiered,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice }

          variant :max_group_tiered_package,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice }

          variant :tiered_with_minimum,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice }

          variant :package_with_allocation,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice }

          variant :tiered_package_with_minimum,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice }

          variant :unit_with_percent,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice }

          variant :tiered_with_proration,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice }

          variant :unit_with_proration,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice }

          variant :grouped_allocation,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice }

          variant :grouped_with_prorated_minimum,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice }

          variant :grouped_with_metered_minimum,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice }

          variant :matrix_with_display_name,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice }

          variant :bulk_with_proration,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice }

          variant :grouped_tiered_package,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice }

          variant :scalable_matrix_with_unit_pricing,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice }

          variant :scalable_matrix_with_tiered_pricing,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice }

          variant :cumulative_grouped_bulk,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice }

          class NewFloatingUnitPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :unit]
            required :model_type, const: :unit

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute unit_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::UnitConfig]
            required :unit_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::UnitConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param unit_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::UnitConfig]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :unit]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     unit_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :unit,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class UnitConfig < Orb::BaseModel
              # @!attribute unit_amount
              #   Rate per unit of usage
              #
              #   @return [String]
              required :unit_amount, String

              # @!parse
              #   # @param unit_amount [String]
              #   #
              #   def initialize(unit_amount:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingPackagePrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :package]
            required :model_type, const: :package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute package_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig]
            required :package_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param package_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::PackageConfig]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :package]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     package_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :package,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class PackageConfig < Orb::BaseModel
              # @!attribute package_amount
              #   A currency amount to rate usage by
              #
              #   @return [String]
              required :package_amount, String

              # @!attribute package_size
              #   An integer amount to represent package size. For example, 1000 here would divide
              #     usage by 1000 before multiplying by package_amount in rating
              #
              #   @return [Integer]
              required :package_size, Integer

              # @!parse
              #   # @param package_amount [String]
              #   # @param package_size [Integer]
              #   #
              #   def initialize(package_amount:, package_size:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingMatrixPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig]
            required :matrix_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig }

            # @!attribute model_type
            #
            #   @return [Symbol, :matrix]
            required :model_type, const: :matrix

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param matrix_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :matrix]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     matrix_config:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :matrix,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class MatrixConfig < Orb::BaseModel
              # @!attribute default_unit_amount
              #   Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @return [String]
              required :default_unit_amount, String

              # @!attribute dimensions
              #   One or two event property values to evaluate matrix groups by
              #
              #   @return [Array<String, nil>]
              required :dimensions, Orb::ArrayOf[String, nil?: true]

              # @!attribute matrix_values
              #   Matrix values for specified matrix grouping keys
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig::MatrixValue>]
              required :matrix_values,
                       -> do
                         Orb::ArrayOf[
                         Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig::MatrixValue
                         ]
                       end

              # @!parse
              #   # @param default_unit_amount [String]
              #   # @param dimensions [Array<String, nil>]
              #   # @param matrix_values [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::MatrixConfig::MatrixValue>]
              #   #
              #   def initialize(default_unit_amount:, dimensions:, matrix_values:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              class MatrixValue < Orb::BaseModel
                # @!attribute dimension_values
                #   One or two matrix keys to filter usage to this Matrix value by. For example,
                #     ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                #     instance tier.
                #
                #   @return [Array<String, nil>]
                required :dimension_values, Orb::ArrayOf[String, nil?: true]

                # @!attribute unit_amount
                #   Unit price for the specified dimension_values
                #
                #   @return [String]
                required :unit_amount, String

                # @!parse
                #   # @param dimension_values [Array<String, nil>]
                #   # @param unit_amount [String]
                #   #
                #   def initialize(dimension_values:, unit_amount:, **) = super

                # def initialize: (Hash | Orb::BaseModel) -> void
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingMatrixWithAllocationPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_with_allocation_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig]
            required :matrix_with_allocation_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig }

            # @!attribute model_type
            #
            #   @return [Symbol, :matrix_with_allocation]
            required :model_type, const: :matrix_with_allocation

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param matrix_with_allocation_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :matrix_with_allocation]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     matrix_with_allocation_config:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :matrix_with_allocation,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class MatrixWithAllocationConfig < Orb::BaseModel
              # @!attribute allocation
              #   Allocation to be used to calculate the price
              #
              #   @return [Float]
              required :allocation, Float

              # @!attribute default_unit_amount
              #   Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @return [String]
              required :default_unit_amount, String

              # @!attribute dimensions
              #   One or two event property values to evaluate matrix groups by
              #
              #   @return [Array<String, nil>]
              required :dimensions, Orb::ArrayOf[String, nil?: true]

              # @!attribute matrix_values
              #   Matrix values for specified matrix grouping keys
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue>]
              required :matrix_values,
                       -> do
                         Orb::ArrayOf[
                         Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue
                         ]
                       end

              # @!parse
              #   # @param allocation [Float]
              #   # @param default_unit_amount [String]
              #   # @param dimensions [Array<String, nil>]
              #   # @param matrix_values [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::MatrixWithAllocationConfig::MatrixValue>]
              #   #
              #   def initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              class MatrixValue < Orb::BaseModel
                # @!attribute dimension_values
                #   One or two matrix keys to filter usage to this Matrix value by. For example,
                #     ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                #     instance tier.
                #
                #   @return [Array<String, nil>]
                required :dimension_values, Orb::ArrayOf[String, nil?: true]

                # @!attribute unit_amount
                #   Unit price for the specified dimension_values
                #
                #   @return [String]
                required :unit_amount, String

                # @!parse
                #   # @param dimension_values [Array<String, nil>]
                #   # @param unit_amount [String]
                #   #
                #   def initialize(dimension_values:, unit_amount:, **) = super

                # def initialize: (Hash | Orb::BaseModel) -> void
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingTieredPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered]
            required :model_type, const: :tiered

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig]
            required :tiered_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param tiered_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :tiered]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     tiered_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :tiered,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class TieredConfig < Orb::BaseModel
              # @!attribute tiers
              #   Tiers for rating based on total usage quantities into the specified tier
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig::Tier>]
              required :tiers,
                       -> { Orb::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig::Tier] }

              # @!parse
              #   # @param tiers [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::TieredConfig::Tier>]
              #   #
              #   def initialize(tiers:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              class Tier < Orb::BaseModel
                # @!attribute first_unit
                #   Inclusive tier starting value
                #
                #   @return [Float]
                required :first_unit, Float

                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute last_unit
                #   Exclusive tier ending value. If null, this is treated as the last tier
                #
                #   @return [Float, nil]
                optional :last_unit, Float, nil?: true

                # @!parse
                #   # @param first_unit [Float]
                #   # @param unit_amount [String]
                #   # @param last_unit [Float, nil]
                #   #
                #   def initialize(first_unit:, unit_amount:, last_unit: nil, **) = super

                # def initialize: (Hash | Orb::BaseModel) -> void
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingTieredBpsPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_bps]
            required :model_type, const: :tiered_bps

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_bps_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig]
            required :tiered_bps_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param tiered_bps_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :tiered_bps]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     tiered_bps_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :tiered_bps,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class TieredBpsConfig < Orb::BaseModel
              # @!attribute tiers
              #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              #     tiers
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig::Tier>]
              required :tiers,
                       -> do
                         Orb::ArrayOf[
                         Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig::Tier
                         ]
                       end

              # @!parse
              #   # @param tiers [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::TieredBpsConfig::Tier>]
              #   #
              #   def initialize(tiers:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              class Tier < Orb::BaseModel
                # @!attribute bps
                #   Per-event basis point rate
                #
                #   @return [Float]
                required :bps, Float

                # @!attribute minimum_amount
                #   Inclusive tier starting value
                #
                #   @return [String]
                required :minimum_amount, String

                # @!attribute maximum_amount
                #   Exclusive tier ending value
                #
                #   @return [String, nil]
                optional :maximum_amount, String, nil?: true

                # @!attribute per_unit_maximum
                #   Per unit maximum to charge
                #
                #   @return [String, nil]
                optional :per_unit_maximum, String, nil?: true

                # @!parse
                #   # @param bps [Float]
                #   # @param minimum_amount [String]
                #   # @param maximum_amount [String, nil]
                #   # @param per_unit_maximum [String, nil]
                #   #
                #   def initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil, **) = super

                # def initialize: (Hash | Orb::BaseModel) -> void
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingBpsPrice < Orb::BaseModel
            # @!attribute bps_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig]
            required :bps_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :bps]
            required :model_type, const: :bps

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param bps_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BpsConfig]
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :bps]
            #   #
            #   def initialize(
            #     bps_config:,
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :bps,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            class BpsConfig < Orb::BaseModel
              # @!attribute bps
              #   Basis point take rate per event
              #
              #   @return [Float]
              required :bps, Float

              # @!attribute per_unit_maximum
              #   Optional currency amount maximum to cap spend per event
              #
              #   @return [String, nil]
              optional :per_unit_maximum, String, nil?: true

              # @!parse
              #   # @param bps [Float]
              #   # @param per_unit_maximum [String, nil]
              #   #
              #   def initialize(bps:, per_unit_maximum: nil, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingBulkBpsPrice < Orb::BaseModel
            # @!attribute bulk_bps_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig]
            required :bulk_bps_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :bulk_bps]
            required :model_type, const: :bulk_bps

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param bulk_bps_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig]
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :bulk_bps]
            #   #
            #   def initialize(
            #     bulk_bps_config:,
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :bulk_bps,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            class BulkBpsConfig < Orb::BaseModel
              # @!attribute tiers
              #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              #     tier based on total volume
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig::Tier>]
              required :tiers,
                       -> { Orb::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig::Tier] }

              # @!parse
              #   # @param tiers [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BulkBpsConfig::Tier>]
              #   #
              #   def initialize(tiers:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              class Tier < Orb::BaseModel
                # @!attribute bps
                #   Basis points to rate on
                #
                #   @return [Float]
                required :bps, Float

                # @!attribute maximum_amount
                #   Upper bound for tier
                #
                #   @return [String, nil]
                optional :maximum_amount, String, nil?: true

                # @!attribute per_unit_maximum
                #   The maximum amount to charge for any one event
                #
                #   @return [String, nil]
                optional :per_unit_maximum, String, nil?: true

                # @!parse
                #   # @param bps [Float]
                #   # @param maximum_amount [String, nil]
                #   # @param per_unit_maximum [String, nil]
                #   #
                #   def initialize(bps:, maximum_amount: nil, per_unit_maximum: nil, **) = super

                # def initialize: (Hash | Orb::BaseModel) -> void
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingBulkPrice < Orb::BaseModel
            # @!attribute bulk_config
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig]
            required :bulk_config,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :bulk]
            required :model_type, const: :bulk

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param bulk_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig]
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :bulk]
            #   #
            #   def initialize(
            #     bulk_config:,
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :bulk,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            class BulkConfig < Orb::BaseModel
              # @!attribute tiers
              #   Bulk tiers for rating based on total usage volume
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig::Tier>]
              required :tiers,
                       -> { Orb::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig::Tier] }

              # @!parse
              #   # @param tiers [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BulkConfig::Tier>]
              #   #
              #   def initialize(tiers:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              class Tier < Orb::BaseModel
                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute maximum_units
                #   Upper bound for this tier
                #
                #   @return [Float, nil]
                optional :maximum_units, Float, nil?: true

                # @!parse
                #   # @param unit_amount [String]
                #   # @param maximum_units [Float, nil]
                #   #
                #   def initialize(unit_amount:, maximum_units: nil, **) = super

                # def initialize: (Hash | Orb::BaseModel) -> void
              end
            end

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingThresholdTotalAmountPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :threshold_total_amount]
            required :model_type, const: :threshold_total_amount

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute threshold_total_amount_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :threshold_total_amount_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param threshold_total_amount_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :threshold_total_amount]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     threshold_total_amount_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :threshold_total_amount,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingTieredPackagePrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_package]
            required :model_type, const: :tiered_package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_package_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param tiered_package_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :tiered_package]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     tiered_package_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :tiered_package,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingGroupedTieredPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_tiered_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_tiered_config, Orb::HashOf[Orb::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_tiered]
            required :model_type, const: :grouped_tiered

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::Cadence]
            #   # @param currency [String]
            #   # @param grouped_tiered_config [Hash{Symbol=>Object}]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :grouped_tiered]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     grouped_tiered_config:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :grouped_tiered,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingMaxGroupTieredPackagePrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute max_group_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :max_group_tiered_package_config, Orb::HashOf[Orb::Unknown]

            # @!attribute model_type
            #
            #   @return [Symbol, :max_group_tiered_package]
            required :model_type, const: :max_group_tiered_package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param max_group_tiered_package_config [Hash{Symbol=>Object}]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :max_group_tiered_package]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     max_group_tiered_package_config:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :max_group_tiered_package,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingTieredWithMinimumPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_with_minimum]
            required :model_type, const: :tiered_with_minimum

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_with_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_with_minimum_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param tiered_with_minimum_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :tiered_with_minimum]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     tiered_with_minimum_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :tiered_with_minimum,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingPackageWithAllocationPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :package_with_allocation]
            required :model_type, const: :package_with_allocation

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute package_with_allocation_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :package_with_allocation_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param package_with_allocation_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :package_with_allocation]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     package_with_allocation_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :package_with_allocation,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingTieredPackageWithMinimumPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_package_with_minimum]
            required :model_type, const: :tiered_package_with_minimum

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_package_with_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_package_with_minimum_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param tiered_package_with_minimum_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :tiered_package_with_minimum]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     tiered_package_with_minimum_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :tiered_package_with_minimum,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingUnitWithPercentPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :unit_with_percent]
            required :model_type, const: :unit_with_percent

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute unit_with_percent_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :unit_with_percent_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param unit_with_percent_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :unit_with_percent]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     unit_with_percent_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :unit_with_percent,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingTieredWithProrationPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :tiered_with_proration]
            required :model_type, const: :tiered_with_proration

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute tiered_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :tiered_with_proration_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param tiered_with_proration_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :tiered_with_proration]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     tiered_with_proration_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :tiered_with_proration,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingUnitWithProrationPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :unit_with_proration]
            required :model_type, const: :unit_with_proration

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute unit_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :unit_with_proration_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param unit_with_proration_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :unit_with_proration]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     unit_with_proration_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :unit_with_proration,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingGroupedAllocationPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_allocation_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_allocation_config, Orb::HashOf[Orb::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_allocation]
            required :model_type, const: :grouped_allocation

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::Cadence]
            #   # @param currency [String]
            #   # @param grouped_allocation_config [Hash{Symbol=>Object}]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :grouped_allocation]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     grouped_allocation_config:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :grouped_allocation,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingGroupedWithProratedMinimumPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_with_prorated_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_prorated_minimum_config, Orb::HashOf[Orb::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_with_prorated_minimum]
            required :model_type, const: :grouped_with_prorated_minimum

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::Cadence]
            #   # @param currency [String]
            #   # @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :grouped_with_prorated_minimum]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     grouped_with_prorated_minimum_config:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :grouped_with_prorated_minimum,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingGroupedWithMeteredMinimumPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_with_metered_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_metered_minimum_config, Orb::HashOf[Orb::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_with_metered_minimum]
            required :model_type, const: :grouped_with_metered_minimum

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::Cadence]
            #   # @param currency [String]
            #   # @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :grouped_with_metered_minimum]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     grouped_with_metered_minimum_config:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :grouped_with_metered_minimum,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingMatrixWithDisplayNamePrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_with_display_name_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :matrix_with_display_name_config, Orb::HashOf[Orb::Unknown]

            # @!attribute model_type
            #
            #   @return [Symbol, :matrix_with_display_name]
            required :model_type, const: :matrix_with_display_name

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param matrix_with_display_name_config [Hash{Symbol=>Object}]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :matrix_with_display_name]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     matrix_with_display_name_config:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :matrix_with_display_name,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingBulkWithProrationPrice < Orb::BaseModel
            # @!attribute bulk_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :bulk_with_proration_config, Orb::HashOf[Orb::Unknown]

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :bulk_with_proration]
            required :model_type, const: :bulk_with_proration

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param bulk_with_proration_config [Hash{Symbol=>Object}]
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :bulk_with_proration]
            #   #
            #   def initialize(
            #     bulk_with_proration_config:,
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :bulk_with_proration,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingGroupedTieredPackagePrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute grouped_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_tiered_package_config, Orb::HashOf[Orb::Unknown]

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :grouped_tiered_package]
            required :model_type, const: :grouped_tiered_package

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::Cadence]
            #   # @param currency [String]
            #   # @param grouped_tiered_package_config [Hash{Symbol=>Object}]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :grouped_tiered_package]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     grouped_tiered_package_config:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :grouped_tiered_package,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingScalableMatrixWithUnitPricingPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :scalable_matrix_with_unit_pricing]
            required :model_type, const: :scalable_matrix_with_unit_pricing

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute scalable_matrix_with_unit_pricing_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :scalable_matrix_with_unit_pricing_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :scalable_matrix_with_unit_pricing]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     scalable_matrix_with_unit_pricing_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :scalable_matrix_with_unit_pricing,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingScalableMatrixWithTieredPricingPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :scalable_matrix_with_tiered_pricing]
            required :model_type, const: :scalable_matrix_with_tiered_pricing

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute scalable_matrix_with_tiered_pricing_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :scalable_matrix_with_tiered_pricing_config, Orb::HashOf[Orb::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]
            #   #
            #   def initialize(
            #     cadence:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     scalable_matrix_with_tiered_pricing_config:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :scalable_matrix_with_tiered_pricing,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          class NewFloatingCumulativeGroupedBulkPrice < Orb::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::Cadence]
            required :cadence,
                     enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::Cadence }

            # @!attribute cumulative_grouped_bulk_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :cumulative_grouped_bulk_config, Orb::HashOf[Orb::Unknown]

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute model_type
            #
            #   @return [Symbol, :cumulative_grouped_bulk]
            required :model_type, const: :cumulative_grouped_bulk

            # @!attribute name
            #   The name of the price.
            #
            #   @return [String]
            required :name, String

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #     usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #     this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::BooleanModel, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #     months.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #     applied.
            #
            #   @return [Float, nil]
            optional :fixed_price_quantity, Float, nil?: true

            # @!attribute invoice_grouping_key
            #   The property used to group this price on an invoice
            #
            #   @return [String, nil]
            optional :invoice_grouping_key, String, nil?: true

            # @!attribute invoicing_cycle_configuration
            #   Within each billing cycle, specifies the cadence at which invoices are produced.
            #     If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #     by setting the value to `null`, and the entire metadata mapping can be cleared
            #     by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

            # @!parse
            #   # @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::Cadence]
            #   # @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
            #   # @param currency [String]
            #   # @param item_id [String]
            #   # @param name [String]
            #   # @param billable_metric_id [String, nil]
            #   # @param billed_in_advance [Boolean, nil]
            #   # @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration, nil]
            #   # @param conversion_rate [Float, nil]
            #   # @param external_price_id [String, nil]
            #   # @param fixed_price_quantity [Float, nil]
            #   # @param invoice_grouping_key [String, nil]
            #   # @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration, nil]
            #   # @param metadata [Hash{Symbol=>String, nil}, nil]
            #   # @param model_type [Symbol, :cumulative_grouped_bulk]
            #   #
            #   def initialize(
            #     cadence:,
            #     cumulative_grouped_bulk_config:,
            #     currency:,
            #     item_id:,
            #     name:,
            #     billable_metric_id: nil,
            #     billed_in_advance: nil,
            #     billing_cycle_configuration: nil,
            #     conversion_rate: nil,
            #     external_price_id: nil,
            #     fixed_price_quantity: nil,
            #     invoice_grouping_key: nil,
            #     invoicing_cycle_configuration: nil,
            #     metadata: nil,
            #     model_type: :cumulative_grouped_bulk,
            #     **
            #   )
            #     super
            #   end

            # def initialize: (Hash | Orb::BaseModel) -> void

            # The cadence to bill for this price on.
            module Cadence
              extend Orb::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              finalize!

              # @!parse
              #   # @return [Array<Symbol>]
              #   def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit }

              # @!parse
              #   # For custom cadence: specifies the duration of the billing period in days or
              #   #   months.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::BillingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> { Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit }

              # @!parse
              #   # Within each billing cycle, specifies the cadence at which invoices are produced.
              #   #   If unspecified, a single invoice is produced per billing cycle.
              #   #
              #   # @param duration [Integer]
              #   # @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice::InvoicingCycleConfiguration::DurationUnit]
              #   #
              #   def initialize(duration:, duration_unit:, **) = super

              # def initialize: (Hash | Orb::BaseModel) -> void

              # The unit of billing period duration.
              module DurationUnit
                extend Orb::Enum

                DAY = :day
                MONTH = :month

                finalize!

                # @!parse
                #   # @return [Array<Symbol>]
                #   def self.values; end
              end
            end
          end

          # @!parse
          #   # @return [Array(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkBpsPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingThresholdTotalAmountPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMaxGroupTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingPackageWithAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredPackageWithMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithPercentPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingTieredWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingUnitWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedAllocationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedWithMeteredMinimumPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingMatrixWithDisplayNamePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingBulkWithProrationPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingGroupedTieredPackagePrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithUnitPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingScalableMatrixWithTieredPricingPrice, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::NewFloatingCumulativeGroupedBulkPrice)]
          #   def self.variants; end
        end
      end

      class AddAdjustment < Orb::BaseModel
        # @!attribute adjustment
        #   The definition of a new adjustment to create and add to the subscription.
        #
        #   @return [Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum]
        required :adjustment,
                 union: -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment }

        # @!attribute start_date
        #   The start date of the adjustment interval. This is the date that the adjustment
        #     will start affecting prices on the subscription. The adjustment will apply to
        #     invoice dates that overlap with this `start_date`. This `start_date` is treated
        #     as inclusive for in-advance prices, and exclusive for in-arrears prices.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate]
        required :start_date,
                 union: -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::StartDate }

        # @!attribute end_date
        #   The end date of the adjustment interval. This is the date that the adjustment
        #     will stop affecting prices on the subscription. The adjustment will apply to
        #     invoice dates that overlap with this `end_date`.This `end_date` is treated as
        #     exclusive for in-advance prices, and inclusive for in-arrears prices.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :end_date,
                 union: -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::EndDate },
                 nil?: true

        # @!parse
        #   # @param adjustment [Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum]
        #   # @param start_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate]
        #   # @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        #   #
        #   def initialize(adjustment:, start_date:, end_date: nil, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        # The definition of a new adjustment to create and add to the subscription.
        module Adjustment
          extend Orb::Union

          discriminator :adjustment_type

          variant :percentage_discount,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount }

          variant :usage_discount,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount }

          variant :amount_discount,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount }

          variant :minimum,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum }

          variant :maximum,
                  -> { Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum }

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

          # @!parse
          #   # @return [Array(Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::NewMaximum)]
          #   def self.variants; end
        end

        # The start date of the adjustment interval. This is the date that the adjustment
        #   will start affecting prices on the subscription. The adjustment will apply to
        #   invoice dates that overlap with this `start_date`. This `start_date` is treated
        #   as inclusive for in-advance prices, and exclusive for in-arrears prices.
        module StartDate
          extend Orb::Union

          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }

          # @!parse
          #   # @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
          #   def self.variants; end
        end

        # The end date of the adjustment interval. This is the date that the adjustment
        #   will stop affecting prices on the subscription. The adjustment will apply to
        #   invoice dates that overlap with this `end_date`.This `end_date` is treated as
        #   exclusive for in-advance prices, and inclusive for in-arrears prices.
        module EndDate
          extend Orb::Union

          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }

          # @!parse
          #   # @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
          #   def self.variants; end
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
        #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition>, nil]
        optional :fixed_fee_quantity_transitions,
                 -> { Orb::ArrayOf[Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition] },
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
        #   # @param fixed_fee_quantity_transitions [Array<Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition>, nil]
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

        # The updated end date of this price interval. If not specified, the start date
        #   will not be updated.
        module EndDate
          extend Orb::Union

          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }

          # @!parse
          #   # @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
          #   def self.variants; end
        end

        class FixedFeeQuantityTransition < Orb::BaseModel
          # @!attribute effective_date
          #   The date that the fixed fee quantity transition should take effect.
          #
          #   @return [Time]
          required :effective_date, Time

          # @!attribute quantity
          #   The quantity of the fixed fee quantity transition.
          #
          #   @return [Integer]
          required :quantity, Integer

          # @!parse
          #   # @param effective_date [Time]
          #   # @param quantity [Integer]
          #   #
          #   def initialize(effective_date:, quantity:, **) = super

          # def initialize: (Hash | Orb::BaseModel) -> void
        end

        # The updated start date of this price interval. If not specified, the start date
        #   will not be updated.
        module StartDate
          extend Orb::Union

          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }

          # @!parse
          #   # @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
          #   def self.variants; end
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

        # The updated end date of this adjustment interval. If not specified, the start
        #   date will not be updated.
        module EndDate
          extend Orb::Union

          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }

          # @!parse
          #   # @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
          #   def self.variants; end
        end

        # The updated start date of this adjustment interval. If not specified, the start
        #   date will not be updated.
        module StartDate
          extend Orb::Union

          variant Time

          variant enum: -> { Orb::Models::BillingCycleRelativeDate }

          # @!parse
          #   # @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
          #   def self.variants; end
        end
      end
    end
  end
end
