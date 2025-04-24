# frozen_string_literal: true

module Orb
  module Models
    # @see Orb::Resources::Plans#create
    class Plan < Orb::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute adjustments
      #   Adjustments for this plan. If the plan has phases, this includes adjustments
      #   across all phases of the plan.
      #
      #   @return [Array<Orb::Models::Plan::Adjustment::PlanPhaseUsageDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseAmountDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhasePercentageDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseMinimumAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseMaximumAdjustment>]
      required :adjustments, -> { Orb::Internal::Type::ArrayOf[union: Orb::Models::Plan::Adjustment] }

      # @!attribute base_plan
      #
      #   @return [Orb::Models::Plan::BasePlan, nil]
      required :base_plan, -> { Orb::Models::Plan::BasePlan }, nil?: true

      # @!attribute base_plan_id
      #   The parent plan id if the given plan was created by overriding one or more of
      #   the parent's prices
      #
      #   @return [String, nil]
      required :base_plan_id, String, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   @deprecated
      #
      #   An ISO 4217 currency string or custom pricing unit (`credits`) for this plan's
      #   prices.
      #
      #   @return [String]
      required :currency, String

      # @!attribute default_invoice_memo
      #   The default memo text on the invoices corresponding to subscriptions on this
      #   plan. Note that each subscription may configure its own memo.
      #
      #   @return [String, nil]
      required :default_invoice_memo, String, nil?: true

      # @!attribute description
      #
      #   @return [String]
      required :description, String

      # @!attribute discount
      #
      #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
      required :discount, union: -> { Orb::Models::Discount }, nil?: true

      # @!attribute external_plan_id
      #   An optional user-defined ID for this plan resource, used throughout the system
      #   as an alias for this Plan. Use this field to identify a plan by an existing
      #   identifier in your system.
      #
      #   @return [String, nil]
      required :external_plan_id, String, nil?: true

      # @!attribute invoicing_currency
      #   An ISO 4217 currency string for which this plan is billed in. Matches `currency`
      #   unless `currency` is a custom pricing unit.
      #
      #   @return [String]
      required :invoicing_currency, String

      # @!attribute maximum
      #
      #   @return [Orb::Models::Plan::Maximum, nil]
      required :maximum, -> { Orb::Models::Plan::Maximum }, nil?: true

      # @!attribute maximum_amount
      #
      #   @return [String, nil]
      required :maximum_amount, String, nil?: true

      # @!attribute metadata
      #   User specified key-value pairs for the resource. If not present, this defaults
      #   to an empty dictionary. Individual keys can be removed by setting the value to
      #   `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #   `null`.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Orb::Internal::Type::HashOf[String]

      # @!attribute minimum
      #
      #   @return [Orb::Models::Plan::Minimum, nil]
      required :minimum, -> { Orb::Models::Plan::Minimum }, nil?: true

      # @!attribute minimum_amount
      #
      #   @return [String, nil]
      required :minimum_amount, String, nil?: true

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute net_terms
      #   Determines the difference between the invoice issue date and the due date. A
      #   value of "0" here signifies that invoices are due on issue, whereas a value of
      #   "30" means that the customer has a month to pay the invoice before its overdue.
      #   Note that individual subscriptions or invoices may set a different net terms
      #   configuration.
      #
      #   @return [Integer, nil]
      required :net_terms, Integer, nil?: true

      # @!attribute plan_phases
      #
      #   @return [Array<Orb::Models::Plan::PlanPhase>, nil]
      required :plan_phases, -> { Orb::Internal::Type::ArrayOf[Orb::Models::Plan::PlanPhase] }, nil?: true

      # @!attribute prices
      #   Prices for this plan. If the plan has phases, this includes prices across all
      #   phases of the plan.
      #
      #   @return [Array<Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice>]
      required :prices, -> { Orb::Internal::Type::ArrayOf[union: Orb::Models::Price] }

      # @!attribute product
      #
      #   @return [Orb::Models::Plan::Product]
      required :product, -> { Orb::Models::Plan::Product }

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::Plan::Status]
      required :status, enum: -> { Orb::Models::Plan::Status }

      # @!attribute trial_config
      #
      #   @return [Orb::Models::Plan::TrialConfig]
      required :trial_config, -> { Orb::Models::Plan::TrialConfig }

      # @!attribute version
      #
      #   @return [Integer]
      required :version, Integer

      # @!method initialize(id:, adjustments:, base_plan:, base_plan_id:, created_at:, currency:, default_invoice_memo:, description:, discount:, external_plan_id:, invoicing_currency:, maximum:, maximum_amount:, metadata:, minimum:, minimum_amount:, name:, net_terms:, plan_phases:, prices:, product:, status:, trial_config:, version:)
      #   Some parameter documentations has been truncated, see {Orb::Models::Plan} for
      #   more details.
      #
      #   The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      #   subscribed to by a customer. Plans define the billing behavior of the
      #   subscription. You can see more about how to configure prices in the
      #   [Price resource](/reference/price).
      #
      #   @param id [String]
      #
      #   @param adjustments [Array<Orb::Models::Plan::Adjustment::PlanPhaseUsageDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseAmountDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhasePercentageDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseMinimumAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseMaximumAdjustment>] Adjustments for this plan. If the plan has phases, this includes adjustments acr
      #   ...
      #
      #   @param base_plan [Orb::Models::Plan::BasePlan, nil]
      #
      #   @param base_plan_id [String, nil] The parent plan id if the given plan was created by overriding one or more of th
      #   ...
      #
      #   @param created_at [Time]
      #
      #   @param currency [String] An ISO 4217 currency string or custom pricing unit (`credits`) for this plan's p
      #   ...
      #
      #   @param default_invoice_memo [String, nil] The default memo text on the invoices corresponding to subscriptions on this pla
      #   ...
      #
      #   @param description [String]
      #
      #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
      #
      #   @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
      #   ...
      #
      #   @param invoicing_currency [String] An ISO 4217 currency string for which this plan is billed in. Matches `currency`
      #   ...
      #
      #   @param maximum [Orb::Models::Plan::Maximum, nil]
      #
      #   @param maximum_amount [String, nil]
      #
      #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
      #   ...
      #
      #   @param minimum [Orb::Models::Plan::Minimum, nil]
      #
      #   @param minimum_amount [String, nil]
      #
      #   @param name [String]
      #
      #   @param net_terms [Integer, nil] Determines the difference between the invoice issue date and the due date. A val
      #   ...
      #
      #   @param plan_phases [Array<Orb::Models::Plan::PlanPhase>, nil]
      #
      #   @param prices [Array<Orb::Models::Price::UnitPrice, Orb::Models::Price::PackagePrice, Orb::Models::Price::MatrixPrice, Orb::Models::Price::TieredPrice, Orb::Models::Price::TieredBpsPrice, Orb::Models::Price::BpsPrice, Orb::Models::Price::BulkBpsPrice, Orb::Models::Price::BulkPrice, Orb::Models::Price::ThresholdTotalAmountPrice, Orb::Models::Price::TieredPackagePrice, Orb::Models::Price::GroupedTieredPrice, Orb::Models::Price::TieredWithMinimumPrice, Orb::Models::Price::TieredPackageWithMinimumPrice, Orb::Models::Price::PackageWithAllocationPrice, Orb::Models::Price::UnitWithPercentPrice, Orb::Models::Price::MatrixWithAllocationPrice, Orb::Models::Price::TieredWithProrationPrice, Orb::Models::Price::UnitWithProrationPrice, Orb::Models::Price::GroupedAllocationPrice, Orb::Models::Price::GroupedWithProratedMinimumPrice, Orb::Models::Price::GroupedWithMeteredMinimumPrice, Orb::Models::Price::MatrixWithDisplayNamePrice, Orb::Models::Price::BulkWithProrationPrice, Orb::Models::Price::GroupedTieredPackagePrice, Orb::Models::Price::MaxGroupTieredPackagePrice, Orb::Models::Price::ScalableMatrixWithUnitPricingPrice, Orb::Models::Price::ScalableMatrixWithTieredPricingPrice, Orb::Models::Price::CumulativeGroupedBulkPrice>] Prices for this plan. If the plan has phases, this includes prices across all ph
      #   ...
      #
      #   @param product [Orb::Models::Plan::Product]
      #
      #   @param status [Symbol, Orb::Models::Plan::Status]
      #
      #   @param trial_config [Orb::Models::Plan::TrialConfig]
      #
      #   @param version [Integer]

      module Adjustment
        extend Orb::Internal::Type::Union

        discriminator :adjustment_type

        variant :usage_discount, -> { Orb::Models::Plan::Adjustment::PlanPhaseUsageDiscountAdjustment }

        variant :amount_discount, -> { Orb::Models::Plan::Adjustment::PlanPhaseAmountDiscountAdjustment }

        variant :percentage_discount, -> { Orb::Models::Plan::Adjustment::PlanPhasePercentageDiscountAdjustment }

        variant :minimum, -> { Orb::Models::Plan::Adjustment::PlanPhaseMinimumAdjustment }

        variant :maximum, -> { Orb::Models::Plan::Adjustment::PlanPhaseMaximumAdjustment }

        class PlanPhaseUsageDiscountAdjustment < Orb::Internal::Type::BaseModel
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
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

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

          # @!method initialize(id:, applies_to_price_ids:, is_invoice_level:, plan_phase_order:, reason:, usage_discount:, adjustment_type: :usage_discount)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Plan::Adjustment::PlanPhaseUsageDiscountAdjustment} for more
          #   details.
          #
          #   @param id [String]
          #
          #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
          #
          #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
          #   ...
          #
          #   @param plan_phase_order [Integer, nil] The plan phase in which this adjustment is active.
          #
          #   @param reason [String, nil] The reason for the adjustment.
          #
          #   @param usage_discount [Float] The number of usage units by which to discount the price this adjustment applies
          #   ...
          #
          #   @param adjustment_type [Symbol, :usage_discount]
        end

        class PlanPhaseAmountDiscountAdjustment < Orb::Internal::Type::BaseModel
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
          #   The price IDs that this adjustment applies to.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

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

          # @!method initialize(id:, amount_discount:, applies_to_price_ids:, is_invoice_level:, plan_phase_order:, reason:, adjustment_type: :amount_discount)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Plan::Adjustment::PlanPhaseAmountDiscountAdjustment} for more
          #   details.
          #
          #   @param id [String]
          #
          #   @param amount_discount [String] The amount by which to discount the prices this adjustment applies to in a given
          #   ...
          #
          #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
          #
          #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
          #   ...
          #
          #   @param plan_phase_order [Integer, nil] The plan phase in which this adjustment is active.
          #
          #   @param reason [String, nil] The reason for the adjustment.
          #
          #   @param adjustment_type [Symbol, :amount_discount]
        end

        class PlanPhasePercentageDiscountAdjustment < Orb::Internal::Type::BaseModel
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
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

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

          # @!method initialize(id:, applies_to_price_ids:, is_invoice_level:, percentage_discount:, plan_phase_order:, reason:, adjustment_type: :percentage_discount)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Plan::Adjustment::PlanPhasePercentageDiscountAdjustment} for more
          #   details.
          #
          #   @param id [String]
          #
          #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
          #
          #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
          #   ...
          #
          #   @param percentage_discount [Float] The percentage (as a value between 0 and 1) by which to discount the price inter
          #   ...
          #
          #   @param plan_phase_order [Integer, nil] The plan phase in which this adjustment is active.
          #
          #   @param reason [String, nil] The reason for the adjustment.
          #
          #   @param adjustment_type [Symbol, :percentage_discount]
        end

        class PlanPhaseMinimumAdjustment < Orb::Internal::Type::BaseModel
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
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

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

          # @!method initialize(id:, applies_to_price_ids:, is_invoice_level:, item_id:, minimum_amount:, plan_phase_order:, reason:, adjustment_type: :minimum)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Plan::Adjustment::PlanPhaseMinimumAdjustment} for more details.
          #
          #   @param id [String]
          #
          #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
          #
          #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
          #   ...
          #
          #   @param item_id [String] The item ID that revenue from this minimum will be attributed to.
          #
          #   @param minimum_amount [String] The minimum amount to charge in a given billing period for the prices this adjus
          #   ...
          #
          #   @param plan_phase_order [Integer, nil] The plan phase in which this adjustment is active.
          #
          #   @param reason [String, nil] The reason for the adjustment.
          #
          #   @param adjustment_type [Symbol, :minimum]
        end

        class PlanPhaseMaximumAdjustment < Orb::Internal::Type::BaseModel
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
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

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

          # @!method initialize(id:, applies_to_price_ids:, is_invoice_level:, maximum_amount:, plan_phase_order:, reason:, adjustment_type: :maximum)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Plan::Adjustment::PlanPhaseMaximumAdjustment} for more details.
          #
          #   @param id [String]
          #
          #   @param applies_to_price_ids [Array<String>] The price IDs that this adjustment applies to.
          #
          #   @param is_invoice_level [Boolean] True for adjustments that apply to an entire invocice, false for adjustments tha
          #   ...
          #
          #   @param maximum_amount [String] The maximum amount to charge in a given billing period for the prices this adjus
          #   ...
          #
          #   @param plan_phase_order [Integer, nil] The plan phase in which this adjustment is active.
          #
          #   @param reason [String, nil] The reason for the adjustment.
          #
          #   @param adjustment_type [Symbol, :maximum]
        end

        # @!method self.variants
        #   @return [Array(Orb::Models::Plan::Adjustment::PlanPhaseUsageDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseAmountDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhasePercentageDiscountAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseMinimumAdjustment, Orb::Models::Plan::Adjustment::PlanPhaseMaximumAdjustment)]
      end

      # @see Orb::Models::Plan#base_plan
      class BasePlan < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        required :id, String, nil?: true

        # @!attribute external_plan_id
        #   An optional user-defined ID for this plan resource, used throughout the system
        #   as an alias for this Plan. Use this field to identify a plan by an existing
        #   identifier in your system.
        #
        #   @return [String, nil]
        required :external_plan_id, String, nil?: true

        # @!attribute name
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!method initialize(id:, external_plan_id:, name:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Plan::BasePlan} for more details.
        #
        #   @param id [String, nil]
        #
        #   @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
        #   ...
        #
        #   @param name [String, nil]
      end

      # @see Orb::Models::Plan#maximum
      class Maximum < Orb::Internal::Type::BaseModel
        # @!attribute applies_to_price_ids
        #   List of price_ids that this maximum amount applies to. For plan/plan phase
        #   maximums, this can be a subset of prices.
        #
        #   @return [Array<String>]
        required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

        # @!attribute maximum_amount
        #   Maximum amount applied
        #
        #   @return [String]
        required :maximum_amount, String

        # @!method initialize(applies_to_price_ids:, maximum_amount:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Plan::Maximum} for more details.
        #
        #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
        #   ...
        #
        #   @param maximum_amount [String] Maximum amount applied
      end

      # @see Orb::Models::Plan#minimum
      class Minimum < Orb::Internal::Type::BaseModel
        # @!attribute applies_to_price_ids
        #   List of price_ids that this minimum amount applies to. For plan/plan phase
        #   minimums, this can be a subset of prices.
        #
        #   @return [Array<String>]
        required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

        # @!attribute minimum_amount
        #   Minimum amount applied
        #
        #   @return [String]
        required :minimum_amount, String

        # @!method initialize(applies_to_price_ids:, minimum_amount:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Plan::Minimum} for more details.
        #
        #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
        #   ...
        #
        #   @param minimum_amount [String] Minimum amount applied
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

        # @!attribute discount
        #
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

        # @!attribute duration
        #   How many terms of length `duration_unit` this phase is active for. If null, this
        #   phase is evergreen and active indefinitely
        #
        #   @return [Integer, nil]
        required :duration, Integer, nil?: true

        # @!attribute duration_unit
        #
        #   @return [Symbol, Orb::Models::Plan::PlanPhase::DurationUnit, nil]
        required :duration_unit, enum: -> { Orb::Models::Plan::PlanPhase::DurationUnit }, nil?: true

        # @!attribute maximum
        #
        #   @return [Orb::Models::Plan::PlanPhase::Maximum, nil]
        required :maximum, -> { Orb::Models::Plan::PlanPhase::Maximum }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute minimum
        #
        #   @return [Orb::Models::Plan::PlanPhase::Minimum, nil]
        required :minimum, -> { Orb::Models::Plan::PlanPhase::Minimum }, nil?: true

        # @!attribute minimum_amount
        #
        #   @return [String, nil]
        required :minimum_amount, String, nil?: true

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute order
        #   Determines the ordering of the phase in a plan's lifecycle. 1 = first phase.
        #
        #   @return [Integer]
        required :order, Integer

        # @!method initialize(id:, description:, discount:, duration:, duration_unit:, maximum:, maximum_amount:, minimum:, minimum_amount:, name:, order:)
        #   Some parameter documentations has been truncated, see
        #   {Orb::Models::Plan::PlanPhase} for more details.
        #
        #   @param id [String]
        #
        #   @param description [String, nil]
        #
        #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #
        #   @param duration [Integer, nil] How many terms of length `duration_unit` this phase is active for. If null, this
        #   ...
        #
        #   @param duration_unit [Symbol, Orb::Models::Plan::PlanPhase::DurationUnit, nil]
        #
        #   @param maximum [Orb::Models::Plan::PlanPhase::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param minimum [Orb::Models::Plan::PlanPhase::Minimum, nil]
        #
        #   @param minimum_amount [String, nil]
        #
        #   @param name [String]
        #
        #   @param order [Integer] Determines the ordering of the phase in a plan's lifecycle. 1 = first phase.

        # @see Orb::Models::Plan::PlanPhase#duration_unit
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

        # @see Orb::Models::Plan::PlanPhase#maximum
        class Maximum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this maximum amount applies to. For plan/plan phase
          #   maximums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute maximum_amount
          #   Maximum amount applied
          #
          #   @return [String]
          required :maximum_amount, String

          # @!method initialize(applies_to_price_ids:, maximum_amount:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Plan::PlanPhase::Maximum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this maximum amount applies to. For plan/plan phase maxim
          #   ...
          #
          #   @param maximum_amount [String] Maximum amount applied
        end

        # @see Orb::Models::Plan::PlanPhase#minimum
        class Minimum < Orb::Internal::Type::BaseModel
          # @!attribute applies_to_price_ids
          #   List of price_ids that this minimum amount applies to. For plan/plan phase
          #   minimums, this can be a subset of prices.
          #
          #   @return [Array<String>]
          required :applies_to_price_ids, Orb::Internal::Type::ArrayOf[String]

          # @!attribute minimum_amount
          #   Minimum amount applied
          #
          #   @return [String]
          required :minimum_amount, String

          # @!method initialize(applies_to_price_ids:, minimum_amount:)
          #   Some parameter documentations has been truncated, see
          #   {Orb::Models::Plan::PlanPhase::Minimum} for more details.
          #
          #   @param applies_to_price_ids [Array<String>] List of price_ids that this minimum amount applies to. For plan/plan phase minim
          #   ...
          #
          #   @param minimum_amount [String] Minimum amount applied
        end
      end

      # @see Orb::Models::Plan#product
      class Product < Orb::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!method initialize(id:, created_at:, name:)
        #   @param id [String]
        #   @param created_at [Time]
        #   @param name [String]
      end

      # @see Orb::Models::Plan#status
      module Status
        extend Orb::Internal::Type::Enum

        ACTIVE = :active
        ARCHIVED = :archived
        DRAFT = :draft

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Orb::Models::Plan#trial_config
      class TrialConfig < Orb::Internal::Type::BaseModel
        # @!attribute trial_period
        #
        #   @return [Integer, nil]
        required :trial_period, Integer, nil?: true

        # @!attribute trial_period_unit
        #
        #   @return [Symbol, Orb::Models::Plan::TrialConfig::TrialPeriodUnit]
        required :trial_period_unit, enum: -> { Orb::Models::Plan::TrialConfig::TrialPeriodUnit }

        # @!method initialize(trial_period:, trial_period_unit:)
        #   @param trial_period [Integer, nil]
        #   @param trial_period_unit [Symbol, Orb::Models::Plan::TrialConfig::TrialPeriodUnit]

        # @see Orb::Models::Plan::TrialConfig#trial_period_unit
        module TrialPeriodUnit
          extend Orb::Internal::Type::Enum

          DAYS = :days

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
