# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Subscriptions#price_intervals
    class SubscriptionPriceIntervalsParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      # @!attribute add
      #   A list of price intervals to add to the subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add>, nil]
      optional :add, -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::Add] }

      # @!attribute add_adjustments
      #   A list of adjustments to add to the subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment>, nil]
      optional :add_adjustments,
               -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::AddAdjustment] }

      # @!attribute allow_invoice_credit_or_void
      #   If false, this request will fail if it would void an issued invoice or create a
      #   credit note. Consider using this as a safety mechanism if you do not expect
      #   existing invoices to be changed.
      #
      #   @return [Boolean, nil]
      optional :allow_invoice_credit_or_void, Orb::Internal::Type::Boolean, nil?: true

      # @!attribute edit
      #   A list of price intervals to edit on the subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Edit>, nil]
      optional :edit, -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::Edit] }

      # @!attribute edit_adjustments
      #   A list of adjustments to edit on the subscription.
      #
      #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment>, nil]
      optional :edit_adjustments,
               -> { Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::EditAdjustment] }

      # @!method initialize(add: nil, add_adjustments: nil, allow_invoice_credit_or_void: nil, edit: nil, edit_adjustments: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::SubscriptionPriceIntervalsParams} for more details.
      #
      #   @param add [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add>] A list of price intervals to add to the subscription.
      #
      #   @param add_adjustments [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment>] A list of adjustments to add to the subscription.
      #
      #   @param allow_invoice_credit_or_void [Boolean, nil] If false, this request will fail if it would void an issued invoice or create a
      #
      #   @param edit [Array<Orb::Models::SubscriptionPriceIntervalsParams::Edit>] A list of price intervals to edit on the subscription.
      #
      #   @param edit_adjustments [Array<Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment>] A list of adjustments to edit on the subscription.
      #
      #   @param request_options [Orb::RequestOptions, Hash{Symbol=>Object}]

      class Add < Orb::Internal::Type::BaseModel
        # @!attribute start_date
        #   The start date of the price interval. This is the date that the price will start
        #   billing on the subscription.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate]
        required :start_date, union: -> { Orb::SubscriptionPriceIntervalsParams::Add::StartDate }

        # @!attribute allocation_price
        #   The definition of a new allocation price to create and add to the subscription.
        #
        #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice, nil]
        optional :allocation_price,
                 -> {
                   Orb::SubscriptionPriceIntervalsParams::Add::AllocationPrice
                 },
                 nil?: true

        # @!attribute discounts
        #   A list of discounts to initialize on the price interval.
        #
        #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Amount, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Percentage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Usage>, nil]
        optional :discounts,
                 -> {
                   Orb::Internal::Type::ArrayOf[union: Orb::SubscriptionPriceIntervalsParams::Add::Discount]
                 },
                 nil?: true

        # @!attribute end_date
        #   The end date of the price interval. This is the date that the price will stop
        #   billing on the subscription.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :end_date, union: -> { Orb::SubscriptionPriceIntervalsParams::Add::EndDate }, nil?: true

        # @!attribute external_price_id
        #   The external price id of the price to add to the subscription.
        #
        #   @return [String, nil]
        optional :external_price_id, String, nil?: true

        # @!attribute filter
        #   An additional filter to apply to usage queries. This filter must be expressed as
        #   a boolean
        #   [computed property](/extensibility/advanced-metrics#computed-properties). If
        #   null, usage queries will not include any additional filter.
        #
        #   @return [String, nil]
        optional :filter, String, nil?: true

        # @!attribute fixed_fee_quantity_transitions
        #   A list of fixed fee quantity transitions to initialize on the price interval.
        #
        #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition>, nil]
        optional :fixed_fee_quantity_transitions,
                 -> {
                   Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition]
                 },
                 nil?: true

        # @!attribute maximum_amount
        #   The maximum amount that will be billed for this price interval for a given
        #   billing period.
        #
        #   @return [Float, nil]
        optional :maximum_amount, Float, nil?: true

        # @!attribute minimum_amount
        #   The minimum amount that will be billed for this price interval for a given
        #   billing period.
        #
        #   @return [Float, nil]
        optional :minimum_amount, Float, nil?: true

        # @!attribute price
        #   The definition of a new price to create and add to the subscription.
        #
        #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk, nil]
        optional :price, union: -> { Orb::SubscriptionPriceIntervalsParams::Add::Price }, nil?: true

        # @!attribute price_id
        #   The id of the price to add to the subscription.
        #
        #   @return [String, nil]
        optional :price_id, String, nil?: true

        # @!attribute usage_customer_ids
        #   A list of customer IDs whose usage events will be aggregated and billed under
        #   this subscription. By default, a subscription only considers usage events
        #   associated with its attached customer's customer_id. When usage_customer_ids is
        #   provided, the subscription includes usage events from the specified customers
        #   only. Provided usage_customer_ids must be either the customer for this
        #   subscription itself, or any of that customer's children.
        #
        #   @return [Array<String>, nil]
        optional :usage_customer_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

        # @!method initialize(start_date:, allocation_price: nil, discounts: nil, end_date: nil, external_price_id: nil, filter: nil, fixed_fee_quantity_transitions: nil, maximum_amount: nil, minimum_amount: nil, price: nil, price_id: nil, usage_customer_ids: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionPriceIntervalsParams::Add} for more details.
        #
        #   @param start_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate] The start date of the price interval. This is the date that the price will start
        #
        #   @param allocation_price [Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice, nil] The definition of a new allocation price to create and add to the subscription.
        #
        #   @param discounts [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Amount, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Percentage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Usage>, nil] A list of discounts to initialize on the price interval.
        #
        #   @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil] The end date of the price interval. This is the date that the price will stop bi
        #
        #   @param external_price_id [String, nil] The external price id of the price to add to the subscription.
        #
        #   @param filter [String, nil] An additional filter to apply to usage queries. This filter must be expressed as
        #
        #   @param fixed_fee_quantity_transitions [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::FixedFeeQuantityTransition>, nil] A list of fixed fee quantity transitions to initialize on the price interval.
        #
        #   @param maximum_amount [Float, nil] The maximum amount that will be billed for this price interval for a given billi
        #
        #   @param minimum_amount [Float, nil] The minimum amount that will be billed for this price interval for a given billi
        #
        #   @param price [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk, nil] The definition of a new price to create and add to the subscription.
        #
        #   @param price_id [String, nil] The id of the price to add to the subscription.
        #
        #   @param usage_customer_ids [Array<String>, nil] A list of customer IDs whose usage events will be aggregated and billed under th

        # The start date of the price interval. This is the date that the price will start
        # billing on the subscription.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::Add#start_date
        module StartDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end

        # @see Orb::Models::SubscriptionPriceIntervalsParams::Add#allocation_price
        class AllocationPrice < Orb::Internal::Type::BaseModel
          # @!attribute amount
          #   An amount of the currency to allocate to the customer at the specified cadence.
          #
          #   @return [String]
          required :amount, String

          # @!attribute cadence
          #   The cadence at which to allocate the amount to the customer.
          #
          #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence]
          required :cadence, enum: -> { Orb::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence }

          # @!attribute currency
          #   An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #   this price.
          #
          #   @return [String]
          required :currency, String

          # @!attribute custom_expiration
          #   The custom expiration for the allocation.
          #
          #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::CustomExpiration, nil]
          optional :custom_expiration,
                   -> { Orb::SubscriptionPriceIntervalsParams::Add::AllocationPrice::CustomExpiration },
                   nil?: true

          # @!attribute expires_at_end_of_cadence
          #   Whether the allocated amount should expire at the end of the cadence or roll
          #   over to the next period. Set to null if using custom_expiration.
          #
          #   @return [Boolean, nil]
          optional :expires_at_end_of_cadence, Orb::Internal::Type::Boolean, nil?: true

          # @!method initialize(amount:, cadence:, currency:, custom_expiration: nil, expires_at_end_of_cadence: nil)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice} for more
          #   details.
          #
          #   The definition of a new allocation price to create and add to the subscription.
          #
          #   @param amount [String] An amount of the currency to allocate to the customer at the specified cadence.
          #
          #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::Cadence] The cadence at which to allocate the amount to the customer.
          #
          #   @param currency [String] An ISO 4217 currency string or a custom pricing unit identifier in which to bill
          #
          #   @param custom_expiration [Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::CustomExpiration, nil] The custom expiration for the allocation.
          #
          #   @param expires_at_end_of_cadence [Boolean, nil] Whether the allocated amount should expire at the end of the cadence or roll ove

          # The cadence at which to allocate the amount to the customer.
          #
          # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice#cadence
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

          # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice#custom_expiration
          class CustomExpiration < Orb::Internal::Type::BaseModel
            # @!attribute duration
            #
            #   @return [Integer]
            required :duration, Integer

            # @!attribute duration_unit
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::CustomExpiration::DurationUnit]
            required :duration_unit,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::AllocationPrice::CustomExpiration::DurationUnit
                     }

            # @!method initialize(duration:, duration_unit:)
            #   The custom expiration for the allocation.
            #
            #   @param duration [Integer]
            #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::CustomExpiration::DurationUnit]

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::AllocationPrice::CustomExpiration#duration_unit
            module DurationUnit
              extend Orb::Internal::Type::Enum

              DAY = :day
              MONTH = :month

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end

        module Discount
          extend Orb::Internal::Type::Union

          discriminator :discount_type

          variant :amount, -> { Orb::SubscriptionPriceIntervalsParams::Add::Discount::Amount }

          variant :percentage, -> { Orb::SubscriptionPriceIntervalsParams::Add::Discount::Percentage }

          variant :usage, -> { Orb::SubscriptionPriceIntervalsParams::Add::Discount::Usage }

          class Amount < Orb::Internal::Type::BaseModel
            # @!attribute amount_discount
            #   Only available if discount_type is `amount`.
            #
            #   @return [Float]
            required :amount_discount, Float

            # @!attribute discount_type
            #
            #   @return [Symbol, :amount]
            required :discount_type, const: :amount

            # @!method initialize(amount_discount:, discount_type: :amount)
            #   @param amount_discount [Float] Only available if discount_type is `amount`.
            #
            #   @param discount_type [Symbol, :amount]
          end

          class Percentage < Orb::Internal::Type::BaseModel
            # @!attribute discount_type
            #
            #   @return [Symbol, :percentage]
            required :discount_type, const: :percentage

            # @!attribute percentage_discount
            #   Only available if discount_type is `percentage`. This is a number between 0
            #   and 1.
            #
            #   @return [Float]
            required :percentage_discount, Float

            # @!method initialize(percentage_discount:, discount_type: :percentage)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Percentage} for
            #   more details.
            #
            #   @param percentage_discount [Float] Only available if discount_type is `percentage`. This is a number between 0 and
            #
            #   @param discount_type [Symbol, :percentage]
          end

          class Usage < Orb::Internal::Type::BaseModel
            # @!attribute discount_type
            #
            #   @return [Symbol, :usage]
            required :discount_type, const: :usage

            # @!attribute usage_discount
            #   Only available if discount_type is `usage`. Number of usage units that this
            #   discount is for.
            #
            #   @return [Float]
            required :usage_discount, Float

            # @!method initialize(usage_discount:, discount_type: :usage)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Usage} for more
            #   details.
            #
            #   @param usage_discount [Float] Only available if discount_type is `usage`. Number of usage units that this disc
            #
            #   @param discount_type [Symbol, :usage]
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Amount, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Percentage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Discount::Usage)]
        end

        # The end date of the price interval. This is the date that the price will stop
        # billing on the subscription.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::Add#end_date
        module EndDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end

        class FixedFeeQuantityTransition < Orb::Internal::Type::BaseModel
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

          # @!method initialize(effective_date:, quantity:)
          #   @param effective_date [Time] The date that the fixed fee quantity transition should take effect.
          #
          #   @param quantity [Integer] The quantity of the fixed fee quantity transition.
        end

        # The definition of a new price to create and add to the subscription.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::Add#price
        module Price
          extend Orb::Internal::Type::Union

          discriminator :model_type

          variant :unit, -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Unit }

          variant :package, -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Package }

          variant :matrix, -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Matrix }

          variant :matrix_with_allocation,
                  -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation }

          variant :tiered, -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Tiered }

          variant :tiered_bps, -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredBps }

          variant :bps, -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Bps }

          variant :bulk_bps, -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkBps }

          variant :bulk, -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Bulk }

          variant :threshold_total_amount,
                  -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount }

          variant :tiered_package, -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage }

          variant :grouped_tiered, -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered }

          variant :max_group_tiered_package,
                  -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage }

          variant :tiered_with_minimum,
                  -> {
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum
                  }

          variant :package_with_allocation,
                  -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation }

          variant :tiered_package_with_minimum,
                  -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum }

          variant :unit_with_percent,
                  -> {
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent
                  }

          variant :tiered_with_proration,
                  -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration }

          variant :unit_with_proration,
                  -> {
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration
                  }

          variant :grouped_allocation,
                  -> {
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation
                  }

          variant :grouped_with_prorated_minimum,
                  -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum }

          variant :grouped_with_metered_minimum,
                  -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum }

          variant :matrix_with_display_name,
                  -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName }

          variant :bulk_with_proration,
                  -> {
                    Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration
                  }

          variant :grouped_tiered_package,
                  -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage }

          variant :scalable_matrix_with_unit_pricing,
                  -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing }

          variant :scalable_matrix_with_tiered_pricing,
                  -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing }

          variant :cumulative_grouped_bulk,
                  -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk }

          class Unit < Orb::Internal::Type::BaseModel
            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::Cadence]
            required :cadence, enum: -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Unit::Cadence }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::UnitConfig]
            required :unit_config, -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Unit::UnitConfig }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Unit::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, unit_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :unit)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param unit_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::UnitConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :unit]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit#unit_config
            class UnitConfig < Orb::Internal::Type::BaseModel
              # @!attribute unit_amount
              #   Rate per unit of usage
              #
              #   @return [String]
              required :unit_amount, String

              # @!method initialize(unit_amount:)
              #   @param unit_amount [String] Rate per unit of usage
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Package::Cadence
                     }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::PackageConfig]
            required :package_config,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Package::PackageConfig
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Package::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, package_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param package_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::PackageConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package#package_config
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::PackageConfig}
              #   for more details.
              #
              #   @param package_amount [String] A currency amount to rate usage by
              #
              #   @param package_size [Integer] An integer amount to represent package size. For example, 1000 here would divide
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::Cadence]
            required :cadence, enum: -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Matrix::Cadence }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::MatrixConfig]
            required :matrix_config,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Matrix::MatrixConfig
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Matrix::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, matrix_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :matrix)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::MatrixConfig]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :matrix]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix#matrix_config
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
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::MatrixConfig::MatrixValue>]
              required :matrix_values,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::Add::Price::Matrix::MatrixConfig::MatrixValue]
                       }

              # @!method initialize(default_unit_amount:, dimensions:, matrix_values:)
              #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
              #
              #   @param matrix_values [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::MatrixConfig::MatrixValue>] Matrix values for specified matrix grouping keys

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
                #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::MatrixConfig::MatrixValue}
                #   for more details.
                #
                #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
                #
                #   @param unit_amount [String] Unit price for the specified dimension_values
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::Cadence
                     }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::MatrixWithAllocationConfig]
            required :matrix_with_allocation_config,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::MatrixWithAllocationConfig
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, matrix_with_allocation_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :matrix_with_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param matrix_with_allocation_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::MatrixWithAllocationConfig]
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :matrix_with_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation#matrix_with_allocation_config
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
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue>]
              required :matrix_values,
                       -> do
                         Orb::Internal::Type::ArrayOf[
                           Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue
                         ]
                       end

              # @!method initialize(allocation:, default_unit_amount:, dimensions:, matrix_values:)
              #   @param allocation [Float] Allocation to be used to calculate the price
              #
              #   @param default_unit_amount [String] Default per unit rate for any usage not bucketed into a specified matrix_value
              #
              #   @param dimensions [Array<String, nil>] One or two event property values to evaluate matrix groups by
              #
              #   @param matrix_values [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue>] Matrix values for specified matrix grouping keys

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
                #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::MatrixWithAllocationConfig::MatrixValue}
                #   for more details.
                #
                #   @param dimension_values [Array<String, nil>] One or two matrix keys to filter usage to this Matrix value by. For example, ["r
                #
                #   @param unit_amount [String] Unit price for the specified dimension_values
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::Cadence]
            required :cadence, enum: -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Tiered::Cadence }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::TieredConfig]
            required :tiered_config,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Tiered::TieredConfig
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Tiered::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::TieredConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered#tiered_config
            class TieredConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for rating based on total usage quantities into the specified tier
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::TieredConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::Add::Price::Tiered::TieredConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::TieredConfig::Tier>] Tiers for rating based on total usage quantities into the specified tier

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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::Cadence
                     }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::TieredBpsConfig]
            required :tiered_bps_config,
                     -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::TieredBpsConfig }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_bps_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps} for more
            #   details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param tiered_bps_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::TieredBpsConfig]
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_bps]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps#tiered_bps_config
            class TieredBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a Graduated BPS pricing model, where usage is bucketed into specified
              #   tiers
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::TieredBpsConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::TieredBpsConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::TieredBpsConfig}
              #   for more details.
              #
              #   @param tiers [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::TieredBpsConfig::Tier>] Tiers for a Graduated BPS pricing model, where usage is bucketed into specified

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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BpsConfig]
            required :bps_config, -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Bps::BpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::Cadence]
            required :cadence, enum: -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Bps::Cadence }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Bps::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bps_config:, cadence:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps} for more
            #   details.
            #
            #   @param bps_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BpsConfig]
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :bps]

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps#bps_config
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
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BulkBpsConfig]
            required :bulk_bps_config,
                     -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BulkBpsConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::Cadence
                     }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bulk_bps_config:, cadence:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bulk_bps)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps} for more
            #   details.
            #
            #   @param bulk_bps_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BulkBpsConfig]
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :bulk_bps]

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps#bulk_bps_config
            class BulkBpsConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Tiers for a bulk BPS pricing model where all usage is aggregated to a single
              #   tier based on total volume
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BulkBpsConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BulkBpsConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BulkBpsConfig}
              #   for more details.
              #
              #   @param tiers [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BulkBpsConfig::Tier>] Tiers for a bulk BPS pricing model where all usage is aggregated to a single tie

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
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BulkConfig]
            required :bulk_config, -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BulkConfig }

            # @!attribute cadence
            #   The cadence to bill for this price on.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::Cadence]
            required :cadence, enum: -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::Bulk::Cadence }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Bulk::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bulk_config:, cadence:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bulk)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk} for more
            #   details.
            #
            #   @param bulk_config [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BulkConfig]
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :bulk]

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk#bulk_config
            class BulkConfig < Orb::Internal::Type::BaseModel
              # @!attribute tiers
              #   Bulk tiers for rating based on total usage volume
              #
              #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BulkConfig::Tier>]
              required :tiers,
                       -> {
                         Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BulkConfig::Tier]
                       }

              # @!method initialize(tiers:)
              #   @param tiers [Array<Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BulkConfig::Tier>] Bulk tiers for rating based on total usage volume

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
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::Cadence
                     }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, threshold_total_amount_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :threshold_total_amount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :threshold_total_amount]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::Cadence
                     }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_package_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::Cadence
                     }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, grouped_tiered_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_tiered)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_tiered]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::Cadence
                     }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, max_group_tiered_package_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :max_group_tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :max_group_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::Cadence
                     }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_with_minimum_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_with_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_with_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::Cadence
                     }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, package_with_allocation_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :package_with_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :package_with_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::Cadence
                     }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_package_with_minimum_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_package_with_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_package_with_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::Cadence]
            required :cadence,
                     enum: -> { Orb::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::Cadence }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, unit_with_percent_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :unit_with_percent)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent} for
            #   more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :unit_with_percent]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::Cadence
                     }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, tiered_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :tiered_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :tiered_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::Cadence
                     }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, unit_with_proration_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :unit_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :unit_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::Cadence
                     }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, grouped_allocation_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_allocation)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_allocation]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::Cadence
                     }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, grouped_with_prorated_minimum_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_with_prorated_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_with_prorated_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::Cadence
                     }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, grouped_with_metered_minimum_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_with_metered_minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_with_metered_minimum]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::Cadence
                     }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, matrix_with_display_name_config:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :matrix_with_display_name)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :matrix_with_display_name]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::Cadence
                     }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(bulk_with_proration_config:, cadence:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :bulk_with_proration)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration}
            #   for more details.
            #
            #   @param bulk_with_proration_config [Hash{Symbol=>Object}]
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :bulk_with_proration]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::Cadence
                     }

            # @!attribute currency
            #   An ISO 4217 currency string for which this price is billed in.
            #
            #   @return [String]
            required :currency, String

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, grouped_tiered_package_config:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :grouped_tiered_package)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :grouped_tiered_package]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::Cadence
                     }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, scalable_matrix_with_unit_pricing_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :scalable_matrix_with_unit_pricing)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :scalable_matrix_with_unit_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::Cadence
                     }

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, currency:, item_id:, name:, scalable_matrix_with_tiered_pricing_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :scalable_matrix_with_tiered_pricing)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::Cadence] The cadence to bill for this price on.
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
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
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing::InvoicingCycleConfiguration#duration_unit
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
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::Cadence]
            required :cadence,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::Cadence
                     }

            # @!attribute cumulative_grouped_bulk_config
            #
            #   @return [Hash{Symbol=>Object}]
            required :cumulative_grouped_bulk_config,
                     Orb::Internal::Type::HashOf[Orb::Internal::Type::Unknown]

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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration, nil]
            optional :billing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration
                     },
                     nil?: true

            # @!attribute conversion_rate
            #   The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @return [Float, nil]
            optional :conversion_rate, Float, nil?: true

            # @!attribute dimensional_price_configuration
            #   For dimensional price: specifies a price group and dimension values
            #
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration, nil]
            optional :dimensional_price_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration
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
            #   @return [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, nil]
            optional :invoicing_cycle_configuration,
                     -> {
                       Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration
                     },
                     nil?: true

            # @!attribute metadata
            #   User-specified key/value pairs for the resource. Individual keys can be removed
            #   by setting the value to `null`, and the entire metadata mapping can be cleared
            #   by setting `metadata` to `null`.
            #
            #   @return [Hash{Symbol=>String, nil}, nil]
            optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

            # @!method initialize(cadence:, cumulative_grouped_bulk_config:, currency:, item_id:, name:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, metadata: nil, model_type: :cumulative_grouped_bulk)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk}
            #   for more details.
            #
            #   @param cadence [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::Cadence] The cadence to bill for this price on.
            #
            #   @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
            #
            #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
            #
            #   @param item_id [String] The id of the item the price will be associated with.
            #
            #   @param name [String] The name of the price.
            #
            #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
            #
            #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
            #
            #   @param billing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
            #
            #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
            #
            #   @param dimensional_price_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
            #
            #   @param external_price_id [String, nil] An alias for the price.
            #
            #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
            #
            #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
            #
            #   @param invoicing_cycle_configuration [Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
            #
            #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed
            #
            #   @param model_type [Symbol, :cumulative_grouped_bulk]

            # The cadence to bill for this price on.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk#cadence
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk#billing_cycle_configuration
            class BillingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   For custom cadence: specifies the duration of the billing period in days or
              #   months.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::BillingCycleConfiguration#duration_unit
              module DurationUnit
                extend Orb::Internal::Type::Enum

                DAY = :day
                MONTH = :month

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk#dimensional_price_configuration
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
              #   {Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::DimensionalPriceConfiguration}
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

            # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk#invoicing_cycle_configuration
            class InvoicingCycleConfiguration < Orb::Internal::Type::BaseModel
              # @!attribute duration
              #   The duration of the billing period.
              #
              #   @return [Integer]
              required :duration, Integer

              # @!attribute duration_unit
              #   The unit of billing period duration.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit]
              required :duration_unit,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit
                       }

              # @!method initialize(duration:, duration_unit:)
              #   Within each billing cycle, specifies the cadence at which invoices are produced.
              #   If unspecified, a single invoice is produced per billing cycle.
              #
              #   @param duration [Integer] The duration of the billing period.
              #
              #   @param duration_unit [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration::DurationUnit] The unit of billing period duration.

              # The unit of billing period duration.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk::InvoicingCycleConfiguration#duration_unit
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
          #   @return [Array(Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Unit, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Package, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Matrix, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithAllocation, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Tiered, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredBps, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bps, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkBps, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::Bulk, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ThresholdTotalAmount, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTiered, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MaxGroupTieredPackage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithMinimum, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::PackageWithAllocation, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredPackageWithMinimum, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithPercent, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::TieredWithProration, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::UnitWithProration, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedAllocation, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithProratedMinimum, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedWithMeteredMinimum, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::MatrixWithDisplayName, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::BulkWithProration, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::GroupedTieredPackage, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithUnitPricing, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::ScalableMatrixWithTieredPricing, Orb::Models::SubscriptionPriceIntervalsParams::Add::Price::CumulativeGroupedBulk)]
        end
      end

      class AddAdjustment < Orb::Internal::Type::BaseModel
        # @!attribute adjustment
        #   The definition of a new adjustment to create and add to the subscription.
        #
        #   @return [Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum]
        required :adjustment, union: -> { Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment }

        # @!attribute start_date
        #   The start date of the adjustment interval. This is the date that the adjustment
        #   will start affecting prices on the subscription. The adjustment will apply to
        #   invoice dates that overlap with this `start_date`. This `start_date` is treated
        #   as inclusive for in-advance prices, and exclusive for in-arrears prices.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate]
        required :start_date, union: -> { Orb::SubscriptionPriceIntervalsParams::AddAdjustment::StartDate }

        # @!attribute end_date
        #   The end date of the adjustment interval. This is the date that the adjustment
        #   will stop affecting prices on the subscription. The adjustment will apply to
        #   invoice dates that overlap with this `end_date`.This `end_date` is treated as
        #   exclusive for in-advance prices, and inclusive for in-arrears prices.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :end_date,
                 union: -> { Orb::SubscriptionPriceIntervalsParams::AddAdjustment::EndDate },
                 nil?: true

        # @!method initialize(adjustment:, start_date:, end_date: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment} for more details.
        #
        #   @param adjustment [Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum] The definition of a new adjustment to create and add to the subscription.
        #
        #   @param start_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate] The start date of the adjustment interval. This is the date that the adjustment
        #
        #   @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil] The end date of the adjustment interval. This is the date that the adjustment wi

        # The definition of a new adjustment to create and add to the subscription.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment#adjustment
        module Adjustment
          extend Orb::Internal::Type::Union

          discriminator :adjustment_type

          variant :percentage_discount,
                  -> { Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount }

          variant :usage_discount,
                  -> { Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount }

          variant :amount_discount,
                  -> { Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount }

          variant :minimum, -> { Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum }

          variant :maximum, -> { Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum }

          class PercentageDiscount < Orb::Internal::Type::BaseModel
            # @!attribute adjustment_type
            #
            #   @return [Symbol, :percentage_discount]
            required :adjustment_type, const: :percentage_discount

            # @!attribute percentage_discount
            #
            #   @return [Float]
            required :percentage_discount, Float

            # @!attribute applies_to_all
            #   If set, the adjustment will apply to every price on the subscription.
            #
            #   @return [Boolean, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount::AppliesToAll, nil]
            optional :applies_to_all,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount::AppliesToAll
                     },
                     nil?: true

            # @!attribute applies_to_item_ids
            #   The set of item IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_item_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute currency
            #   If set, only prices in the specified currency will have the adjustment applied.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute filters
            #   A list of filters that determine which prices this adjustment will apply to.
            #
            #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount::Filter>, nil]
            optional :filters,
                     -> {
                       Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount::Filter]
                     },
                     nil?: true

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute price_type
            #   If set, only prices of the specified type will have the adjustment applied.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount::PriceType, nil]
            optional :price_type,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount::PriceType
                     },
                     nil?: true

            # @!method initialize(percentage_discount:, applies_to_all: nil, applies_to_item_ids: nil, applies_to_price_ids: nil, currency: nil, filters: nil, is_invoice_level: nil, price_type: nil, adjustment_type: :percentage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount}
            #   for more details.
            #
            #   @param percentage_discount [Float]
            #
            #   @param applies_to_all [Boolean, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount::AppliesToAll, nil] If set, the adjustment will apply to every price on the subscription.
            #
            #   @param applies_to_item_ids [Array<String>, nil] The set of item IDs to which this adjustment applies.
            #
            #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
            #
            #   @param currency [String, nil] If set, only prices in the specified currency will have the adjustment applied.
            #
            #   @param filters [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount::Filter>, nil] A list of filters that determine which prices this adjustment will apply to.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param price_type [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount::PriceType, nil] If set, only prices of the specified type will have the adjustment applied.
            #
            #   @param adjustment_type [Symbol, :percentage_discount]

            # If set, the adjustment will apply to every price on the subscription.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount#applies_to_all
            module AppliesToAll
              extend Orb::Internal::Type::Enum

              TRUE = true

              # @!method self.values
              #   @return [Array<Boolean>]
            end

            class Filter < Orb::Internal::Type::BaseModel
              # @!attribute field
              #   The property of the price to filter on.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount::Filter::Field]
              required :field,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount::Filter::Field
                       }

              # @!attribute operator
              #   Should prices that match the filter be included or excluded.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount::Filter::Operator]
              required :operator,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount::Filter::Operator
                       }

              # @!attribute values
              #   The IDs or values that match this filter.
              #
              #   @return [Array<String>]
              required :values, Orb::Internal::Type::ArrayOf[String]

              # @!method initialize(field:, operator:, values:)
              #   @param field [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount::Filter::Field] The property of the price to filter on.
              #
              #   @param operator [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount::Filter::Operator] Should prices that match the filter be included or excluded.
              #
              #   @param values [Array<String>] The IDs or values that match this filter.

              # The property of the price to filter on.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount::Filter#field
              module Field
                extend Orb::Internal::Type::Enum

                PRICE_ID = :price_id
                ITEM_ID = :item_id
                PRICE_TYPE = :price_type
                CURRENCY = :currency
                PRICING_UNIT_ID = :pricing_unit_id

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Should prices that match the filter be included or excluded.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount::Filter#operator
              module Operator
                extend Orb::Internal::Type::Enum

                INCLUDES = :includes
                EXCLUDES = :excludes

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # If set, only prices of the specified type will have the adjustment applied.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount#price_type
            module PriceType
              extend Orb::Internal::Type::Enum

              USAGE = :usage
              FIXED_IN_ADVANCE = :fixed_in_advance
              FIXED_IN_ARREARS = :fixed_in_arrears
              FIXED = :fixed
              IN_ARREARS = :in_arrears

              # @!method self.values
              #   @return [Array<Symbol>]
            end
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

            # @!attribute applies_to_all
            #   If set, the adjustment will apply to every price on the subscription.
            #
            #   @return [Boolean, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount::AppliesToAll, nil]
            optional :applies_to_all,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount::AppliesToAll
                     },
                     nil?: true

            # @!attribute applies_to_item_ids
            #   The set of item IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_item_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute currency
            #   If set, only prices in the specified currency will have the adjustment applied.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute filters
            #   A list of filters that determine which prices this adjustment will apply to.
            #
            #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount::Filter>, nil]
            optional :filters,
                     -> {
                       Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount::Filter]
                     },
                     nil?: true

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute price_type
            #   If set, only prices of the specified type will have the adjustment applied.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount::PriceType, nil]
            optional :price_type,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount::PriceType
                     },
                     nil?: true

            # @!method initialize(usage_discount:, applies_to_all: nil, applies_to_item_ids: nil, applies_to_price_ids: nil, currency: nil, filters: nil, is_invoice_level: nil, price_type: nil, adjustment_type: :usage_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount}
            #   for more details.
            #
            #   @param usage_discount [Float]
            #
            #   @param applies_to_all [Boolean, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount::AppliesToAll, nil] If set, the adjustment will apply to every price on the subscription.
            #
            #   @param applies_to_item_ids [Array<String>, nil] The set of item IDs to which this adjustment applies.
            #
            #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
            #
            #   @param currency [String, nil] If set, only prices in the specified currency will have the adjustment applied.
            #
            #   @param filters [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount::Filter>, nil] A list of filters that determine which prices this adjustment will apply to.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param price_type [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount::PriceType, nil] If set, only prices of the specified type will have the adjustment applied.
            #
            #   @param adjustment_type [Symbol, :usage_discount]

            # If set, the adjustment will apply to every price on the subscription.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount#applies_to_all
            module AppliesToAll
              extend Orb::Internal::Type::Enum

              TRUE = true

              # @!method self.values
              #   @return [Array<Boolean>]
            end

            class Filter < Orb::Internal::Type::BaseModel
              # @!attribute field
              #   The property of the price to filter on.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount::Filter::Field]
              required :field,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount::Filter::Field
                       }

              # @!attribute operator
              #   Should prices that match the filter be included or excluded.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount::Filter::Operator]
              required :operator,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount::Filter::Operator
                       }

              # @!attribute values
              #   The IDs or values that match this filter.
              #
              #   @return [Array<String>]
              required :values, Orb::Internal::Type::ArrayOf[String]

              # @!method initialize(field:, operator:, values:)
              #   @param field [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount::Filter::Field] The property of the price to filter on.
              #
              #   @param operator [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount::Filter::Operator] Should prices that match the filter be included or excluded.
              #
              #   @param values [Array<String>] The IDs or values that match this filter.

              # The property of the price to filter on.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount::Filter#field
              module Field
                extend Orb::Internal::Type::Enum

                PRICE_ID = :price_id
                ITEM_ID = :item_id
                PRICE_TYPE = :price_type
                CURRENCY = :currency
                PRICING_UNIT_ID = :pricing_unit_id

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Should prices that match the filter be included or excluded.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount::Filter#operator
              module Operator
                extend Orb::Internal::Type::Enum

                INCLUDES = :includes
                EXCLUDES = :excludes

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # If set, only prices of the specified type will have the adjustment applied.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount#price_type
            module PriceType
              extend Orb::Internal::Type::Enum

              USAGE = :usage
              FIXED_IN_ADVANCE = :fixed_in_advance
              FIXED_IN_ARREARS = :fixed_in_arrears
              FIXED = :fixed
              IN_ARREARS = :in_arrears

              # @!method self.values
              #   @return [Array<Symbol>]
            end
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

            # @!attribute applies_to_all
            #   If set, the adjustment will apply to every price on the subscription.
            #
            #   @return [Boolean, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount::AppliesToAll, nil]
            optional :applies_to_all,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount::AppliesToAll
                     },
                     nil?: true

            # @!attribute applies_to_item_ids
            #   The set of item IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_item_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute currency
            #   If set, only prices in the specified currency will have the adjustment applied.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute filters
            #   A list of filters that determine which prices this adjustment will apply to.
            #
            #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount::Filter>, nil]
            optional :filters,
                     -> {
                       Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount::Filter]
                     },
                     nil?: true

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute price_type
            #   If set, only prices of the specified type will have the adjustment applied.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount::PriceType, nil]
            optional :price_type,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount::PriceType
                     },
                     nil?: true

            # @!method initialize(amount_discount:, applies_to_all: nil, applies_to_item_ids: nil, applies_to_price_ids: nil, currency: nil, filters: nil, is_invoice_level: nil, price_type: nil, adjustment_type: :amount_discount)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount}
            #   for more details.
            #
            #   @param amount_discount [String]
            #
            #   @param applies_to_all [Boolean, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount::AppliesToAll, nil] If set, the adjustment will apply to every price on the subscription.
            #
            #   @param applies_to_item_ids [Array<String>, nil] The set of item IDs to which this adjustment applies.
            #
            #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
            #
            #   @param currency [String, nil] If set, only prices in the specified currency will have the adjustment applied.
            #
            #   @param filters [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount::Filter>, nil] A list of filters that determine which prices this adjustment will apply to.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param price_type [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount::PriceType, nil] If set, only prices of the specified type will have the adjustment applied.
            #
            #   @param adjustment_type [Symbol, :amount_discount]

            # If set, the adjustment will apply to every price on the subscription.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount#applies_to_all
            module AppliesToAll
              extend Orb::Internal::Type::Enum

              TRUE = true

              # @!method self.values
              #   @return [Array<Boolean>]
            end

            class Filter < Orb::Internal::Type::BaseModel
              # @!attribute field
              #   The property of the price to filter on.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount::Filter::Field]
              required :field,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount::Filter::Field
                       }

              # @!attribute operator
              #   Should prices that match the filter be included or excluded.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount::Filter::Operator]
              required :operator,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount::Filter::Operator
                       }

              # @!attribute values
              #   The IDs or values that match this filter.
              #
              #   @return [Array<String>]
              required :values, Orb::Internal::Type::ArrayOf[String]

              # @!method initialize(field:, operator:, values:)
              #   @param field [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount::Filter::Field] The property of the price to filter on.
              #
              #   @param operator [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount::Filter::Operator] Should prices that match the filter be included or excluded.
              #
              #   @param values [Array<String>] The IDs or values that match this filter.

              # The property of the price to filter on.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount::Filter#field
              module Field
                extend Orb::Internal::Type::Enum

                PRICE_ID = :price_id
                ITEM_ID = :item_id
                PRICE_TYPE = :price_type
                CURRENCY = :currency
                PRICING_UNIT_ID = :pricing_unit_id

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Should prices that match the filter be included or excluded.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount::Filter#operator
              module Operator
                extend Orb::Internal::Type::Enum

                INCLUDES = :includes
                EXCLUDES = :excludes

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # If set, only prices of the specified type will have the adjustment applied.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount#price_type
            module PriceType
              extend Orb::Internal::Type::Enum

              USAGE = :usage
              FIXED_IN_ADVANCE = :fixed_in_advance
              FIXED_IN_ARREARS = :fixed_in_arrears
              FIXED = :fixed
              IN_ARREARS = :in_arrears

              # @!method self.values
              #   @return [Array<Symbol>]
            end
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

            # @!attribute applies_to_all
            #   If set, the adjustment will apply to every price on the subscription.
            #
            #   @return [Boolean, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum::AppliesToAll, nil]
            optional :applies_to_all,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum::AppliesToAll
                     },
                     nil?: true

            # @!attribute applies_to_item_ids
            #   The set of item IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_item_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute currency
            #   If set, only prices in the specified currency will have the adjustment applied.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute filters
            #   A list of filters that determine which prices this adjustment will apply to.
            #
            #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum::Filter>, nil]
            optional :filters,
                     -> {
                       Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum::Filter]
                     },
                     nil?: true

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute price_type
            #   If set, only prices of the specified type will have the adjustment applied.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum::PriceType, nil]
            optional :price_type,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum::PriceType
                     },
                     nil?: true

            # @!method initialize(item_id:, minimum_amount:, applies_to_all: nil, applies_to_item_ids: nil, applies_to_price_ids: nil, currency: nil, filters: nil, is_invoice_level: nil, price_type: nil, adjustment_type: :minimum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum}
            #   for more details.
            #
            #   @param item_id [String] The item ID that revenue from this minimum will be attributed to.
            #
            #   @param minimum_amount [String]
            #
            #   @param applies_to_all [Boolean, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum::AppliesToAll, nil] If set, the adjustment will apply to every price on the subscription.
            #
            #   @param applies_to_item_ids [Array<String>, nil] The set of item IDs to which this adjustment applies.
            #
            #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
            #
            #   @param currency [String, nil] If set, only prices in the specified currency will have the adjustment applied.
            #
            #   @param filters [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum::Filter>, nil] A list of filters that determine which prices this adjustment will apply to.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param price_type [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum::PriceType, nil] If set, only prices of the specified type will have the adjustment applied.
            #
            #   @param adjustment_type [Symbol, :minimum]

            # If set, the adjustment will apply to every price on the subscription.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum#applies_to_all
            module AppliesToAll
              extend Orb::Internal::Type::Enum

              TRUE = true

              # @!method self.values
              #   @return [Array<Boolean>]
            end

            class Filter < Orb::Internal::Type::BaseModel
              # @!attribute field
              #   The property of the price to filter on.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum::Filter::Field]
              required :field,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum::Filter::Field
                       }

              # @!attribute operator
              #   Should prices that match the filter be included or excluded.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum::Filter::Operator]
              required :operator,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum::Filter::Operator
                       }

              # @!attribute values
              #   The IDs or values that match this filter.
              #
              #   @return [Array<String>]
              required :values, Orb::Internal::Type::ArrayOf[String]

              # @!method initialize(field:, operator:, values:)
              #   @param field [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum::Filter::Field] The property of the price to filter on.
              #
              #   @param operator [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum::Filter::Operator] Should prices that match the filter be included or excluded.
              #
              #   @param values [Array<String>] The IDs or values that match this filter.

              # The property of the price to filter on.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum::Filter#field
              module Field
                extend Orb::Internal::Type::Enum

                PRICE_ID = :price_id
                ITEM_ID = :item_id
                PRICE_TYPE = :price_type
                CURRENCY = :currency
                PRICING_UNIT_ID = :pricing_unit_id

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Should prices that match the filter be included or excluded.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum::Filter#operator
              module Operator
                extend Orb::Internal::Type::Enum

                INCLUDES = :includes
                EXCLUDES = :excludes

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # If set, only prices of the specified type will have the adjustment applied.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum#price_type
            module PriceType
              extend Orb::Internal::Type::Enum

              USAGE = :usage
              FIXED_IN_ADVANCE = :fixed_in_advance
              FIXED_IN_ARREARS = :fixed_in_arrears
              FIXED = :fixed
              IN_ARREARS = :in_arrears

              # @!method self.values
              #   @return [Array<Symbol>]
            end
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

            # @!attribute applies_to_all
            #   If set, the adjustment will apply to every price on the subscription.
            #
            #   @return [Boolean, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum::AppliesToAll, nil]
            optional :applies_to_all,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum::AppliesToAll
                     },
                     nil?: true

            # @!attribute applies_to_item_ids
            #   The set of item IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_item_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute applies_to_price_ids
            #   The set of price IDs to which this adjustment applies.
            #
            #   @return [Array<String>, nil]
            optional :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

            # @!attribute currency
            #   If set, only prices in the specified currency will have the adjustment applied.
            #
            #   @return [String, nil]
            optional :currency, String, nil?: true

            # @!attribute filters
            #   A list of filters that determine which prices this adjustment will apply to.
            #
            #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum::Filter>, nil]
            optional :filters,
                     -> {
                       Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum::Filter]
                     },
                     nil?: true

            # @!attribute is_invoice_level
            #   When false, this adjustment will be applied to a single price. Otherwise, it
            #   will be applied at the invoice level, possibly to multiple prices.
            #
            #   @return [Boolean, nil]
            optional :is_invoice_level, Orb::Internal::Type::Boolean

            # @!attribute price_type
            #   If set, only prices of the specified type will have the adjustment applied.
            #
            #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum::PriceType, nil]
            optional :price_type,
                     enum: -> {
                       Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum::PriceType
                     },
                     nil?: true

            # @!method initialize(maximum_amount:, applies_to_all: nil, applies_to_item_ids: nil, applies_to_price_ids: nil, currency: nil, filters: nil, is_invoice_level: nil, price_type: nil, adjustment_type: :maximum)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum}
            #   for more details.
            #
            #   @param maximum_amount [String]
            #
            #   @param applies_to_all [Boolean, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum::AppliesToAll, nil] If set, the adjustment will apply to every price on the subscription.
            #
            #   @param applies_to_item_ids [Array<String>, nil] The set of item IDs to which this adjustment applies.
            #
            #   @param applies_to_price_ids [Array<String>, nil] The set of price IDs to which this adjustment applies.
            #
            #   @param currency [String, nil] If set, only prices in the specified currency will have the adjustment applied.
            #
            #   @param filters [Array<Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum::Filter>, nil] A list of filters that determine which prices this adjustment will apply to.
            #
            #   @param is_invoice_level [Boolean] When false, this adjustment will be applied to a single price. Otherwise, it wil
            #
            #   @param price_type [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum::PriceType, nil] If set, only prices of the specified type will have the adjustment applied.
            #
            #   @param adjustment_type [Symbol, :maximum]

            # If set, the adjustment will apply to every price on the subscription.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum#applies_to_all
            module AppliesToAll
              extend Orb::Internal::Type::Enum

              TRUE = true

              # @!method self.values
              #   @return [Array<Boolean>]
            end

            class Filter < Orb::Internal::Type::BaseModel
              # @!attribute field
              #   The property of the price to filter on.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum::Filter::Field]
              required :field,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum::Filter::Field
                       }

              # @!attribute operator
              #   Should prices that match the filter be included or excluded.
              #
              #   @return [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum::Filter::Operator]
              required :operator,
                       enum: -> {
                         Orb::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum::Filter::Operator
                       }

              # @!attribute values
              #   The IDs or values that match this filter.
              #
              #   @return [Array<String>]
              required :values, Orb::Internal::Type::ArrayOf[String]

              # @!method initialize(field:, operator:, values:)
              #   @param field [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum::Filter::Field] The property of the price to filter on.
              #
              #   @param operator [Symbol, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum::Filter::Operator] Should prices that match the filter be included or excluded.
              #
              #   @param values [Array<String>] The IDs or values that match this filter.

              # The property of the price to filter on.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum::Filter#field
              module Field
                extend Orb::Internal::Type::Enum

                PRICE_ID = :price_id
                ITEM_ID = :item_id
                PRICE_TYPE = :price_type
                CURRENCY = :currency
                PRICING_UNIT_ID = :pricing_unit_id

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Should prices that match the filter be included or excluded.
              #
              # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum::Filter#operator
              module Operator
                extend Orb::Internal::Type::Enum

                INCLUDES = :includes
                EXCLUDES = :excludes

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # If set, only prices of the specified type will have the adjustment applied.
            #
            # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum#price_type
            module PriceType
              extend Orb::Internal::Type::Enum

              USAGE = :usage
              FIXED_IN_ADVANCE = :fixed_in_advance
              FIXED_IN_ARREARS = :fixed_in_arrears
              FIXED = :fixed
              IN_ARREARS = :in_arrears

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::PercentageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::UsageDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::AmountDiscount, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Minimum, Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment::Adjustment::Maximum)]
        end

        # The start date of the adjustment interval. This is the date that the adjustment
        # will start affecting prices on the subscription. The adjustment will apply to
        # invoice dates that overlap with this `start_date`. This `start_date` is treated
        # as inclusive for in-advance prices, and exclusive for in-arrears prices.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment#start_date
        module StartDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end

        # The end date of the adjustment interval. This is the date that the adjustment
        # will stop affecting prices on the subscription. The adjustment will apply to
        # invoice dates that overlap with this `end_date`.This `end_date` is treated as
        # exclusive for in-advance prices, and inclusive for in-arrears prices.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::AddAdjustment#end_date
        module EndDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end
      end

      class Edit < Orb::Internal::Type::BaseModel
        # @!attribute price_interval_id
        #   The id of the price interval to edit.
        #
        #   @return [String]
        required :price_interval_id, String

        # @!attribute billing_cycle_day
        #   The updated billing cycle day for this price interval. If not specified, the
        #   billing cycle day will not be updated. Note that overlapping price intervals
        #   must have the same billing cycle day.
        #
        #   @return [Integer, nil]
        optional :billing_cycle_day, Integer, nil?: true

        # @!attribute end_date
        #   The updated end date of this price interval. If not specified, the start date
        #   will not be updated.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :end_date, union: -> { Orb::SubscriptionPriceIntervalsParams::Edit::EndDate }, nil?: true

        # @!attribute filter
        #   An additional filter to apply to usage queries. This filter must be expressed as
        #   a boolean
        #   [computed property](/extensibility/advanced-metrics#computed-properties). If
        #   null, usage queries will not include any additional filter.
        #
        #   @return [String, nil]
        optional :filter, String, nil?: true

        # @!attribute fixed_fee_quantity_transitions
        #   A list of fixed fee quantity transitions to use for this price interval. Note
        #   that this list will overwrite all existing fixed fee quantity transitions on the
        #   price interval.
        #
        #   @return [Array<Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition>, nil]
        optional :fixed_fee_quantity_transitions,
                 -> {
                   Orb::Internal::Type::ArrayOf[Orb::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition]
                 },
                 nil?: true

        # @!attribute start_date
        #   The updated start date of this price interval. If not specified, the start date
        #   will not be updated.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :start_date, union: -> { Orb::SubscriptionPriceIntervalsParams::Edit::StartDate }

        # @!attribute usage_customer_ids
        #   A list of customer IDs whose usage events will be aggregated and billed under
        #   this subscription. By default, a subscription only considers usage events
        #   associated with its attached customer's customer_id. When usage_customer_ids is
        #   provided, the subscription includes usage events from the specified customers
        #   only. Provided usage_customer_ids must be either the customer for this
        #   subscription itself, or any of that customer's children.
        #
        #   @return [Array<String>, nil]
        optional :usage_customer_ids, Orb::Internal::Type::ArrayOf[String], nil?: true

        # @!method initialize(price_interval_id:, billing_cycle_day: nil, end_date: nil, filter: nil, fixed_fee_quantity_transitions: nil, start_date: nil, usage_customer_ids: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionPriceIntervalsParams::Edit} for more details.
        #
        #   @param price_interval_id [String] The id of the price interval to edit.
        #
        #   @param billing_cycle_day [Integer, nil] The updated billing cycle day for this price interval. If not specified, the bil
        #
        #   @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil] The updated end date of this price interval. If not specified, the start date wi
        #
        #   @param filter [String, nil] An additional filter to apply to usage queries. This filter must be expressed as
        #
        #   @param fixed_fee_quantity_transitions [Array<Orb::Models::SubscriptionPriceIntervalsParams::Edit::FixedFeeQuantityTransition>, nil] A list of fixed fee quantity transitions to use for this price interval. Note th
        #
        #   @param start_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate] The updated start date of this price interval. If not specified, the start date
        #
        #   @param usage_customer_ids [Array<String>, nil] A list of customer IDs whose usage events will be aggregated and billed under th

        # The updated end date of this price interval. If not specified, the start date
        # will not be updated.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::Edit#end_date
        module EndDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end

        class FixedFeeQuantityTransition < Orb::Internal::Type::BaseModel
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

          # @!method initialize(effective_date:, quantity:)
          #   @param effective_date [Time] The date that the fixed fee quantity transition should take effect.
          #
          #   @param quantity [Integer] The quantity of the fixed fee quantity transition.
        end

        # The updated start date of this price interval. If not specified, the start date
        # will not be updated.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::Edit#start_date
        module StartDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end
      end

      class EditAdjustment < Orb::Internal::Type::BaseModel
        # @!attribute adjustment_interval_id
        #   The id of the adjustment interval to edit.
        #
        #   @return [String]
        required :adjustment_interval_id, String

        # @!attribute end_date
        #   The updated end date of this adjustment interval. If not specified, the start
        #   date will not be updated.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :end_date,
                 union: -> { Orb::SubscriptionPriceIntervalsParams::EditAdjustment::EndDate },
                 nil?: true

        # @!attribute start_date
        #   The updated start date of this adjustment interval. If not specified, the start
        #   date will not be updated.
        #
        #   @return [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil]
        optional :start_date, union: -> { Orb::SubscriptionPriceIntervalsParams::EditAdjustment::StartDate }

        # @!method initialize(adjustment_interval_id:, end_date: nil, start_date: nil)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment} for more
        #   details.
        #
        #   @param adjustment_interval_id [String] The id of the adjustment interval to edit.
        #
        #   @param end_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate, nil] The updated end date of this adjustment interval. If not specified, the start da
        #
        #   @param start_date [Time, Symbol, Orb::Models::BillingCycleRelativeDate] The updated start date of this adjustment interval. If not specified, the start

        # The updated end date of this adjustment interval. If not specified, the start
        # date will not be updated.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment#end_date
        module EndDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end

        # The updated start date of this adjustment interval. If not specified, the start
        # date will not be updated.
        #
        # @see Orb::Models::SubscriptionPriceIntervalsParams::EditAdjustment#start_date
        module StartDate
          extend Orb::Internal::Type::Union

          variant Time

          variant enum: -> { Orb::BillingCycleRelativeDate }

          # @!method self.variants
          #   @return [Array(Time, Symbol, Orb::Models::BillingCycleRelativeDate)]
        end
      end
    end
  end
end
