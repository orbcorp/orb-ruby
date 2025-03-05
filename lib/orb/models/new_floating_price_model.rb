# frozen_string_literal: true

module Orb
  module Models
    # @abstract
    #
    # @example
    # ```ruby
    # case new_floating_price_model
    # in {
    #   model_type: "unit",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice ...
    # in {
    #   model_type: "package",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice ...
    # in {
    #   model_type: "matrix",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice ...
    # in {
    #   model_type: "matrix_with_allocation",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice ...
    # in {
    #   model_type: "tiered",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice ...
    # in {
    #   model_type: "tiered_bps",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice ...
    # in {
    #   model_type: "bps",
    #   bps_config: Orb::Models::BpsConfigModel,
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice::Cadence,
    #   currency: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice ...
    # in {
    #   model_type: "bulk_bps",
    #   bulk_bps_config: Orb::Models::BulkBpsConfigModel,
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice::Cadence,
    #   currency: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice ...
    # in {
    #   model_type: "bulk",
    #   bulk_config: Orb::Models::BulkConfigModel,
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice::Cadence,
    #   currency: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice ...
    # in {
    #   model_type: "threshold_total_amount",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice ...
    # in {
    #   model_type: "tiered_package",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice ...
    # in {
    #   model_type: "grouped_tiered",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice::Cadence,
    #   currency: String,
    #   grouped_tiered_config: ^(Orb::HashOf[Orb::Unknown])
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice ...
    # in {
    #   model_type: "max_group_tiered_package",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice ...
    # in {
    #   model_type: "tiered_with_minimum",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice ...
    # in {
    #   model_type: "package_with_allocation",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice ...
    # in {
    #   model_type: "tiered_package_with_minimum",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice ...
    # in {
    #   model_type: "unit_with_percent",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice ...
    # in {
    #   model_type: "tiered_with_proration",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice ...
    # in {
    #   model_type: "unit_with_proration",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice ...
    # in {
    #   model_type: "grouped_allocation",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice::Cadence,
    #   currency: String,
    #   grouped_allocation_config: ^(Orb::HashOf[Orb::Unknown])
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice ...
    # in {
    #   model_type: "grouped_with_prorated_minimum",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice::Cadence,
    #   currency: String,
    #   grouped_with_prorated_minimum_config: ^(Orb::HashOf[Orb::Unknown])
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice ...
    # in {
    #   model_type: "grouped_with_metered_minimum",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice::Cadence,
    #   currency: String,
    #   grouped_with_metered_minimum_config: ^(Orb::HashOf[Orb::Unknown])
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice ...
    # in {
    #   model_type: "matrix_with_display_name",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice ...
    # in {
    #   model_type: "bulk_with_proration",
    #   bulk_with_proration_config: ^(Orb::HashOf[Orb::Unknown]),
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice::Cadence,
    #   currency: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice ...
    # in {
    #   model_type: "grouped_tiered_package",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice::Cadence,
    #   currency: String,
    #   grouped_tiered_package_config: ^(Orb::HashOf[Orb::Unknown])
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice ...
    # in {
    #   model_type: "scalable_matrix_with_unit_pricing",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice ...
    # in {
    #   model_type: "scalable_matrix_with_tiered_pricing",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence,
    #   currency: String,
    #   item_id: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice ...
    # in {
    #   model_type: "cumulative_grouped_bulk",
    #   cadence: Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice::Cadence,
    #   cumulative_grouped_bulk_config: ^(Orb::HashOf[Orb::Unknown]),
    #   currency: String
    # }
    #   # Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice ...
    # end
    # ```
    #
    # @example
    # ```ruby
    # case new_floating_price_model
    # in Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice
    #   # ...
    # in Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice
    #   # ...
    # end
    # ```
    class NewFloatingPriceModel < Orb::Union
      discriminator :model_type

      variant :unit, -> { Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice }

      variant :package, -> { Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice }

      variant :matrix, -> { Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice }

      variant :matrix_with_allocation,
              -> { Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice }

      variant :tiered, -> { Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice }

      variant :tiered_bps, -> { Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice }

      variant :bps, -> { Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice }

      variant :bulk_bps, -> { Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice }

      variant :bulk, -> { Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice }

      variant :threshold_total_amount,
              -> { Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice }

      variant :tiered_package, -> { Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice }

      variant :grouped_tiered, -> { Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice }

      variant :max_group_tiered_package,
              -> { Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice }

      variant :tiered_with_minimum, -> { Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice }

      variant :package_with_allocation,
              -> { Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice }

      variant :tiered_package_with_minimum,
              -> { Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice }

      variant :unit_with_percent, -> { Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice }

      variant :tiered_with_proration,
              -> { Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice }

      variant :unit_with_proration, -> { Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice }

      variant :grouped_allocation, -> { Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice }

      variant :grouped_with_prorated_minimum,
              -> { Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice }

      variant :grouped_with_metered_minimum,
              -> { Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice }

      variant :matrix_with_display_name,
              -> { Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice }

      variant :bulk_with_proration, -> { Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice }

      variant :grouped_tiered_package,
              -> { Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice }

      variant :scalable_matrix_with_unit_pricing,
              -> { Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice }

      variant :scalable_matrix_with_tiered_pricing,
              -> { Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice }

      variant :cumulative_grouped_bulk,
              -> { Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice }

      class NewFloatingUnitPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice::Cadence }

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
        #   @return [Orb::Models::UnitConfigModel]
        required :unit_config, -> { Orb::Models::UnitConfigModel }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingUnitPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param unit_config [Orb::Models::UnitConfigModel]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingPackagePrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice::Cadence]
        required :cadence, enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice::Cadence }

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
        #   @return [Orb::Models::PackageConfigModel]
        required :package_config, -> { Orb::Models::PackageConfigModel }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingPackagePrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param package_config [Orb::Models::PackageConfigModel]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingMatrixPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice::Cadence }

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
        #   @return [Orb::Models::MatrixConfigModel]
        required :matrix_config, -> { Orb::Models::MatrixConfigModel }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param matrix_config [Orb::Models::MatrixConfigModel]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingMatrixWithAllocationPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice::Cadence }

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
        #   @return [Orb::Models::MatrixWithAllocationConfigModel]
        required :matrix_with_allocation_config, -> { Orb::Models::MatrixWithAllocationConfigModel }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithAllocationPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param matrix_with_allocation_config [Orb::Models::MatrixWithAllocationConfigModel]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingTieredPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice::Cadence }

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
        #   @return [Orb::Models::TieredConfigModel]
        required :tiered_config, -> { Orb::Models::TieredConfigModel }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param tiered_config [Orb::Models::TieredConfigModel]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingTieredBpsPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice::Cadence }

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
        #   @return [Orb::Models::TieredBpsConfigModel]
        required :tiered_bps_config, -> { Orb::Models::TieredBpsConfigModel }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingTieredBpsPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param tiered_bps_config [Orb::Models::TieredBpsConfigModel]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingBpsPrice < Orb::BaseModel
        # @!attribute bps_config
        #
        #   @return [Orb::Models::BpsConfigModel]
        required :bps_config, -> { Orb::Models::BpsConfigModel }

        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param bps_config [Orb::Models::BpsConfigModel]
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingBpsPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingBulkBpsPrice < Orb::BaseModel
        # @!attribute bulk_bps_config
        #
        #   @return [Orb::Models::BulkBpsConfigModel]
        required :bulk_bps_config, -> { Orb::Models::BulkBpsConfigModel }

        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param bulk_bps_config [Orb::Models::BulkBpsConfigModel]
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingBulkBpsPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingBulkPrice < Orb::BaseModel
        # @!attribute bulk_config
        #
        #   @return [Orb::Models::BulkConfigModel]
        required :bulk_config, -> { Orb::Models::BulkConfigModel }

        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param bulk_config [Orb::Models::BulkConfigModel]
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingBulkPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingThresholdTotalAmountPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingThresholdTotalAmountPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param threshold_total_amount_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingTieredPackagePrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice::Cadence]
        required :cadence, enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackagePrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param tiered_package_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingGroupedTieredPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPrice::Cadence]
        #   # @param currency [String]
        #   # @param grouped_tiered_config [Hash{Symbol=>Object}]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingMaxGroupTieredPackagePrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingMaxGroupTieredPackagePrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param max_group_tiered_package_config [Hash{Symbol=>Object}]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingTieredWithMinimumPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithMinimumPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param tiered_with_minimum_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingPackageWithAllocationPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingPackageWithAllocationPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param package_with_allocation_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingTieredPackageWithMinimumPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingTieredPackageWithMinimumPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param tiered_package_with_minimum_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingUnitWithPercentPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithPercentPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param unit_with_percent_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingTieredWithProrationPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingTieredWithProrationPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param tiered_with_proration_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingUnitWithProrationPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingUnitWithProrationPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param unit_with_proration_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingGroupedAllocationPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedAllocationPrice::Cadence]
        #   # @param currency [String]
        #   # @param grouped_allocation_config [Hash{Symbol=>Object}]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingGroupedWithProratedMinimumPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithProratedMinimumPrice::Cadence]
        #   # @param currency [String]
        #   # @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingGroupedWithMeteredMinimumPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedWithMeteredMinimumPrice::Cadence]
        #   # @param currency [String]
        #   # @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingMatrixWithDisplayNamePrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingMatrixWithDisplayNamePrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param matrix_with_display_name_config [Hash{Symbol=>Object}]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
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
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param bulk_with_proration_config [Hash{Symbol=>Object}]
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingBulkWithProrationPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingGroupedTieredPackagePrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingGroupedTieredPackagePrice::Cadence]
        #   # @param currency [String]
        #   # @param grouped_tiered_package_config [Hash{Symbol=>Object}]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingScalableMatrixWithUnitPricingPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingScalableMatrixWithTieredPricingPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingScalableMatrixWithTieredPricingPrice::Cadence]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class NewFloatingCumulativeGroupedBulkPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice::Cadence }

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :billing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

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
        #   @return [Orb::Models::NewBillingCycleConfigurationModel, nil]
        optional :invoicing_cycle_configuration, -> { Orb::Models::NewBillingCycleConfigurationModel }, nil?: true

        # @!attribute metadata
        #   User-specified key/value pairs for the resource. Individual keys can be removed
        #     by setting the value to `null`, and the entire metadata mapping can be cleared
        #     by setting `metadata` to `null`.
        #
        #   @return [Hash{Symbol=>String, nil}, nil]
        optional :metadata, Orb::HashOf[String, nil?: true], nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewFloatingPriceModel::NewFloatingCumulativeGroupedBulkPrice::Cadence]
        #   # @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
        #   # @param currency [String]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
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

        # @abstract
        #
        # The cadence to bill for this price on.
        #
        # @example
        # ```ruby
        # case cadence
        # in :annual
        #   # ...
        # in :semi_annual
        #   # ...
        # in :monthly
        #   # ...
        # in :quarterly
        #   # ...
        # in :one_time
        #   # ...
        # in ...
        #   #...
        # end
        # ```
        class Cadence < Orb::Enum
          ANNUAL = :annual
          SEMI_ANNUAL = :semi_annual
          MONTHLY = :monthly
          QUARTERLY = :quarterly
          ONE_TIME = :one_time
          CUSTOM = :custom

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
