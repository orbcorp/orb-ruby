# frozen_string_literal: true

module Orb
  module Models
    module Plans
      module ExternalPlanID
        # @see Orb::Resources::Plans::ExternalPlanID::Versions#create
        class VersionCreateResponse < Orb::Internal::Type::BaseModel
          # @!attribute adjustments
          #   Adjustments for this plan. If the plan has phases, this includes adjustments
          #   across all phases of the plan.
          #
          #   @return [Array<Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::UsageDiscount, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::AmountDiscount, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::PercentageDiscount, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Minimum, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Maximum>]
          required :adjustments,
                   -> { Orb::Internal::Type::ArrayOf[union: Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment] }

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute plan_phases
          #
          #   @return [Array<Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::PlanPhase>, nil]
          required :plan_phases,
                   -> { Orb::Internal::Type::ArrayOf[Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::PlanPhase] },
                   nil?: true

          # @!attribute prices
          #   Prices for this plan. If the plan has phases, this includes prices across all
          #   phases of the plan.
          #
          #   @return [Array<Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBps, Orb::Models::Price::Bps, Orb::Models::Price::BulkBps, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk>]
          required :prices, -> { Orb::Internal::Type::ArrayOf[union: Orb::Price] }

          # @!attribute version
          #
          #   @return [Integer]
          required :version, Integer

          # @!method initialize(adjustments:, created_at:, plan_phases:, prices:, version:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Plans::ExternalPlanID::VersionCreateResponse} for more details.
          #
          #   The PlanVersion resource represents the prices and adjustments present on a
          #   specific version of a plan.
          #
          #   @param adjustments [Array<Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::UsageDiscount, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::AmountDiscount, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::PercentageDiscount, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Minimum, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Maximum>] Adjustments for this plan. If the plan has phases, this includes adjustments acr
          #
          #   @param created_at [Time]
          #
          #   @param plan_phases [Array<Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::PlanPhase>, nil]
          #
          #   @param prices [Array<Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBps, Orb::Models::Price::Bps, Orb::Models::Price::BulkBps, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk>] Prices for this plan. If the plan has phases, this includes prices across all ph
          #
          #   @param version [Integer]

          module Adjustment
            extend Orb::Internal::Type::Union

            discriminator :adjustment_type

            variant :usage_discount,
                    -> { Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::UsageDiscount }

            variant :amount_discount,
                    -> { Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::AmountDiscount }

            variant :percentage_discount,
                    -> { Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::PercentageDiscount }

            variant :minimum, -> { Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Minimum }

            variant :maximum, -> { Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Maximum }

            class UsageDiscount < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute adjustment_type
              #
              #   @return [Symbol, :usage_discount]
              required :adjustment_type, const: :usage_discount

              # @!attribute applies_to_price_ids
              #   @deprecated
              #
              #   The price IDs that this adjustment applies to.
              #
              #   @return [Array<String>]
              required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

              # @!attribute filters
              #   The filters that determine which prices to apply this adjustment to.
              #
              #   @return [Array<Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::UsageDiscount::Filter>]
              required :filters,
                       -> { Orb::Internal::Type::ArrayOf[Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::UsageDiscount::Filter] }

              # @!attribute is_invoice_level
              #   True for adjustments that apply to an entire invocice, false for adjustments
              #   that apply to only one price.
              #
              #   @return [Boolean]
              required :is_invoice_level, Orb::Internal::Type::Boolean

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
              #   to in a given billing period.
              #
              #   @return [Float]
              required :usage_discount, Float

              # @!method initialize(id:, applies_to_price_ids:, filters:, is_invoice_level:, plan_phase_order:, reason:, usage_discount:, adjustment_type: :usage_discount)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::UsageDiscount}
              #   for more details.
              #
              #   @param id [String]
              #
              #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
              #
              #   @param filters [Array<Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::UsageDiscount::Filter>] The filters that determine which prices to apply this adjustment to.
              #
              #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
              #
              #   @param plan_phase_order [Integer, nil] The plan phase in which this adjustment is active.
              #
              #   @param reason [String, nil] The reason for the adjustment.
              #
              #   @param usage_discount [Float] The number of usage units by which to discount the price this adjustment applies
              #
              #   @param adjustment_type [Symbol, :usage_discount]

              class Filter < Orb::Internal::Type::BaseModel
                # @!attribute field
                #   The property of the price to filter on.
                #
                #   @return [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::UsageDiscount::Filter::Field]
                required :field,
                         enum: -> { Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::UsageDiscount::Filter::Field }

                # @!attribute operator
                #   Should prices that match the filter be included or excluded.
                #
                #   @return [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::UsageDiscount::Filter::Operator]
                required :operator,
                         enum: -> { Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::UsageDiscount::Filter::Operator }

                # @!attribute values
                #   The IDs or values that match this filter.
                #
                #   @return [Array<String>]
                required :values, Orb::Internal::Type::ArrayOf[String]

                # @!method initialize(field:, operator:, values:)
                #   @param field [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::UsageDiscount::Filter::Field] The property of the price to filter on.
                #
                #   @param operator [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::UsageDiscount::Filter::Operator] Should prices that match the filter be included or excluded.
                #
                #   @param values [Array<String>] The IDs or values that match this filter.

                # The property of the price to filter on.
                #
                # @see Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::UsageDiscount::Filter#field
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
                # @see Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::UsageDiscount::Filter#operator
                module Operator
                  extend Orb::Internal::Type::Enum

                  INCLUDES = :includes
                  EXCLUDES = :excludes

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end

            class AmountDiscount < Orb::Internal::Type::BaseModel
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
              #   billing period.
              #
              #   @return [String]
              required :amount_discount, String

              # @!attribute applies_to_price_ids
              #   @deprecated
              #
              #   The price IDs that this adjustment applies to.
              #
              #   @return [Array<String>]
              required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

              # @!attribute filters
              #   The filters that determine which prices to apply this adjustment to.
              #
              #   @return [Array<Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::AmountDiscount::Filter>]
              required :filters,
                       -> { Orb::Internal::Type::ArrayOf[Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::AmountDiscount::Filter] }

              # @!attribute is_invoice_level
              #   True for adjustments that apply to an entire invocice, false for adjustments
              #   that apply to only one price.
              #
              #   @return [Boolean]
              required :is_invoice_level, Orb::Internal::Type::Boolean

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

              # @!method initialize(id:, amount_discount:, applies_to_price_ids:, filters:, is_invoice_level:, plan_phase_order:, reason:, adjustment_type: :amount_discount)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::AmountDiscount}
              #   for more details.
              #
              #   @param id [String]
              #
              #   @param amount_discount [String] The amount by which to discount the prices this adjustment applies to in a given
              #
              #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
              #
              #   @param filters [Array<Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::AmountDiscount::Filter>] The filters that determine which prices to apply this adjustment to.
              #
              #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
              #
              #   @param plan_phase_order [Integer, nil] The plan phase in which this adjustment is active.
              #
              #   @param reason [String, nil] The reason for the adjustment.
              #
              #   @param adjustment_type [Symbol, :amount_discount]

              class Filter < Orb::Internal::Type::BaseModel
                # @!attribute field
                #   The property of the price to filter on.
                #
                #   @return [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::AmountDiscount::Filter::Field]
                required :field,
                         enum: -> { Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::AmountDiscount::Filter::Field }

                # @!attribute operator
                #   Should prices that match the filter be included or excluded.
                #
                #   @return [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::AmountDiscount::Filter::Operator]
                required :operator,
                         enum: -> { Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::AmountDiscount::Filter::Operator }

                # @!attribute values
                #   The IDs or values that match this filter.
                #
                #   @return [Array<String>]
                required :values, Orb::Internal::Type::ArrayOf[String]

                # @!method initialize(field:, operator:, values:)
                #   @param field [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::AmountDiscount::Filter::Field] The property of the price to filter on.
                #
                #   @param operator [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::AmountDiscount::Filter::Operator] Should prices that match the filter be included or excluded.
                #
                #   @param values [Array<String>] The IDs or values that match this filter.

                # The property of the price to filter on.
                #
                # @see Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::AmountDiscount::Filter#field
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
                # @see Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::AmountDiscount::Filter#operator
                module Operator
                  extend Orb::Internal::Type::Enum

                  INCLUDES = :includes
                  EXCLUDES = :excludes

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end

            class PercentageDiscount < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute adjustment_type
              #
              #   @return [Symbol, :percentage_discount]
              required :adjustment_type, const: :percentage_discount

              # @!attribute applies_to_price_ids
              #   @deprecated
              #
              #   The price IDs that this adjustment applies to.
              #
              #   @return [Array<String>]
              required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

              # @!attribute filters
              #   The filters that determine which prices to apply this adjustment to.
              #
              #   @return [Array<Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::PercentageDiscount::Filter>]
              required :filters,
                       -> { Orb::Internal::Type::ArrayOf[Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::PercentageDiscount::Filter] }

              # @!attribute is_invoice_level
              #   True for adjustments that apply to an entire invocice, false for adjustments
              #   that apply to only one price.
              #
              #   @return [Boolean]
              required :is_invoice_level, Orb::Internal::Type::Boolean

              # @!attribute percentage_discount
              #   The percentage (as a value between 0 and 1) by which to discount the price
              #   intervals this adjustment applies to in a given billing period.
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

              # @!method initialize(id:, applies_to_price_ids:, filters:, is_invoice_level:, percentage_discount:, plan_phase_order:, reason:, adjustment_type: :percentage_discount)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::PercentageDiscount}
              #   for more details.
              #
              #   @param id [String]
              #
              #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
              #
              #   @param filters [Array<Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::PercentageDiscount::Filter>] The filters that determine which prices to apply this adjustment to.
              #
              #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
              #
              #   @param percentage_discount [Float] The percentage (as a value between 0 and 1) by which to discount the price inter
              #
              #   @param plan_phase_order [Integer, nil] The plan phase in which this adjustment is active.
              #
              #   @param reason [String, nil] The reason for the adjustment.
              #
              #   @param adjustment_type [Symbol, :percentage_discount]

              class Filter < Orb::Internal::Type::BaseModel
                # @!attribute field
                #   The property of the price to filter on.
                #
                #   @return [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::PercentageDiscount::Filter::Field]
                required :field,
                         enum: -> { Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::PercentageDiscount::Filter::Field }

                # @!attribute operator
                #   Should prices that match the filter be included or excluded.
                #
                #   @return [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::PercentageDiscount::Filter::Operator]
                required :operator,
                         enum: -> { Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::PercentageDiscount::Filter::Operator }

                # @!attribute values
                #   The IDs or values that match this filter.
                #
                #   @return [Array<String>]
                required :values, Orb::Internal::Type::ArrayOf[String]

                # @!method initialize(field:, operator:, values:)
                #   @param field [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::PercentageDiscount::Filter::Field] The property of the price to filter on.
                #
                #   @param operator [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::PercentageDiscount::Filter::Operator] Should prices that match the filter be included or excluded.
                #
                #   @param values [Array<String>] The IDs or values that match this filter.

                # The property of the price to filter on.
                #
                # @see Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::PercentageDiscount::Filter#field
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
                # @see Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::PercentageDiscount::Filter#operator
                module Operator
                  extend Orb::Internal::Type::Enum

                  INCLUDES = :includes
                  EXCLUDES = :excludes

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end

            class Minimum < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute adjustment_type
              #
              #   @return [Symbol, :minimum]
              required :adjustment_type, const: :minimum

              # @!attribute applies_to_price_ids
              #   @deprecated
              #
              #   The price IDs that this adjustment applies to.
              #
              #   @return [Array<String>]
              required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

              # @!attribute filters
              #   The filters that determine which prices to apply this adjustment to.
              #
              #   @return [Array<Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Minimum::Filter>]
              required :filters,
                       -> { Orb::Internal::Type::ArrayOf[Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Minimum::Filter] }

              # @!attribute is_invoice_level
              #   True for adjustments that apply to an entire invocice, false for adjustments
              #   that apply to only one price.
              #
              #   @return [Boolean]
              required :is_invoice_level, Orb::Internal::Type::Boolean

              # @!attribute item_id
              #   The item ID that revenue from this minimum will be attributed to.
              #
              #   @return [String]
              required :item_id, String

              # @!attribute minimum_amount
              #   The minimum amount to charge in a given billing period for the prices this
              #   adjustment applies to.
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

              # @!method initialize(id:, applies_to_price_ids:, filters:, is_invoice_level:, item_id:, minimum_amount:, plan_phase_order:, reason:, adjustment_type: :minimum)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Minimum}
              #   for more details.
              #
              #   @param id [String]
              #
              #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
              #
              #   @param filters [Array<Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Minimum::Filter>] The filters that determine which prices to apply this adjustment to.
              #
              #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
              #
              #   @param item_id [String] The item ID that revenue from this minimum will be attributed to.
              #
              #   @param minimum_amount [String] The minimum amount to charge in a given billing period for the prices this adjus
              #
              #   @param plan_phase_order [Integer, nil] The plan phase in which this adjustment is active.
              #
              #   @param reason [String, nil] The reason for the adjustment.
              #
              #   @param adjustment_type [Symbol, :minimum]

              class Filter < Orb::Internal::Type::BaseModel
                # @!attribute field
                #   The property of the price to filter on.
                #
                #   @return [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Minimum::Filter::Field]
                required :field,
                         enum: -> { Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Minimum::Filter::Field }

                # @!attribute operator
                #   Should prices that match the filter be included or excluded.
                #
                #   @return [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Minimum::Filter::Operator]
                required :operator,
                         enum: -> { Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Minimum::Filter::Operator }

                # @!attribute values
                #   The IDs or values that match this filter.
                #
                #   @return [Array<String>]
                required :values, Orb::Internal::Type::ArrayOf[String]

                # @!method initialize(field:, operator:, values:)
                #   @param field [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Minimum::Filter::Field] The property of the price to filter on.
                #
                #   @param operator [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Minimum::Filter::Operator] Should prices that match the filter be included or excluded.
                #
                #   @param values [Array<String>] The IDs or values that match this filter.

                # The property of the price to filter on.
                #
                # @see Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Minimum::Filter#field
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
                # @see Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Minimum::Filter#operator
                module Operator
                  extend Orb::Internal::Type::Enum

                  INCLUDES = :includes
                  EXCLUDES = :excludes

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end

            class Maximum < Orb::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [String]
              required :id, String

              # @!attribute adjustment_type
              #
              #   @return [Symbol, :maximum]
              required :adjustment_type, const: :maximum

              # @!attribute applies_to_price_ids
              #   @deprecated
              #
              #   The price IDs that this adjustment applies to.
              #
              #   @return [Array<String>]
              required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

              # @!attribute filters
              #   The filters that determine which prices to apply this adjustment to.
              #
              #   @return [Array<Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Maximum::Filter>]
              required :filters,
                       -> { Orb::Internal::Type::ArrayOf[Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Maximum::Filter] }

              # @!attribute is_invoice_level
              #   True for adjustments that apply to an entire invocice, false for adjustments
              #   that apply to only one price.
              #
              #   @return [Boolean]
              required :is_invoice_level, Orb::Internal::Type::Boolean

              # @!attribute maximum_amount
              #   The maximum amount to charge in a given billing period for the prices this
              #   adjustment applies to.
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

              # @!method initialize(id:, applies_to_price_ids:, filters:, is_invoice_level:, maximum_amount:, plan_phase_order:, reason:, adjustment_type: :maximum)
              #   Some parameter documentations has been truncated, see
              #   {Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Maximum}
              #   for more details.
              #
              #   @param id [String]
              #
              #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
              #
              #   @param filters [Array<Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Maximum::Filter>] The filters that determine which prices to apply this adjustment to.
              #
              #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
              #
              #   @param maximum_amount [String] The maximum amount to charge in a given billing period for the prices this adjus
              #
              #   @param plan_phase_order [Integer, nil] The plan phase in which this adjustment is active.
              #
              #   @param reason [String, nil] The reason for the adjustment.
              #
              #   @param adjustment_type [Symbol, :maximum]

              class Filter < Orb::Internal::Type::BaseModel
                # @!attribute field
                #   The property of the price to filter on.
                #
                #   @return [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Maximum::Filter::Field]
                required :field,
                         enum: -> { Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Maximum::Filter::Field }

                # @!attribute operator
                #   Should prices that match the filter be included or excluded.
                #
                #   @return [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Maximum::Filter::Operator]
                required :operator,
                         enum: -> { Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Maximum::Filter::Operator }

                # @!attribute values
                #   The IDs or values that match this filter.
                #
                #   @return [Array<String>]
                required :values, Orb::Internal::Type::ArrayOf[String]

                # @!method initialize(field:, operator:, values:)
                #   @param field [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Maximum::Filter::Field] The property of the price to filter on.
                #
                #   @param operator [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Maximum::Filter::Operator] Should prices that match the filter be included or excluded.
                #
                #   @param values [Array<String>] The IDs or values that match this filter.

                # The property of the price to filter on.
                #
                # @see Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Maximum::Filter#field
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
                # @see Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Maximum::Filter#operator
                module Operator
                  extend Orb::Internal::Type::Enum

                  INCLUDES = :includes
                  EXCLUDES = :excludes

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end

            # @!method self.variants
            #   @return [Array(Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::UsageDiscount, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::AmountDiscount, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::PercentageDiscount, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Minimum, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::Adjustment::Maximum)]
          end

          class PlanPhase < Orb::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute description
            #
            #   @return [String, nil]
            required :description, String, nil?: true

            # @!attribute duration
            #   How many terms of length `duration_unit` this phase is active for. If null, this
            #   phase is evergreen and active indefinitely
            #
            #   @return [Integer, nil]
            required :duration, Integer, nil?: true

            # @!attribute duration_unit
            #
            #   @return [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::PlanPhase::DurationUnit, nil]
            required :duration_unit,
                     enum: -> { Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::PlanPhase::DurationUnit },
                     nil?: true

            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute order
            #   Determines the ordering of the phase in a plan's lifecycle. 1 = first phase.
            #
            #   @return [Integer]
            required :order, Integer

            # @!method initialize(id:, description:, duration:, duration_unit:, name:, order:)
            #   Some parameter documentations has been truncated, see
            #   {Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::PlanPhase} for more
            #   details.
            #
            #   @param id [String]
            #
            #   @param description [String, nil]
            #
            #   @param duration [Integer, nil] How many terms of length `duration_unit` this phase is active for. If null, this
            #
            #   @param duration_unit [Symbol, Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::PlanPhase::DurationUnit, nil]
            #
            #   @param name [String]
            #
            #   @param order [Integer] Determines the ordering of the phase in a plan's lifecycle. 1 = first phase.

            # @see Orb::Models::Plans::ExternalPlanID::VersionCreateResponse::PlanPhase#duration_unit
            module DurationUnit
              extend Orb::Internal::Type::Enum

              DAILY = :daily
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              SEMI_ANNUAL = :semi_annual
              ANNUAL = :annual

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
