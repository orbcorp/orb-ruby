# frozen_string_literal: true

module Orb
  module Models
    class PlanModel < Orb::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute adjustments
      #   Adjustments for this plan. If the plan has phases, this includes adjustments
      #     across all phases of the plan.
      #
      #   @return [Array<Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment, Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment, Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment, Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment, Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment>]
      required :adjustments, -> { Orb::ArrayOf[union: Orb::Models::AdjustmentModel] }

      # @!attribute base_plan
      #
      #   @return [Orb::Models::PlanMinifiedModel, nil]
      required :base_plan, -> { Orb::Models::PlanMinifiedModel }, nil?: true

      # @!attribute base_plan_id
      #   The parent plan id if the given plan was created by overriding one or more of
      #     the parent's prices
      #
      #   @return [String, nil]
      required :base_plan_id, String, nil?: true

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #   An ISO 4217 currency string or custom pricing unit (`credits`) for this plan's
      #     prices.
      #
      #   @return [String]
      required :currency, String

      # @!attribute default_invoice_memo
      #   The default memo text on the invoices corresponding to subscriptions on this
      #     plan. Note that each subscription may configure its own memo.
      #
      #   @return [String, nil]
      required :default_invoice_memo, String, nil?: true

      # @!attribute description
      #
      #   @return [String]
      required :description, String

      # @!attribute discount
      #
      #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
      required :discount, union: -> { Orb::Models::Discount }, nil?: true

      # @!attribute external_plan_id
      #   An optional user-defined ID for this plan resource, used throughout the system
      #     as an alias for this Plan. Use this field to identify a plan by an existing
      #     identifier in your system.
      #
      #   @return [String, nil]
      required :external_plan_id, String, nil?: true

      # @!attribute invoicing_currency
      #   An ISO 4217 currency string for which this plan is billed in. Matches `currency`
      #     unless `currency` is a custom pricing unit.
      #
      #   @return [String]
      required :invoicing_currency, String

      # @!attribute maximum
      #
      #   @return [Orb::Models::MaximumModel, nil]
      required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

      # @!attribute maximum_amount
      #
      #   @return [String, nil]
      required :maximum_amount, String, nil?: true

      # @!attribute metadata
      #   User specified key-value pairs for the resource. If not present, this defaults
      #     to an empty dictionary. Individual keys can be removed by setting the value to
      #     `null`, and the entire metadata mapping can be cleared by setting `metadata` to
      #     `null`.
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Orb::HashOf[String]

      # @!attribute minimum
      #
      #   @return [Orb::Models::MinimumModel, nil]
      required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

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
      #     value of "0" here signifies that invoices are due on issue, whereas a value of
      #     "30" means that the customer has a month to pay the invoice before its overdue.
      #     Note that individual subscriptions or invoices may set a different net terms
      #     configuration.
      #
      #   @return [Integer, nil]
      required :net_terms, Integer, nil?: true

      # @!attribute plan_phases
      #
      #   @return [Array<Orb::Models::PlanModel::PlanPhase>, nil]
      required :plan_phases, -> { Orb::ArrayOf[Orb::Models::PlanModel::PlanPhase] }, nil?: true

      # @!attribute prices
      #   Prices for this plan. If the plan has phases, this includes prices across all
      #     phases of the plan.
      #
      #   @return [Array<Orb::Models::PriceModel::UnitPrice, Orb::Models::PriceModel::PackagePrice, Orb::Models::PriceModel::MatrixPrice, Orb::Models::PriceModel::TieredPrice, Orb::Models::PriceModel::TieredBpsPrice, Orb::Models::PriceModel::BpsPrice, Orb::Models::PriceModel::BulkBpsPrice, Orb::Models::PriceModel::BulkPrice, Orb::Models::PriceModel::ThresholdTotalAmountPrice, Orb::Models::PriceModel::TieredPackagePrice, Orb::Models::PriceModel::GroupedTieredPrice, Orb::Models::PriceModel::TieredWithMinimumPrice, Orb::Models::PriceModel::TieredPackageWithMinimumPrice, Orb::Models::PriceModel::PackageWithAllocationPrice, Orb::Models::PriceModel::UnitWithPercentPrice, Orb::Models::PriceModel::MatrixWithAllocationPrice, Orb::Models::PriceModel::TieredWithProrationPrice, Orb::Models::PriceModel::UnitWithProrationPrice, Orb::Models::PriceModel::GroupedAllocationPrice, Orb::Models::PriceModel::GroupedWithProratedMinimumPrice, Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice, Orb::Models::PriceModel::MatrixWithDisplayNamePrice, Orb::Models::PriceModel::BulkWithProrationPrice, Orb::Models::PriceModel::GroupedTieredPackagePrice, Orb::Models::PriceModel::MaxGroupTieredPackagePrice, Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice, Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice, Orb::Models::PriceModel::CumulativeGroupedBulkPrice>]
      required :prices, -> { Orb::ArrayOf[union: Orb::Models::PriceModel] }

      # @!attribute product
      #
      #   @return [Orb::Models::PlanModel::Product]
      required :product, -> { Orb::Models::PlanModel::Product }

      # @!attribute status
      #
      #   @return [Symbol, Orb::Models::PlanModel::Status]
      required :status, enum: -> { Orb::Models::PlanModel::Status }

      # @!attribute trial_config
      #
      #   @return [Orb::Models::PlanModel::TrialConfig]
      required :trial_config, -> { Orb::Models::PlanModel::TrialConfig }

      # @!attribute version
      #
      #   @return [Integer]
      required :version, Integer

      # @!parse
      #   # The [Plan](/core-concepts#plan-and-price) resource represents a plan that can be
      #   #   subscribed to by a customer. Plans define the billing behavior of the
      #   #   subscription. You can see more about how to configure prices in the
      #   #   [Price resource](/reference/price).
      #   #
      #   # @param id [String]
      #   # @param adjustments [Array<Orb::Models::AdjustmentModel::PlanPhaseUsageDiscountAdjustment, Orb::Models::AdjustmentModel::PlanPhaseAmountDiscountAdjustment, Orb::Models::AdjustmentModel::PlanPhasePercentageDiscountAdjustment, Orb::Models::AdjustmentModel::PlanPhaseMinimumAdjustment, Orb::Models::AdjustmentModel::PlanPhaseMaximumAdjustment>]
      #   # @param base_plan [Orb::Models::PlanMinifiedModel, nil]
      #   # @param base_plan_id [String, nil]
      #   # @param created_at [Time]
      #   # @param currency [String]
      #   # @param default_invoice_memo [String, nil]
      #   # @param description [String]
      #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
      #   # @param external_plan_id [String, nil]
      #   # @param invoicing_currency [String]
      #   # @param maximum [Orb::Models::MaximumModel, nil]
      #   # @param maximum_amount [String, nil]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param minimum [Orb::Models::MinimumModel, nil]
      #   # @param minimum_amount [String, nil]
      #   # @param name [String]
      #   # @param net_terms [Integer, nil]
      #   # @param plan_phases [Array<Orb::Models::PlanModel::PlanPhase>, nil]
      #   # @param prices [Array<Orb::Models::PriceModel::UnitPrice, Orb::Models::PriceModel::PackagePrice, Orb::Models::PriceModel::MatrixPrice, Orb::Models::PriceModel::TieredPrice, Orb::Models::PriceModel::TieredBpsPrice, Orb::Models::PriceModel::BpsPrice, Orb::Models::PriceModel::BulkBpsPrice, Orb::Models::PriceModel::BulkPrice, Orb::Models::PriceModel::ThresholdTotalAmountPrice, Orb::Models::PriceModel::TieredPackagePrice, Orb::Models::PriceModel::GroupedTieredPrice, Orb::Models::PriceModel::TieredWithMinimumPrice, Orb::Models::PriceModel::TieredPackageWithMinimumPrice, Orb::Models::PriceModel::PackageWithAllocationPrice, Orb::Models::PriceModel::UnitWithPercentPrice, Orb::Models::PriceModel::MatrixWithAllocationPrice, Orb::Models::PriceModel::TieredWithProrationPrice, Orb::Models::PriceModel::UnitWithProrationPrice, Orb::Models::PriceModel::GroupedAllocationPrice, Orb::Models::PriceModel::GroupedWithProratedMinimumPrice, Orb::Models::PriceModel::GroupedWithMeteredMinimumPrice, Orb::Models::PriceModel::MatrixWithDisplayNamePrice, Orb::Models::PriceModel::BulkWithProrationPrice, Orb::Models::PriceModel::GroupedTieredPackagePrice, Orb::Models::PriceModel::MaxGroupTieredPackagePrice, Orb::Models::PriceModel::ScalableMatrixWithUnitPricingPrice, Orb::Models::PriceModel::ScalableMatrixWithTieredPricingPrice, Orb::Models::PriceModel::CumulativeGroupedBulkPrice>]
      #   # @param product [Orb::Models::PlanModel::Product]
      #   # @param status [Symbol, Orb::Models::PlanModel::Status]
      #   # @param trial_config [Orb::Models::PlanModel::TrialConfig]
      #   # @param version [Integer]
      #   #
      #   def initialize(
      #     id:,
      #     adjustments:,
      #     base_plan:,
      #     base_plan_id:,
      #     created_at:,
      #     currency:,
      #     default_invoice_memo:,
      #     description:,
      #     discount:,
      #     external_plan_id:,
      #     invoicing_currency:,
      #     maximum:,
      #     maximum_amount:,
      #     metadata:,
      #     minimum:,
      #     minimum_amount:,
      #     name:,
      #     net_terms:,
      #     plan_phases:,
      #     prices:,
      #     product:,
      #     status:,
      #     trial_config:,
      #     version:,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Orb::BaseModel) -> void

      class PlanPhase < Orb::BaseModel
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
        #   @return [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        required :discount, union: -> { Orb::Models::Discount }, nil?: true

        # @!attribute duration
        #   How many terms of length `duration_unit` this phase is active for. If null, this
        #     phase is evergreen and active indefinitely
        #
        #   @return [Integer, nil]
        required :duration, Integer, nil?: true

        # @!attribute duration_unit
        #
        #   @return [Symbol, Orb::Models::PlanModel::PlanPhase::DurationUnit, nil]
        required :duration_unit, enum: -> { Orb::Models::PlanModel::PlanPhase::DurationUnit }, nil?: true

        # @!attribute maximum
        #
        #   @return [Orb::Models::MaximumModel, nil]
        required :maximum, -> { Orb::Models::MaximumModel }, nil?: true

        # @!attribute maximum_amount
        #
        #   @return [String, nil]
        required :maximum_amount, String, nil?: true

        # @!attribute minimum
        #
        #   @return [Orb::Models::MinimumModel, nil]
        required :minimum, -> { Orb::Models::MinimumModel }, nil?: true

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

        # @!parse
        #   # @param id [String]
        #   # @param description [String, nil]
        #   # @param discount [Orb::Models::PercentageDiscount, Orb::Models::TrialDiscount, Orb::Models::Discount::UsageDiscount, Orb::Models::AmountDiscount, nil]
        #   # @param duration [Integer, nil]
        #   # @param duration_unit [Symbol, Orb::Models::PlanModel::PlanPhase::DurationUnit, nil]
        #   # @param maximum [Orb::Models::MaximumModel, nil]
        #   # @param maximum_amount [String, nil]
        #   # @param minimum [Orb::Models::MinimumModel, nil]
        #   # @param minimum_amount [String, nil]
        #   # @param name [String]
        #   # @param order [Integer]
        #   #
        #   def initialize(
        #     id:,
        #     description:,
        #     discount:,
        #     duration:,
        #     duration_unit:,
        #     maximum:,
        #     maximum_amount:,
        #     minimum:,
        #     minimum_amount:,
        #     name:,
        #     order:,
        #     **
        #   )
        #     super
        #   end

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case duration_unit
        # in :daily
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :semi_annual
        #   # ...
        # in :annual
        #   # ...
        # end
        # ```
        class DurationUnit < Orb::Enum
          DAILY = :daily
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          SEMI_ANNUAL = :semi_annual
          ANNUAL = :annual

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class Product < Orb::BaseModel
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

        # @!parse
        #   # @param id [String]
        #   # @param created_at [Time]
        #   # @param name [String]
        #   #
        #   def initialize(id:, created_at:, name:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void
      end

      # @abstract
      #
      # @example
      # ```ruby
      # case status
      # in :active
      #   # ...
      # in :archived
      #   # ...
      # in :draft
      #   # ...
      # end
      # ```
      class Status < Orb::Enum
        ACTIVE = :active
        ARCHIVED = :archived
        DRAFT = :draft

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   #
        #   def self.values; end
      end

      class TrialConfig < Orb::BaseModel
        # @!attribute trial_period
        #
        #   @return [Integer, nil]
        required :trial_period, Integer, nil?: true

        # @!attribute trial_period_unit
        #
        #   @return [Symbol, Orb::Models::PlanModel::TrialConfig::TrialPeriodUnit]
        required :trial_period_unit, enum: -> { Orb::Models::PlanModel::TrialConfig::TrialPeriodUnit }

        # @!parse
        #   # @param trial_period [Integer, nil]
        #   # @param trial_period_unit [Symbol, Orb::Models::PlanModel::TrialConfig::TrialPeriodUnit]
        #   #
        #   def initialize(trial_period:, trial_period_unit:, **) = super

        # def initialize: (Hash | Orb::BaseModel) -> void

        # @abstract
        #
        # @example
        # ```ruby
        # case trial_period_unit
        # in :days
        #   # ...
        # end
        # ```
        class TrialPeriodUnit < Orb::Enum
          DAYS = :days

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end
    end
  end
end
