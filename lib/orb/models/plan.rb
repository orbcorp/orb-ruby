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
      #   @return [Array<Orb::Models::PlanPhaseUsageDiscountAdjustment, Orb::Models::PlanPhaseAmountDiscountAdjustment, Orb::Models::PlanPhasePercentageDiscountAdjustment, Orb::Models::PlanPhaseMinimumAdjustment, Orb::Models::PlanPhaseMaximumAdjustment>]
      required :adjustments, -> { Orb::Internal::Type::ArrayOf[union: Orb::Plan::Adjustment] }

      # @!attribute base_plan
      #
      #   @return [Orb::Models::Plan::BasePlan, nil]
      required :base_plan, -> { Orb::Plan::BasePlan }, nil?: true

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
      #   @deprecated
      #
      #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
      required :discount, union: -> { Orb::Discount }, nil?: true

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
      #   @deprecated
      #
      #   @return [Orb::Models::Maximum, nil]
      required :maximum, -> { Orb::Maximum }, nil?: true

      # @!attribute maximum_amount
      #   @deprecated
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
      #   @deprecated
      #
      #   @return [Orb::Models::Minimum, nil]
      required :minimum, -> { Orb::Minimum }, nil?: true

      # @!attribute minimum_amount
      #   @deprecated
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
      required :plan_phases, -> { Orb::Internal::Type::ArrayOf[Orb::Plan::PlanPhase] }, nil?: true

      # @!attribute prices
      #   Prices for this plan. If the plan has phases, this includes prices across all
      #   phases of the plan.
      #
      #   @return [Array<Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBPS, Orb::Models::Price::BPS, Orb::Models::Price::BulkBPS, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::GroupedWithMinMaxThresholds>]
      required :prices, -> { Orb::Internal::Type::ArrayOf[union: Orb::Price] }

      # @!attribute product
      #
      #   @return [Orb::Models::Plan::Product]
      required :product, -> { Orb::Plan::Product }

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::Plan::Status]
      required :status, enum: -> { Orb::Plan::Status }

      # @!attribute trial_config
      #
      #   @return [Orb::Models::Plan::TrialConfig]
      required :trial_config, -> { Orb::Plan::TrialConfig }

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
      #   @param adjustments [Array<Orb::Models::PlanPhaseUsageDiscountAdjustment, Orb::Models::PlanPhaseAmountDiscountAdjustment, Orb::Models::PlanPhasePercentageDiscountAdjustment, Orb::Models::PlanPhaseMinimumAdjustment, Orb::Models::PlanPhaseMaximumAdjustment>] Adjustments for this plan. If the plan has phases, this includes adjustments acr
      #
      #   @param base_plan [Orb::Models::Plan::BasePlan, nil]
      #
      #   @param base_plan_id [String, nil] The parent plan id if the given plan was created by overriding one or more of th
      #
      #   @param created_at [Time]
      #
      #   @param currency [String] An ISO 4217 currency string or custom pricing unit (`credits`) for this plan's p
      #
      #   @param default_invoice_memo [String, nil] The default memo text on the invoices corresponding to subscriptions on this pla
      #
      #   @param description [String]
      #
      #   @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::UsageDiscount, Orb::Models::AmountDiscount, nil]
      #
      #   @param external_plan_id [String, nil] An optional user-defined ID for this plan resource, used throughout the system a
      #
      #   @param invoicing_currency [String] An ISO 4217 currency string for which this plan is billed in. Matches `currency`
      #
      #   @param maximum [Orb::Models::Maximum, nil]
      #
      #   @param maximum_amount [String, nil]
      #
      #   @param metadata [Hash{Symbol=>String}] User specified key-value pairs for the resource. If not present, this defaults t
      #
      #   @param minimum [Orb::Models::Minimum, nil]
      #
      #   @param minimum_amount [String, nil]
      #
      #   @param name [String]
      #
      #   @param net_terms [Integer, nil] Determines the difference between the invoice issue date and the due date. A val
      #
      #   @param plan_phases [Array<Orb::Models::Plan::PlanPhase>, nil]
      #
      #   @param prices [Array<Orb::Models::Price::Unit, Orb::Models::Price::Package, Orb::Models::Price::Matrix, Orb::Models::Price::Tiered, Orb::Models::Price::TieredBPS, Orb::Models::Price::BPS, Orb::Models::Price::BulkBPS, Orb::Models::Price::Bulk, Orb::Models::Price::ThresholdTotalAmount, Orb::Models::Price::TieredPackage, Orb::Models::Price::GroupedTiered, Orb::Models::Price::TieredWithMinimum, Orb::Models::Price::TieredPackageWithMinimum, Orb::Models::Price::PackageWithAllocation, Orb::Models::Price::UnitWithPercent, Orb::Models::Price::MatrixWithAllocation, Orb::Models::Price::TieredWithProration, Orb::Models::Price::UnitWithProration, Orb::Models::Price::GroupedAllocation, Orb::Models::Price::GroupedWithProratedMinimum, Orb::Models::Price::GroupedWithMeteredMinimum, Orb::Models::Price::MatrixWithDisplayName, Orb::Models::Price::BulkWithProration, Orb::Models::Price::GroupedTieredPackage, Orb::Models::Price::MaxGroupTieredPackage, Orb::Models::Price::ScalableMatrixWithUnitPricing, Orb::Models::Price::ScalableMatrixWithTieredPricing, Orb::Models::Price::CumulativeGroupedBulk, Orb::Models::Price::GroupedWithMinMaxThresholds>] Prices for this plan. If the plan has phases, this includes prices across all ph
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

        variant :usage_discount, -> { Orb::PlanPhaseUsageDiscountAdjustment }

        variant :amount_discount, -> { Orb::PlanPhaseAmountDiscountAdjustment }

        variant :percentage_discount, -> { Orb::PlanPhasePercentageDiscountAdjustment }

        variant :minimum, -> { Orb::PlanPhaseMinimumAdjustment }

        variant :maximum, -> { Orb::PlanPhaseMaximumAdjustment }

        # @!method self.variants
        #   @return [Array(Orb::Models::PlanPhaseUsageDiscountAdjustment, Orb::Models::PlanPhaseAmountDiscountAdjustment, Orb::Models::PlanPhasePercentageDiscountAdjustment, Orb::Models::PlanPhaseMinimumAdjustment, Orb::Models::PlanPhaseMaximumAdjustment)]
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
        #
        #   @param name [String, nil]
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
        required :discount, union: -> { Orb::Discount }, nil?: true

        # @!attribute duration
        #   How many terms of length `duration_unit` this phase is active for. If null, this
        #   phase is evergreen and active indefinitely
        #
        #   @return [Integer, nil]
        required :duration, Integer, nil?: true

        # @!attribute duration_unit
        #
        #   @return [Symbol, Orb::Models::Plan::PlanPhase::DurationUnit, nil]
        required :duration_unit, enum: -> { Orb::Plan::PlanPhase::DurationUnit }, nil?: true

        # @!attribute maximum
        #
        #   @return [Orb::Models::Maximum, nil]
        required :maximum, -> { Orb::Maximum }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute minimum
        #
        #   @return [Orb::Models::Minimum, nil]
        required :minimum, -> { Orb::Minimum }, nil?: true

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
        #
        #   @param duration_unit [Symbol, Orb::Models::Plan::PlanPhase::DurationUnit, nil]
        #
        #   @param maximum [Orb::Models::Maximum, nil]
        #
        #   @param maximum_amount [String, nil]
        #
        #   @param minimum [Orb::Models::Minimum, nil]
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
        required :trial_period_unit, enum: -> { Orb::Plan::TrialConfig::TrialPeriodUnit }

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
