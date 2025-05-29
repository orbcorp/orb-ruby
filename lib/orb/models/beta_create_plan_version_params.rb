# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Beta#create_plan_version
    class BetaCreatePlanVersionParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute version
      #   New version number.
      #
      #   @return [Integer]
      required :version, Integer

      # @!attribute add_adjustments
      #   Additional adjustments to be added to the plan.
      #
      #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::AddAdjustment>, nil]
      optional :add_adjustments,
               -> { Orb::Internal::Type::ArrayOf[Orb::BetaCreatePlanVersionParams::AddAdjustment] },
               nil?: true

      # @!attribute add_prices
      #   Additional prices to be added to the plan.
      #
      #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::AddPrice>, nil]
      optional :add_prices,
               -> { Orb::Internal::Type::ArrayOf[Orb::BetaCreatePlanVersionParams::AddPrice] },
               nil?: true

      # @!attribute remove_adjustments
      #   Adjustments to be removed from the plan.
      #
      #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::RemoveAdjustment>, nil]
      optional :remove_adjustments,
               -> { Orb::Internal::Type::ArrayOf[Orb::BetaCreatePlanVersionParams::RemoveAdjustment] },
               nil?: true

      # @!attribute remove_prices
      #   Prices to be removed from the plan.
      #
      #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::RemovePrice>, nil]
      optional :remove_prices,
               -> { Orb::Internal::Type::ArrayOf[Orb::BetaCreatePlanVersionParams::RemovePrice] },
               nil?: true

      # @!attribute replace_adjustments
      #   Adjustments to be replaced with additional adjustments on the plan.
      #
      #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment>, nil]
      optional :replace_adjustments,
               -> { Orb::Internal::Type::ArrayOf[Orb::BetaCreatePlanVersionParams::ReplaceAdjustment] },
               nil?: true

      # @!attribute replace_prices
      #   Prices to be replaced with additional prices on the plan.
      #
      #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::ReplacePrice>, nil]
      optional :replace_prices,
               -> { Orb::Internal::Type::ArrayOf[Orb::BetaCreatePlanVersionParams::ReplacePrice] },
               nil?: true

      # @!attribute set_as_default
      #   Set this new plan version as the default
      #
      #   @return [Boolean, nil]
      optional :set_as_default, Orb::Internal::Type::Boolean, nil?: true

      # @!method initialize(version:, add_adjustments: nil, add_prices: nil, remove_adjustments: nil, remove_prices: nil, replace_adjustments: nil, replace_prices: nil, set_as_default: nil, request_options: {})
      #   @param version [Integer] New version number.
      #
      #   @param add_adjustments [Array<Orb::Models::BetaCreatePlanVersionParams::AddAdjustment>, nil] Additional adjustments to be added to the plan.
      #
      #   @param add_prices [Array<Orb::Models::BetaCreatePlanVersionParams::AddPrice>, nil] Additional prices to be added to the plan.
      #
      #   @param remove_adjustments [Array<Orb::Models::BetaCreatePlanVersionParams::RemoveAdjustment>, nil] Adjustments to be removed from the plan.
      #
      #   @param remove_prices [Array<Orb::Models::BetaCreatePlanVersionParams::RemovePrice>, nil] Prices to be removed from the plan.
      #
      #   @param replace_adjustments [Array<Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment>, nil] Adjustments to be replaced with additional adjustments on the plan.
      #
      #   @param replace_prices [Array<Orb::Models::BetaCreatePlanVersionParams::ReplacePrice>, nil] Prices to be replaced with additional prices on the plan.
      #
      #   @param set_as_default [Boolean, nil] Set this new plan version as the default
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      class AddAdjustment < Orb::Internal::Type::BaseModel
        # @!attribute adjustment
        #   The definition of a new adjustment to create and add to the plan.
        #
        #   @return [Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::PercentageDiscount, Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::UsageDiscount, Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::AmountDiscount, Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::Minimum, Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::Maximum]
        required :adjustment, union: -> { Orb::BetaCreatePlanVersionParams::AddAdjustment::Adjustment }

        # @!attribute plan_phase_order
        #   The phase to add this adjustment to.
        #
        #   @return [Integer, nil]
        optional :plan_phase_order, Integer, nil?: true

        # @!method initialize(adjustment:, plan_phase_order: nil)
        #   @param adjustment [Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::PercentageDiscount, Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::UsageDiscount, Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::AmountDiscount, Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::Minimum, Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::Maximum] The definition of a new adjustment to create and add to the plan.
        #
        #   @param plan_phase_order [Integer, nil] The phase to add this adjustment to.

        # The definition of a new adjustment to create and add to the plan.
        #
        # @see Orb::Models::BetaCreatePlanVersionParams::AddAdjustment#adjustment
        module Adjustment
          extend Orb::Internal::Type::Union

          discriminator :adjustment_type

          variant :percentage_discount,
                  -> { Orb::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::PercentageDiscount }

          variant :usage_discount,
                  -> {
                    Orb::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::UsageDiscount
                  }

          variant :amount_discount,
                  -> { Orb::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::AmountDiscount }

          variant :minimum, -> { Orb::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::Minimum }

          variant :maximum, -> { Orb::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::Maximum }

          class PercentageDiscount < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :percentage_discount]
            required :adjustment_type, const: :percentage_discount

            # @!attribute percentage_discount
            #
            #   @return [Float]
            required :percentage_discount, Float

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(percentage_discount:, applies_to_price_ids: nil, is_invoice_level: nil, adjustment_type: :percentage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::PercentageDiscount}
            #   for more details.
            #
            #   @param percentage_discount [Float]
            #
            #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :percentage_discount]
          end

          class UsageDiscount < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :usage_discount]
            required :adjustment_type, const: :usage_discount

            # @!attribute usage_discount
            #
            #   @return [Float]
            required :usage_discount, Float

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(usage_discount:, applies_to_price_ids: nil, is_invoice_level: nil, adjustment_type: :usage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::UsageDiscount}
            #   for more details.
            #
            #   @param usage_discount [Float]
            #
            #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :usage_discount]
          end

          class AmountDiscount < Orb::Internal::Type::BaseModel
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
            #   @return [Array<String>, nil]
            optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(amount_discount:, applies_to_price_ids: nil, is_invoice_level: nil, adjustment_type: :amount_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::AmountDiscount}
            #   for more details.
            #
            #   @param amount_discount [String]
            #
            #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :amount_discount]
          end

          class Minimum < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :minimum]
            required :adjustment_type, const: :minimum

            # @!attribute item_id
            #   The item ID that revenue from this minimum will be attributed to.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute minimum_amount
            #
            #   @return [String]
            required :minimum_amount, String

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(item_id:, minimum_amount:, applies_to_price_ids: nil, is_invoice_level: nil, adjustment_type: :minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::Minimum}
            #   for more details.
            #
            #   @param item_id [String] The item ID that revenue from this minimum will be attributed to.
            #
            #   @param minimum_amount [String]
            #
            #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :minimum]
          end

          class Maximum < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :maximum]
            required :adjustment_type, const: :maximum

            # @!attribute maximum_amount
            #
            #   @return [String]
            required :maximum_amount, String

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(maximum_amount:, applies_to_price_ids: nil, is_invoice_level: nil, adjustment_type: :maximum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::Maximum}
            #   for more details.
            #
            #   @param maximum_amount [String]
            #
            #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :maximum]
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::PercentageDiscount, Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::UsageDiscount, Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::AmountDiscount, Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::Minimum, Orb::Models::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::Maximum)]
        end
      end

      class AddPrice < Orb::Internal::Type::BaseModel
        # @!attribute allocation_price
        #   The allocation price to add to the plan.
        #
        #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::AllocationPrice, nil]
        optional :allocation_price,
                 -> {
                   Orb::BetaCreatePlanVersionParams::AddPrice::AllocationPrice
                 },
                 nil?: true

        # @!attribute plan_phase_order
        #   The phase to add this price to.
        #
        #   @return [Integer, nil]
        optional :plan_phase_order, Integer, nil?: true

        # @!attribute price
        #   The price to add to the plan
        #
        #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered, nil]
        optional :price, union: -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price }, nil?: true

        # @!method initialize(allocation_price: nil, plan_phase_order: nil, price: nil)
        #   @param allocation_price [Orb::Models::BetaCreatePlanVersionParams::AddPrice::AllocationPrice, nil] The allocation price to add to the plan.
        #
        #   @param plan_phase_order [Integer, nil] The phase to add this price to.
        #
        #   @param price [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered, nil] The price to add to the plan

        # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice#allocation_price
        class AllocationPrice < Orb::Internal::Type::BaseModel
          # @!attribute amount
          #   An amount of the currency to allocate to the customer at the specified cadence.
          #
          #   @return [String]
          required :amount, String

          # @!attribute cadence
          #   The cadence at which to allocate the amount to the customer.
          #
          #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::AllocationPrice::Cadence]
          required :cadence, enum: -> { Orb::BetaCreatePlanVersionParams::AddPrice::AllocationPrice::Cadence }

          # @!attribute currency
          #   An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #   this price.
          #
          #   @return [String]
          required :currency, String

          # @!attribute custom_expiration
          #   The custom expiration for the allocation.
          #
          #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::AllocationPrice::CustomExpiration, nil]
          optional :custom_expiration,
                   -> { Orb::BetaCreatePlanVersionParams::AddPrice::AllocationPrice::CustomExpiration },
                   nil?: true

          # @!attribute expires_at_end_of_cadence
          #   Whether the allocated amount should expire at the end of the cadence or roll
          #   over to the next period. Set to null if using custom_expiration.
          #
          #   @return [Boolean, nil]
          optional :expires_at_end_of_cadence, Orb::Internal::Type::Boolean, nil?: true

          # @!method initialize(amount:, cadence:, currency:, custom_expiration: nil, expires_at_end_of_cadence: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::AllocationPrice} for more
          #   details.
          #
          #   The allocation price to add to the plan.
          #
          #   @param amount [String] An amount of the currency to allocate to the customer at the specified cadence.
          #
          #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::AllocationPrice::Cadence] The cadence at which to allocate the amount to the customer.
          #
          #   @param currency [String] An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #
          #   @param custom_expiration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::AllocationPrice::CustomExpiration, nil] The custom expiration for the allocation.
          #
          #   @param expires_at_end_of_cadence [Boolean, nil] Whether the allocated amount should expire at the end of the cadence or roll ove

          # The cadence at which to allocate the amount to the customer.
          #
          # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::AllocationPrice#cadence
          module Cadence
            extend Orb::Internal::Type::Enum

            ONE_TIME = :one_time
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            SEMI_ANNUAL = :semi_annual
            ANNUAL = :annual
            CUSTOM = :custom

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::AllocationPrice#custom_expiration
          class CustomExpiration < Orb::Internal::Type::BaseModel
            # @!attribute duration
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::AllocationPrice::CustomExpiration::DurationUnit]
            required :duration_unit,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::AllocationPrice::CustomExpiration::DurationUnit
                     }

            # @!method initialize(duration:, duration_unit:)
            #   The custom expiration for the allocation.
            #
            #   @param duration [Integer]
            #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::AllocationPrice::CustomExpiration::DurationUnit]

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::AllocationPrice::CustomExpiration#duration_unit
            module DurationUnit
              extend Orb::Internal::Type::Enum

              DAY = :day
              MONTH = :month

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # The price to add to the plan
        #
        # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice#price
        module Price
          extend Orb::Internal::Type::Union

          discriminator :model_type

          variant :unit, -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::Unit }

          variant :package, -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::Package }

          variant :matrix, -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::Matrix }

          variant :tiered, -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::Tiered }

          variant :tiered_bps, -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps }

          variant :bps, -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::Bps }

          variant :bulk_bps, -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps }

          variant :bulk, -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::Bulk }

          variant :threshold_total_amount,
                  -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount }

          variant :tiered_package, -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage }

          variant :tiered_with_minimum,
                  -> {
                    Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum
                  }

          variant :unit_with_percent,
                  -> {
                    Orb::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent
                  }

          variant :package_with_allocation,
                  -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation }

          variant :tiered_with_proration,
                  -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration }

          variant :unit_with_proration,
                  -> {
                    Orb::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration
                  }

          variant :grouped_allocation,
                  -> {
                    Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation
                  }

          variant :grouped_with_prorated_minimum,
                  -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum }

          variant :grouped_with_metered_minimum,
                  -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum }

          variant :matrix_with_display_name,
                  -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName }

          variant :bulk_with_proration,
                  -> {
                    Orb::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration
                  }

          variant :grouped_tiered_package,
                  -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage }

          variant :max_group_tiered_package,
                  -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage }

          variant :scalable_matrix_with_unit_pricing,
                  -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing }

          variant :scalable_matrix_with_tiered_pricing,
                  -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing }

          variant :cumulative_grouped_bulk,
                  -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk }

          variant :tiered_package_with_minimum,
                  -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum }

          variant :matrix_with_allocation,
                  -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation }

          variant :grouped_tiered, -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered }

          class Unit < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit::Cadence]
            required :cadence, enum: -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::Unit::Cadence }

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
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit::UnitConfig]
            required :unit_config, -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::Unit::UnitConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Unit::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Unit::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Unit::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, unit_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :unit)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_config [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit::UnitConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :unit]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit#unit_config
            class UnitConfig < Orb::Internal::Type::BaseModel
              # @!attribute unit_amount
              #   Rate per unit of usage
              #
              #   @return [String]
              required :unit_amount, String

              # @!method initialize(unit_amount:)
              #   @param unit_amount [String] Rate per unit of usage
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::Unit::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Package < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Package::Cadence
                     }

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
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::PackageConfig]
            required :package_config,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Package::PackageConfig
                     }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Package::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Package::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Package::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, package_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param package_config [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::PackageConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package#package_config
            class PackageConfig < Orb::Internal::Type::BaseModel
              # @!attribute package_amount
              #   A currency amount to rate usage by
              #
              #   @return [String]
              required :package_amount, String

              # @!attribute package_size
              #   An integer amount to represent package size. For example, 1000 here would divide
              #   usage by 1000 before multiplying by package_amount in rating
              #
              #   @return [Integer]
              required :package_size, Integer

              # @!method initialize(package_amount:, package_size:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::PackageConfig}
              #   for more details.
              #
              #   @param package_amount [String] A currency amount to rate usage by
              #
              #   @param package_size [Integer] An integer amount to represent package size. For example, 1000 here would divide
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::Package::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::Package::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Matrix < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::Cadence]
            required :cadence, enum: -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::Cadence }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_config
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::MatrixConfig]
            required :matrix_config,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::MatrixConfig
                     }

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, matrix_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :matrix)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_config [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::MatrixConfig]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :matrix]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix#matrix_config
            class MatrixConfig < Orb::Internal::Type::BaseModel
              # @!attribute default_unit_amount
              #   Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @return [String]
              required :default_unit_amount, String

              # @!attribute dimensions
              #   One or two event property values to evaluate matrix groups by
              #
              #   @return [Array<String, nil>]
              required :dimensions, Orb::Internal::Type::ArrayOf[String, nil?: true]

              # @!attribute matrix_values
              #   Matrix values for specified matrix grouping keys
              #
              #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::MatrixConfig::MatrixValue>]
              required :matrix_values,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::MatrixConfig::MatrixValue]
                       }

              # @!method initialize(default_unit_amount:, dimensions:, matrix_values:)
              #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
              #
              #   @param matrix_values [Array<Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::MatrixConfig::MatrixValue>] Matrix values for specified matrix grouping keys

              class MatrixValue < Orb::Internal::Type::BaseModel
                # @!attribute dimension_values
                #   One or two matrix keys to filter usage to this Matrix value by. For example,
                #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                #   instance tier.
                #
                #   @return [Array<String, nil>]
                required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

                # @!attribute unit_amount
                #   Unit price for the specified dimension_values
                #
                #   @return [String]
                required :unit_amount, String

                # @!method initialize(dimension_values:, unit_amount:)
                #   Some parameter documentations has been truncated, see
                #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::MatrixConfig::MatrixValue}
                #   for more details.
                #
                #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
                #
                #   @param unit_amount [String] Unit price for the specified dimension_values
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Tiered < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::Cadence]
            required :cadence, enum: -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::Cadence }

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
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::TieredConfig]
            required :tiered_config,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::TieredConfig
                     }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_config [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::TieredConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered#tiered_config
            class TieredConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for rating based on total usage quantities into the specified tier
              #
              #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::TieredConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::TieredConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::TieredConfig::Tier>] Tiers for rating based on total usage quantities into the specified tier

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute first_unit
                #   Exclusive tier starting value
                #
                #   @return [Float]
                required :first_unit, Float

                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute last_unit
                #   Inclusive tier ending value. If null, this is treated as the last tier
                #
                #   @return [Float, nil]
                optional :last_unit, Float, nil?: true

                # @!method initialize(first_unit:, unit_amount:, last_unit: nil)
                #   @param first_unit [Float] Exclusive tier starting value
                #
                #   @param unit_amount [String] Amount per unit
                #
                #   @param last_unit [Float, nil] Inclusive tier ending value. If null, this is treated as the last tier
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredBps < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::Cadence
                     }

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
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::TieredBpsConfig]
            required :tiered_bps_config,
                     -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::TieredBpsConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_bps_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_bps_config [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::TieredBpsConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_bps]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps#tiered_bps_config
            class TieredBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              #   tiers
              #
              #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::TieredBpsConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::TieredBpsConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::TieredBpsConfig}
              #   for more details.
              #
              #   @param tiers [Array<Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::TieredBpsConfig::Tier>] Tiers for a Graduated BPS pricing model, where usage is bucketed into specified

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute bps
                #   Per-event basis point rate
                #
                #   @return [Float]
                required :bps, Float

                # @!attribute minimum_amount
                #   Exclusive tier starting value
                #
                #   @return [String]
                required :minimum_amount, String

                # @!attribute maximum_amount
                #   Inclusive tier ending value
                #
                #   @return [String, nil]
                optional :maximum_amount, String, nil?: true

                # @!attribute per_unit_maximum
                #   Per unit maximum to charge
                #
                #   @return [String, nil]
                optional :per_unit_maximum, String, nil?: true

                # @!method initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
                #   @param bps [Float] Per-event basis point rate
                #
                #   @param minimum_amount [String] Exclusive tier starting value
                #
                #   @param maximum_amount [String, nil] Inclusive tier ending value
                #
                #   @param per_unit_maximum [String, nil] Per unit maximum to charge
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Bps < Orb::Internal::Type::BaseModel
            # @!attribute bps_config
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps::BpsConfig]
            required :bps_config, -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::Bps::BpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps::Cadence]
            required :cadence, enum: -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::Bps::Cadence }

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::Bps::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Bps::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Bps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bps_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps} for more
            #   details.
            #
            #   @param bps_config [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps::BpsConfig]
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :bps]

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps#bps_config
            class BpsConfig < Orb::Internal::Type::BaseModel
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

              # @!method initialize(bps:, per_unit_maximum: nil)
              #   @param bps [Float] Basis point take rate per event
              #
              #   @param per_unit_maximum [String, nil] Optional currency amount maximum to cap spend per event
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::Bps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class BulkBps < Orb::Internal::Type::BaseModel
            # @!attribute bulk_bps_config
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::BulkBpsConfig]
            required :bulk_bps_config,
                     -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::BulkBpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::Cadence
                     }

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bulk_bps_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bulk_bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps} for more
            #   details.
            #
            #   @param bulk_bps_config [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::BulkBpsConfig]
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :bulk_bps]

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps#bulk_bps_config
            class BulkBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              #   tier based on total volume
              #
              #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::BulkBpsConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::BulkBpsConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::BulkBpsConfig}
              #   for more details.
              #
              #   @param tiers [Array<Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::BulkBpsConfig::Tier>] Tiers for a bulk BPS pricing model where all usage is aggregated to a single tie

              class Tier < Orb::Internal::Type::BaseModel
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

                # @!method initialize(bps:, maximum_amount: nil, per_unit_maximum: nil)
                #   @param bps [Float] Basis points to rate on
                #
                #   @param maximum_amount [String, nil] Upper bound for tier
                #
                #   @param per_unit_maximum [String, nil] The maximum amount to charge for any one event
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Bulk < Orb::Internal::Type::BaseModel
            # @!attribute bulk_config
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::BulkConfig]
            required :bulk_config, -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::BulkConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::Cadence]
            required :cadence, enum: -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::Cadence }

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bulk_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bulk)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk} for more
            #   details.
            #
            #   @param bulk_config [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::BulkConfig]
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :bulk]

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk#bulk_config
            class BulkConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Bulk tiers for rating based on total usage volume
              #
              #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::BulkConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::BulkConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::BulkConfig::Tier>] Bulk tiers for rating based on total usage volume

              class Tier < Orb::Internal::Type::BaseModel
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

                # @!method initialize(unit_amount:, maximum_units: nil)
                #   @param unit_amount [String] Amount per unit
                #
                #   @param maximum_units [Float, nil] Upper bound for this tier
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class ThresholdTotalAmount < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::Cadence
                     }

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
            required :threshold_total_amount_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, threshold_total_amount_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :threshold_total_amount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param threshold_total_amount_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :threshold_total_amount]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredPackage < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::Cadence
                     }

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
            required :tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_package_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredWithMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::Cadence
                     }

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
            required :tiered_with_minimum_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_with_minimum_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_with_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_with_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_with_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class UnitWithPercent < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::Cadence]
            required :cadence,
                     enum: -> { Orb::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::Cadence }

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
            required :unit_with_percent_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, unit_with_percent_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :unit_with_percent)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_with_percent_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :unit_with_percent]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class PackageWithAllocation < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::Cadence
                     }

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
            required :package_with_allocation_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, package_with_allocation_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :package_with_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param package_with_allocation_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :package_with_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredWithProration < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::Cadence
                     }

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
            required :tiered_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class UnitWithProration < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::Cadence
                     }

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
            required :unit_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, unit_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :unit_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :unit_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedAllocation < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::Cadence
                     }

            # @!attribute grouped_allocation_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_allocation_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, grouped_allocation_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_allocation_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedWithProratedMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::Cadence
                     }

            # @!attribute grouped_with_prorated_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_prorated_minimum_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, grouped_with_prorated_minimum_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_with_prorated_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_with_prorated_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedWithMeteredMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::Cadence
                     }

            # @!attribute grouped_with_metered_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_metered_minimum_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, grouped_with_metered_minimum_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_with_metered_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_with_metered_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class MatrixWithDisplayName < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_with_display_name_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :matrix_with_display_name_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, matrix_with_display_name_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :matrix_with_display_name)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_with_display_name_config [Hash{Symbol=>Object}]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :matrix_with_display_name]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class BulkWithProration < Orb::Internal::Type::BaseModel
            # @!attribute bulk_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :bulk_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::Cadence
                     }

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bulk_with_proration_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bulk_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration}
            #   for more details.
            #
            #   @param bulk_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :bulk_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedTieredPackage < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::Cadence
                     }

            # @!attribute grouped_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, grouped_tiered_package_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class MaxGroupTieredPackage < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute max_group_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :max_group_tiered_package_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, max_group_tiered_package_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :max_group_tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param max_group_tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :max_group_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class ScalableMatrixWithUnitPricing < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::Cadence
                     }

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
            required :scalable_matrix_with_unit_pricing_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, scalable_matrix_with_unit_pricing_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :scalable_matrix_with_unit_pricing)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :scalable_matrix_with_unit_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class ScalableMatrixWithTieredPricing < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::Cadence
                     }

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
            required :scalable_matrix_with_tiered_pricing_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, scalable_matrix_with_tiered_pricing_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :scalable_matrix_with_tiered_pricing)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class CumulativeGroupedBulk < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::Cadence
                     }

            # @!attribute cumulative_grouped_bulk_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :cumulative_grouped_bulk_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, cumulative_grouped_bulk_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :cumulative_grouped_bulk)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::Cadence] The cadence to bill for this price on.
            #
            #   @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :cumulative_grouped_bulk]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredPackageWithMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::Cadence
                     }

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
            required :tiered_package_with_minimum_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_package_with_minimum_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_package_with_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_package_with_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_package_with_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class MatrixWithAllocation < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_with_allocation_config
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::MatrixWithAllocationConfig]
            required :matrix_with_allocation_config,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::MatrixWithAllocationConfig
                     }

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, matrix_with_allocation_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :matrix_with_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_with_allocation_config [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::MatrixWithAllocationConfig]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :matrix_with_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation#matrix_with_allocation_config
            class MatrixWithAllocationConfig < Orb::Internal::Type::BaseModel
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
              required :dimensions, Orb::Internal::Type::ArrayOf[String, nil?: true]

              # @!attribute matrix_values
              #   Matrix values for specified matrix grouping keys
              #
              #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue>]
              required :matrix_values,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue
                         ]
                       end

              # @!method initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:)
              #   @param allocation [Float] Allocation to be used to calculate the price
              #
              #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
              #
              #   @param matrix_values [Array<Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue>] Matrix values for specified matrix grouping keys

              class MatrixValue < Orb::Internal::Type::BaseModel
                # @!attribute dimension_values
                #   One or two matrix keys to filter usage to this Matrix value by. For example,
                #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                #   instance tier.
                #
                #   @return [Array<String, nil>]
                required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

                # @!attribute unit_amount
                #   Unit price for the specified dimension_values
                #
                #   @return [String]
                required :unit_amount, String

                # @!method initialize(dimension_values:, unit_amount:)
                #   Some parameter documentations has been truncated, see
                #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue}
                #   for more details.
                #
                #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
                #
                #   @param unit_amount [String] Unit price for the specified dimension_values
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedTiered < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::Cadence
                     }

            # @!attribute grouped_tiered_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_tiered_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, grouped_tiered_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_tiered)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_tiered_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_tiered]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Unit, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Package, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Matrix, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Tiered, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredBps, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bps, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkBps, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::Bulk, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ThresholdTotalAmount, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackage, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithMinimum, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithPercent, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::PackageWithAllocation, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredWithProration, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::UnitWithProration, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedAllocation, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithProratedMinimum, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMeteredMinimum, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithDisplayName, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::BulkWithProration, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTieredPackage, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MaxGroupTieredPackage, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithUnitPricing, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::ScalableMatrixWithTieredPricing, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::CumulativeGroupedBulk, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::TieredPackageWithMinimum, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::MatrixWithAllocation, Orb::Models::BetaCreatePlanVersionParams::AddPrice::Price::GroupedTiered)]
        end
      end

      class RemoveAdjustment < Orb::Internal::Type::BaseModel
        # @!attribute adjustment_id
        #   The id of the adjustment to remove from on the plan.
        #
        #   @return [String]
        required :adjustment_id, String

        # @!attribute plan_phase_order
        #   The phase to remove this adjustment from.
        #
        #   @return [Integer, nil]
        optional :plan_phase_order, Integer, nil?: true

        # @!method initialize(adjustment_id:, plan_phase_order: nil)
        #   @param adjustment_id [String] The id of the adjustment to remove from on the plan.
        #
        #   @param plan_phase_order [Integer, nil] The phase to remove this adjustment from.
      end

      class RemovePrice < Orb::Internal::Type::BaseModel
        # @!attribute price_id
        #   The id of the price to remove from the plan.
        #
        #   @return [String]
        required :price_id, String

        # @!attribute plan_phase_order
        #   The phase to remove this price from.
        #
        #   @return [Integer, nil]
        optional :plan_phase_order, Integer, nil?: true

        # @!method initialize(price_id:, plan_phase_order: nil)
        #   @param price_id [String] The id of the price to remove from the plan.
        #
        #   @param plan_phase_order [Integer, nil] The phase to remove this price from.
      end

      class ReplaceAdjustment < Orb::Internal::Type::BaseModel
        # @!attribute adjustment
        #   The definition of a new adjustment to create and add to the plan.
        #
        #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::PercentageDiscount, Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::UsageDiscount, Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::AmountDiscount, Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::Minimum, Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::Maximum]
        required :adjustment, union: -> { Orb::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment }

        # @!attribute replaces_adjustment_id
        #   The id of the adjustment on the plan to replace in the plan.
        #
        #   @return [String]
        required :replaces_adjustment_id, String

        # @!attribute plan_phase_order
        #   The phase to replace this adjustment from.
        #
        #   @return [Integer, nil]
        optional :plan_phase_order, Integer, nil?: true

        # @!method initialize(adjustment:, replaces_adjustment_id:, plan_phase_order: nil)
        #   @param adjustment [Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::PercentageDiscount, Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::UsageDiscount, Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::AmountDiscount, Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::Minimum, Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::Maximum] The definition of a new adjustment to create and add to the plan.
        #
        #   @param replaces_adjustment_id [String] The id of the adjustment on the plan to replace in the plan.
        #
        #   @param plan_phase_order [Integer, nil] The phase to replace this adjustment from.

        # The definition of a new adjustment to create and add to the plan.
        #
        # @see Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment#adjustment
        module Adjustment
          extend Orb::Internal::Type::Union

          discriminator :adjustment_type

          variant :percentage_discount,
                  -> { Orb::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::PercentageDiscount }

          variant :usage_discount,
                  -> { Orb::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::UsageDiscount }

          variant :amount_discount,
                  -> { Orb::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::AmountDiscount }

          variant :minimum, -> { Orb::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::Minimum }

          variant :maximum, -> { Orb::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::Maximum }

          class PercentageDiscount < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :percentage_discount]
            required :adjustment_type, const: :percentage_discount

            # @!attribute percentage_discount
            #
            #   @return [Float]
            required :percentage_discount, Float

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(percentage_discount:, applies_to_price_ids: nil, is_invoice_level: nil, adjustment_type: :percentage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::PercentageDiscount}
            #   for more details.
            #
            #   @param percentage_discount [Float]
            #
            #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :percentage_discount]
          end

          class UsageDiscount < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :usage_discount]
            required :adjustment_type, const: :usage_discount

            # @!attribute usage_discount
            #
            #   @return [Float]
            required :usage_discount, Float

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(usage_discount:, applies_to_price_ids: nil, is_invoice_level: nil, adjustment_type: :usage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::UsageDiscount}
            #   for more details.
            #
            #   @param usage_discount [Float]
            #
            #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :usage_discount]
          end

          class AmountDiscount < Orb::Internal::Type::BaseModel
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
            #   @return [Array<String>, nil]
            optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(amount_discount:, applies_to_price_ids: nil, is_invoice_level: nil, adjustment_type: :amount_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::AmountDiscount}
            #   for more details.
            #
            #   @param amount_discount [String]
            #
            #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :amount_discount]
          end

          class Minimum < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :minimum]
            required :adjustment_type, const: :minimum

            # @!attribute item_id
            #   The item ID that revenue from this minimum will be attributed to.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute minimum_amount
            #
            #   @return [String]
            required :minimum_amount, String

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(item_id:, minimum_amount:, applies_to_price_ids: nil, is_invoice_level: nil, adjustment_type: :minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::Minimum}
            #   for more details.
            #
            #   @param item_id [String] The item ID that revenue from this minimum will be attributed to.
            #
            #   @param minimum_amount [String]
            #
            #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :minimum]
          end

          class Maximum < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :maximum]
            required :adjustment_type, const: :maximum

            # @!attribute maximum_amount
            #
            #   @return [String]
            required :maximum_amount, String

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!method initialize(maximum_amount:, applies_to_price_ids: nil, is_invoice_level: nil, adjustment_type: :maximum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::Maximum}
            #   for more details.
            #
            #   @param maximum_amount [String]
            #
            #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param adjustment_type [Symbol, :maximum]
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::PercentageDiscount, Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::UsageDiscount, Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::AmountDiscount, Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::Minimum, Orb::Models::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::Maximum)]
        end
      end

      class ReplacePrice < Orb::Internal::Type::BaseModel
        # @!attribute replaces_price_id
        #   The id of the price on the plan to replace in the plan.
        #
        #   @return [String]
        required :replaces_price_id, String

        # @!attribute allocation_price
        #   The allocation price to add to the plan.
        #
        #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::AllocationPrice, nil]
        optional :allocation_price,
                 -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::AllocationPrice },
                 nil?: true

        # @!attribute plan_phase_order
        #   The phase to replace this price from.
        #
        #   @return [Integer, nil]
        optional :plan_phase_order, Integer, nil?: true

        # @!attribute price
        #   The price to add to the plan
        #
        #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered, nil]
        optional :price, union: -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price }, nil?: true

        # @!method initialize(replaces_price_id:, allocation_price: nil, plan_phase_order: nil, price: nil)
        #   @param replaces_price_id [String] The id of the price on the plan to replace in the plan.
        #
        #   @param allocation_price [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::AllocationPrice, nil] The allocation price to add to the plan.
        #
        #   @param plan_phase_order [Integer, nil] The phase to replace this price from.
        #
        #   @param price [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered, nil] The price to add to the plan

        # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice#allocation_price
        class AllocationPrice < Orb::Internal::Type::BaseModel
          # @!attribute amount
          #   An amount of the currency to allocate to the customer at the specified cadence.
          #
          #   @return [String]
          required :amount, String

          # @!attribute cadence
          #   The cadence at which to allocate the amount to the customer.
          #
          #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::AllocationPrice::Cadence]
          required :cadence,
                   enum: -> {
                     Orb::BetaCreatePlanVersionParams::ReplacePrice::AllocationPrice::Cadence
                   }

          # @!attribute currency
          #   An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #   this price.
          #
          #   @return [String]
          required :currency, String

          # @!attribute custom_expiration
          #   The custom expiration for the allocation.
          #
          #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::AllocationPrice::CustomExpiration, nil]
          optional :custom_expiration,
                   -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::AllocationPrice::CustomExpiration },
                   nil?: true

          # @!attribute expires_at_end_of_cadence
          #   Whether the allocated amount should expire at the end of the cadence or roll
          #   over to the next period. Set to null if using custom_expiration.
          #
          #   @return [Boolean, nil]
          optional :expires_at_end_of_cadence, Orb::Internal::Type::Boolean, nil?: true

          # @!method initialize(amount:, cadence:, currency:, custom_expiration: nil, expires_at_end_of_cadence: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::AllocationPrice} for
          #   more details.
          #
          #   The allocation price to add to the plan.
          #
          #   @param amount [String] An amount of the currency to allocate to the customer at the specified cadence.
          #
          #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::AllocationPrice::Cadence] The cadence at which to allocate the amount to the customer.
          #
          #   @param currency [String] An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #
          #   @param custom_expiration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::AllocationPrice::CustomExpiration, nil] The custom expiration for the allocation.
          #
          #   @param expires_at_end_of_cadence [Boolean, nil] Whether the allocated amount should expire at the end of the cadence or roll ove

          # The cadence at which to allocate the amount to the customer.
          #
          # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::AllocationPrice#cadence
          module Cadence
            extend Orb::Internal::Type::Enum

            ONE_TIME = :one_time
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            SEMI_ANNUAL = :semi_annual
            ANNUAL = :annual
            CUSTOM = :custom

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::AllocationPrice#custom_expiration
          class CustomExpiration < Orb::Internal::Type::BaseModel
            # @!attribute duration
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::AllocationPrice::CustomExpiration::DurationUnit]
            required :duration_unit,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::AllocationPrice::CustomExpiration::DurationUnit
                     }

            # @!method initialize(duration:, duration_unit:)
            #   The custom expiration for the allocation.
            #
            #   @param duration [Integer]
            #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::AllocationPrice::CustomExpiration::DurationUnit]

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::AllocationPrice::CustomExpiration#duration_unit
            module DurationUnit
              extend Orb::Internal::Type::Enum

              DAY = :day
              MONTH = :month

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        # The price to add to the plan
        #
        # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice#price
        module Price
          extend Orb::Internal::Type::Union

          discriminator :model_type

          variant :unit, -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit }

          variant :package, -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Package }

          variant :matrix, -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix }

          variant :tiered, -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered }

          variant :tiered_bps, -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps }

          variant :bps, -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps }

          variant :bulk_bps, -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps }

          variant :bulk, -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk }

          variant :threshold_total_amount,
                  -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount }

          variant :tiered_package, -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage }

          variant :tiered_with_minimum,
                  -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum }

          variant :unit_with_percent,
                  -> {
                    Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent
                  }

          variant :package_with_allocation,
                  -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation }

          variant :tiered_with_proration,
                  -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration }

          variant :unit_with_proration,
                  -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration }

          variant :grouped_allocation,
                  -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation }

          variant :grouped_with_prorated_minimum,
                  -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum }

          variant :grouped_with_metered_minimum,
                  -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum }

          variant :matrix_with_display_name,
                  -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName }

          variant :bulk_with_proration,
                  -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration }

          variant :grouped_tiered_package,
                  -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage }

          variant :max_group_tiered_package,
                  -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage }

          variant :scalable_matrix_with_unit_pricing,
                  -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing }

          variant :scalable_matrix_with_tiered_pricing,
                  -> {
                    Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing
                  }

          variant :cumulative_grouped_bulk,
                  -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk }

          variant :tiered_package_with_minimum,
                  -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum }

          variant :matrix_with_allocation,
                  -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation }

          variant :grouped_tiered, -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered }

          class Unit < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::Cadence
                     }

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
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::UnitConfig]
            required :unit_config,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::UnitConfig
                     }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, unit_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :unit)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_config [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::UnitConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :unit]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit#unit_config
            class UnitConfig < Orb::Internal::Type::BaseModel
              # @!attribute unit_amount
              #   Rate per unit of usage
              #
              #   @return [String]
              required :unit_amount, String

              # @!method initialize(unit_amount:)
              #   @param unit_amount [String] Rate per unit of usage
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Package < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::Cadence
                     }

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
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::PackageConfig]
            required :package_config,
                     -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::PackageConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, package_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param package_config [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::PackageConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package#package_config
            class PackageConfig < Orb::Internal::Type::BaseModel
              # @!attribute package_amount
              #   A currency amount to rate usage by
              #
              #   @return [String]
              required :package_amount, String

              # @!attribute package_size
              #   An integer amount to represent package size. For example, 1000 here would divide
              #   usage by 1000 before multiplying by package_amount in rating
              #
              #   @return [Integer]
              required :package_size, Integer

              # @!method initialize(package_amount:, package_size:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::PackageConfig}
              #   for more details.
              #
              #   @param package_amount [String] A currency amount to rate usage by
              #
              #   @param package_size [Integer] An integer amount to represent package size. For example, 1000 here would divide
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Matrix < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_config
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::MatrixConfig]
            required :matrix_config,
                     -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::MatrixConfig }

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, matrix_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :matrix)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_config [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::MatrixConfig]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :matrix]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix#matrix_config
            class MatrixConfig < Orb::Internal::Type::BaseModel
              # @!attribute default_unit_amount
              #   Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @return [String]
              required :default_unit_amount, String

              # @!attribute dimensions
              #   One or two event property values to evaluate matrix groups by
              #
              #   @return [Array<String, nil>]
              required :dimensions, Orb::Internal::Type::ArrayOf[String, nil?: true]

              # @!attribute matrix_values
              #   Matrix values for specified matrix grouping keys
              #
              #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::MatrixConfig::MatrixValue>]
              required :matrix_values,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::MatrixConfig::MatrixValue]
                       }

              # @!method initialize(default_unit_amount:, dimensions:, matrix_values:)
              #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
              #
              #   @param matrix_values [Array<Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::MatrixConfig::MatrixValue>] Matrix values for specified matrix grouping keys

              class MatrixValue < Orb::Internal::Type::BaseModel
                # @!attribute dimension_values
                #   One or two matrix keys to filter usage to this Matrix value by. For example,
                #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                #   instance tier.
                #
                #   @return [Array<String, nil>]
                required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

                # @!attribute unit_amount
                #   Unit price for the specified dimension_values
                #
                #   @return [String]
                required :unit_amount, String

                # @!method initialize(dimension_values:, unit_amount:)
                #   Some parameter documentations has been truncated, see
                #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::MatrixConfig::MatrixValue}
                #   for more details.
                #
                #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
                #
                #   @param unit_amount [String] Unit price for the specified dimension_values
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Tiered < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::Cadence
                     }

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
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::TieredConfig]
            required :tiered_config,
                     -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::TieredConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_config [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::TieredConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered#tiered_config
            class TieredConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for rating based on total usage quantities into the specified tier
              #
              #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::TieredConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::TieredConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::TieredConfig::Tier>] Tiers for rating based on total usage quantities into the specified tier

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute first_unit
                #   Exclusive tier starting value
                #
                #   @return [Float]
                required :first_unit, Float

                # @!attribute unit_amount
                #   Amount per unit
                #
                #   @return [String]
                required :unit_amount, String

                # @!attribute last_unit
                #   Inclusive tier ending value. If null, this is treated as the last tier
                #
                #   @return [Float, nil]
                optional :last_unit, Float, nil?: true

                # @!method initialize(first_unit:, unit_amount:, last_unit: nil)
                #   @param first_unit [Float] Exclusive tier starting value
                #
                #   @param unit_amount [String] Amount per unit
                #
                #   @param last_unit [Float, nil] Inclusive tier ending value. If null, this is treated as the last tier
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredBps < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::Cadence
                     }

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
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::TieredBpsConfig]
            required :tiered_bps_config,
                     -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::TieredBpsConfig }

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_bps_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_bps_config [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::TieredBpsConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_bps]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps#tiered_bps_config
            class TieredBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              #   tiers
              #
              #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::TieredBpsConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::TieredBpsConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::TieredBpsConfig}
              #   for more details.
              #
              #   @param tiers [Array<Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::TieredBpsConfig::Tier>] Tiers for a Graduated BPS pricing model, where usage is bucketed into specified

              class Tier < Orb::Internal::Type::BaseModel
                # @!attribute bps
                #   Per-event basis point rate
                #
                #   @return [Float]
                required :bps, Float

                # @!attribute minimum_amount
                #   Exclusive tier starting value
                #
                #   @return [String]
                required :minimum_amount, String

                # @!attribute maximum_amount
                #   Inclusive tier ending value
                #
                #   @return [String, nil]
                optional :maximum_amount, String, nil?: true

                # @!attribute per_unit_maximum
                #   Per unit maximum to charge
                #
                #   @return [String, nil]
                optional :per_unit_maximum, String, nil?: true

                # @!method initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
                #   @param bps [Float] Per-event basis point rate
                #
                #   @param minimum_amount [String] Exclusive tier starting value
                #
                #   @param maximum_amount [String, nil] Inclusive tier ending value
                #
                #   @param per_unit_maximum [String, nil] Per unit maximum to charge
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Bps < Orb::Internal::Type::BaseModel
            # @!attribute bps_config
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::BpsConfig]
            required :bps_config, -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::BpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::Cadence
                     }

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bps_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps} for more
            #   details.
            #
            #   @param bps_config [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::BpsConfig]
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :bps]

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps#bps_config
            class BpsConfig < Orb::Internal::Type::BaseModel
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

              # @!method initialize(bps:, per_unit_maximum: nil)
              #   @param bps [Float] Basis point take rate per event
              #
              #   @param per_unit_maximum [String, nil] Optional currency amount maximum to cap spend per event
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class BulkBps < Orb::Internal::Type::BaseModel
            # @!attribute bulk_bps_config
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::BulkBpsConfig]
            required :bulk_bps_config,
                     -> { Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::BulkBpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::Cadence
                     }

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bulk_bps_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bulk_bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps} for
            #   more details.
            #
            #   @param bulk_bps_config [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::BulkBpsConfig]
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :bulk_bps]

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps#bulk_bps_config
            class BulkBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              #   tier based on total volume
              #
              #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::BulkBpsConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::BulkBpsConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::BulkBpsConfig}
              #   for more details.
              #
              #   @param tiers [Array<Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::BulkBpsConfig::Tier>] Tiers for a bulk BPS pricing model where all usage is aggregated to a single tie

              class Tier < Orb::Internal::Type::BaseModel
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

                # @!method initialize(bps:, maximum_amount: nil, per_unit_maximum: nil)
                #   @param bps [Float] Basis points to rate on
                #
                #   @param maximum_amount [String, nil] Upper bound for tier
                #
                #   @param per_unit_maximum [String, nil] The maximum amount to charge for any one event
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class Bulk < Orb::Internal::Type::BaseModel
            # @!attribute bulk_config
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::BulkConfig]
            required :bulk_config,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::BulkConfig
                     }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::Cadence
                     }

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bulk_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bulk)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk} for more
            #   details.
            #
            #   @param bulk_config [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::BulkConfig]
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :bulk]

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk#bulk_config
            class BulkConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Bulk tiers for rating based on total usage volume
              #
              #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::BulkConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::BulkConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::BulkConfig::Tier>] Bulk tiers for rating based on total usage volume

              class Tier < Orb::Internal::Type::BaseModel
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

                # @!method initialize(unit_amount:, maximum_units: nil)
                #   @param unit_amount [String] Amount per unit
                #
                #   @param maximum_units [Float, nil] Upper bound for this tier
              end
            end

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class ThresholdTotalAmount < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::Cadence
                     }

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
            required :threshold_total_amount_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, threshold_total_amount_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :threshold_total_amount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param threshold_total_amount_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :threshold_total_amount]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredPackage < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::Cadence
                     }

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
            required :tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_package_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredWithMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::Cadence
                     }

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
            required :tiered_with_minimum_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_with_minimum_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_with_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_with_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_with_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class UnitWithPercent < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::Cadence
                     }

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
            required :unit_with_percent_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, unit_with_percent_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :unit_with_percent)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_with_percent_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :unit_with_percent]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class PackageWithAllocation < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::Cadence
                     }

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
            required :package_with_allocation_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, package_with_allocation_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :package_with_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param package_with_allocation_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :package_with_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredWithProration < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::Cadence
                     }

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
            required :tiered_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class UnitWithProration < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::Cadence
                     }

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
            required :unit_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, unit_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :unit_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :unit_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedAllocation < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::Cadence
                     }

            # @!attribute grouped_allocation_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_allocation_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, grouped_allocation_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_allocation_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedWithProratedMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::Cadence
                     }

            # @!attribute grouped_with_prorated_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_prorated_minimum_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, grouped_with_prorated_minimum_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_with_prorated_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_with_prorated_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedWithMeteredMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::Cadence
                     }

            # @!attribute grouped_with_metered_minimum_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_with_metered_minimum_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, grouped_with_metered_minimum_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_with_metered_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_with_metered_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class MatrixWithDisplayName < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_with_display_name_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :matrix_with_display_name_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, matrix_with_display_name_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :matrix_with_display_name)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_with_display_name_config [Hash{Symbol=>Object}]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :matrix_with_display_name]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class BulkWithProration < Orb::Internal::Type::BaseModel
            # @!attribute bulk_with_proration_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :bulk_with_proration_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::Cadence
                     }

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bulk_with_proration_config:, cadence:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bulk_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration}
            #   for more details.
            #
            #   @param bulk_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :bulk_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedTieredPackage < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::Cadence
                     }

            # @!attribute grouped_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_tiered_package_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, grouped_tiered_package_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class MaxGroupTieredPackage < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute max_group_tiered_package_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :max_group_tiered_package_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, max_group_tiered_package_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :max_group_tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param max_group_tiered_package_config [Hash{Symbol=>Object}]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :max_group_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class ScalableMatrixWithUnitPricing < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::Cadence
                     }

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
            required :scalable_matrix_with_unit_pricing_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, scalable_matrix_with_unit_pricing_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :scalable_matrix_with_unit_pricing)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :scalable_matrix_with_unit_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class ScalableMatrixWithTieredPricing < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::Cadence
                     }

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
            required :scalable_matrix_with_tiered_pricing_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, scalable_matrix_with_tiered_pricing_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :scalable_matrix_with_tiered_pricing)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class CumulativeGroupedBulk < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::Cadence
                     }

            # @!attribute cumulative_grouped_bulk_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :cumulative_grouped_bulk_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, cumulative_grouped_bulk_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :cumulative_grouped_bulk)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::Cadence] The cadence to bill for this price on.
            #
            #   @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :cumulative_grouped_bulk]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class TieredPackageWithMinimum < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::Cadence
                     }

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
            required :tiered_package_with_minimum_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

            # @!attribute billable_metric_id
            #   The id of the billable metric for the price. Only needed if the price is
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, name:, tiered_package_with_minimum_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_package_with_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_package_with_minimum_config [Hash{Symbol=>Object}]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_package_with_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class MatrixWithAllocation < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::Cadence
                     }

            # @!attribute item_id
            #   The id of the item the price will be associated with.
            #
            #   @return [String]
            required :item_id, String

            # @!attribute matrix_with_allocation_config
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::MatrixWithAllocationConfig]
            required :matrix_with_allocation_config,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::MatrixWithAllocationConfig
                     }

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, item_id:, matrix_with_allocation_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :matrix_with_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_with_allocation_config [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::MatrixWithAllocationConfig]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :matrix_with_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation#matrix_with_allocation_config
            class MatrixWithAllocationConfig < Orb::Internal::Type::BaseModel
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
              required :dimensions, Orb::Internal::Type::ArrayOf[String, nil?: true]

              # @!attribute matrix_values
              #   Matrix values for specified matrix grouping keys
              #
              #   @return [Array<Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue>]
              required :matrix_values,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue
                         ]
                       end

              # @!method initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:)
              #   @param allocation [Float] Allocation to be used to calculate the price
              #
              #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
              #
              #   @param matrix_values [Array<Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue>] Matrix values for specified matrix grouping keys

              class MatrixValue < Orb::Internal::Type::BaseModel
                # @!attribute dimension_values
                #   One or two matrix keys to filter usage to this Matrix value by. For example,
                #   ["region", "tier"] could be used to filter cloud usage by a cloud region and an
                #   instance tier.
                #
                #   @return [Array<String, nil>]
                required :dimension_values, Orb::Internal::Type::ArrayOf[String, nil?: true]

                # @!attribute unit_amount
                #   Unit price for the specified dimension_values
                #
                #   @return [String]
                required :unit_amount, String

                # @!method initialize(dimension_values:, unit_amount:)
                #   Some parameter documentations has been truncated, see
                #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue}
                #   for more details.
                #
                #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
                #
                #   @param unit_amount [String] Unit price for the specified dimension_values
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          class GroupedTiered < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::Cadence
                     }

            # @!attribute grouped_tiered_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :grouped_tiered_config, Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   usage-based.
            #
            #   @return [String, nil]
            optional :billable_metric_id, String, nil?: true

            # @!attribute billed_in_advance
            #   If the Price represents a fixed cost, the price will be billed in-advance if
            #   this is true, and in-arrears if this is false.
            #
            #   @return [Boolean, nil]
            optional :billed_in_advance, Orb::Internal::Type::Boolean, nil?: true

            # @!attribute billing_cycle_configuration
            #   For custom cadence: specifies the duration of the billing period in days or
            #   months.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute currency
            #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
            #   price is billed.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::DimensionalPriceConfiguration
                     },
                     nil?: true

            # @!attribute external_price_id
            #   An alias for the price.
            #
            #   @return [String, nil]
            optional :external_price_id, String, nil?: true

            # @!attribute fixed_price_quantity
            #   If the Price represents a fixed cost, this represents the quantity of units
            #   applied.
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
            #   If unspecified, a single invoice is produced per billing cycle.
            #
            #   @return [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, grouped_tiered_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, currency: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_tiered)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::Cadence] The cadence to bill for this price on.
            #
            #   @param grouped_tiered_config [Hash{Symbol=>Object}]
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param currency [String, nil] An ISO 4217 currency string, or custom pricing unit identifier, in which this pr
            #
            #   @param dimensional_price_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_tiered]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered#cadence
            module Cadence
              extend Orb::Internal::Type::Enum

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered#dimensional_price_configuration
            class DimensionalPriceConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute dimension_values
              #   The list of dimension values matching (in order) the dimensions of the price
              #   group
              #
              #   @return [Array<String>]
              required :dimension_values, Orb::Internal::Type::ArrayOf[String]

              # @!attribute dimensional_price_group_id
              #   The id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :dimensional_price_group_id, String, nil?: true

              # @!attribute external_dimensional_price_group_id
              #   The external id of the dimensional price group to include this price in
              #
              #   @return [String, nil]
              optional :external_dimensional_price_group_id, String, nil?: true

              # @!method initialize(dimension_values:, dimensional_price_group_id: nil, external_dimensional_price_group_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::DimensionalPriceConfiguration}
              #   for more details.
              #
              #   For dimensional price: specifies a price group and dimension values
              #
              #   @param dimension_values [Array<String>] The list of dimension values matching (in order) the dimensions of the price gro
              #
              #   @param dimensional_price_group_id [String, nil] The id of the dimensional price group to include this price in
              #
              #   @param external_dimensional_price_group_id [String, nil] The external id of the dimensional price group to include this price in
            end

            # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered::InvoicingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Unit, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Package, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Matrix, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Tiered, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredBps, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bps, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkBps, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::Bulk, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ThresholdTotalAmount, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackage, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithMinimum, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithPercent, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::PackageWithAllocation, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::UnitWithProration, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedAllocation, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithProratedMinimum, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMeteredMinimum, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithDisplayName, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::BulkWithProration, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTieredPackage, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MaxGroupTieredPackage, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithUnitPricing, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::ScalableMatrixWithTieredPricing, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::CumulativeGroupedBulk, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::TieredPackageWithMinimum, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::MatrixWithAllocation, Orb::Models::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedTiered)]
        end
      end
    end
  end
end
