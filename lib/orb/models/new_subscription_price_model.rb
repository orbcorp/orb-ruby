# frozen_string_literal: true

module Orb
  module Models
    # @abstract
    #
    # @example
    # ```ruby
    # case new_subscription_price_model
    # in {
    #   model_type: "unit",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitPrice::Cadence,
    #   item_id: String,
    #   name: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitPrice ...
    # in {
    #   model_type: "package",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackagePrice::Cadence,
    #   item_id: String,
    #   name: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackagePrice ...
    # in {
    #   model_type: "matrix",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixPrice::Cadence,
    #   item_id: String,
    #   matrix_config: Orb::Models::MatrixConfigModel
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixPrice ...
    # in {
    #   model_type: "tiered",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPrice::Cadence,
    #   item_id: String,
    #   name: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPrice ...
    # in {
    #   model_type: "tiered_bps",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredBpsPrice::Cadence,
    #   item_id: String,
    #   name: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredBpsPrice ...
    # in {
    #   model_type: "bps",
    #   bps_config: Orb::Models::BpsConfigModel,
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBpsPrice::Cadence,
    #   item_id: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBpsPrice ...
    # in {
    #   model_type: "bulk_bps",
    #   bulk_bps_config: Orb::Models::BulkBpsConfigModel,
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkBpsPrice::Cadence,
    #   item_id: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkBpsPrice ...
    # in {
    #   model_type: "bulk",
    #   bulk_config: Orb::Models::BulkConfigModel,
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkPrice::Cadence,
    #   item_id: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkPrice ...
    # in {
    #   model_type: "threshold_total_amount",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionThresholdTotalAmountPrice::Cadence,
    #   item_id: String,
    #   name: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionThresholdTotalAmountPrice ...
    # in {
    #   model_type: "tiered_package",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPackagePrice::Cadence,
    #   item_id: String,
    #   name: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPackagePrice ...
    # in {
    #   model_type: "tiered_with_minimum",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredWithMinimumPrice::Cadence,
    #   item_id: String,
    #   name: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredWithMinimumPrice ...
    # in {
    #   model_type: "unit_with_percent",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithPercentPrice::Cadence,
    #   item_id: String,
    #   name: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithPercentPrice ...
    # in {
    #   model_type: "package_with_allocation",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackageWithAllocationPrice::Cadence,
    #   item_id: String,
    #   name: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackageWithAllocationPrice ...
    # in {
    #   model_type: "tiered_with_proration",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTierWithProrationPrice::Cadence,
    #   item_id: String,
    #   name: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTierWithProrationPrice ...
    # in {
    #   model_type: "unit_with_proration",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithProrationPrice::Cadence,
    #   item_id: String,
    #   name: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithProrationPrice ...
    # in {
    #   model_type: "grouped_allocation",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedAllocationPrice::Cadence,
    #   grouped_allocation_config: ^(Orb::HashOf[Orb::Unknown]),
    #   item_id: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedAllocationPrice ...
    # in {
    #   model_type: "grouped_with_prorated_minimum",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence,
    #   grouped_with_prorated_minimum_config: ^(Orb::HashOf[Orb::Unknown]),
    #   item_id: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithProratedMinimumPrice ...
    # in {
    #   model_type: "bulk_with_proration",
    #   bulk_with_proration_config: ^(Orb::HashOf[Orb::Unknown]),
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkWithProrationPrice::Cadence,
    #   item_id: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkWithProrationPrice ...
    # in {
    #   model_type: "scalable_matrix_with_unit_pricing",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence,
    #   item_id: String,
    #   name: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithUnitPricingPrice ...
    # in {
    #   model_type: "scalable_matrix_with_tiered_pricing",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence,
    #   item_id: String,
    #   name: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithTieredPricingPrice ...
    # in {
    #   model_type: "cumulative_grouped_bulk",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionCumulativeGroupedBulkPrice::Cadence,
    #   cumulative_grouped_bulk_config: ^(Orb::HashOf[Orb::Unknown]),
    #   item_id: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionCumulativeGroupedBulkPrice ...
    # in {
    #   model_type: "max_group_tiered_package",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMaxGroupTieredPackagePrice::Cadence,
    #   item_id: String,
    #   max_group_tiered_package_config: ^(Orb::HashOf[Orb::Unknown])
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMaxGroupTieredPackagePrice ...
    # in {
    #   model_type: "grouped_with_metered_minimum",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence,
    #   grouped_with_metered_minimum_config: ^(Orb::HashOf[Orb::Unknown]),
    #   item_id: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithMeteredMinimumPrice ...
    # in {
    #   model_type: "matrix_with_display_name",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixWithDisplayNamePrice::Cadence,
    #   item_id: String,
    #   matrix_with_display_name_config: ^(Orb::HashOf[Orb::Unknown])
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixWithDisplayNamePrice ...
    # in {
    #   model_type: "grouped_tiered_package",
    #   cadence: Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedTieredPackagePrice::Cadence,
    #   grouped_tiered_package_config: ^(Orb::HashOf[Orb::Unknown]),
    #   item_id: String
    # }
    #   # Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedTieredPackagePrice ...
    # end
    # ```
    #
    # @example
    # ```ruby
    # case new_subscription_price_model
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackagePrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredBpsPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBpsPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkBpsPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionThresholdTotalAmountPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPackagePrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredWithMinimumPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithPercentPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackageWithAllocationPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTierWithProrationPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithProrationPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedAllocationPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithProratedMinimumPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkWithProrationPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithUnitPricingPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithTieredPricingPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionCumulativeGroupedBulkPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMaxGroupTieredPackagePrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithMeteredMinimumPrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixWithDisplayNamePrice
    #   # ...
    # in Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedTieredPackagePrice
    #   # ...
    # end
    # ```
    class NewSubscriptionPriceModel < Orb::Union
      discriminator :model_type

      variant :unit, -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitPrice }

      variant :package, -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackagePrice }

      variant :matrix, -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixPrice }

      variant :tiered, -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPrice }

      variant :tiered_bps, -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredBpsPrice }

      variant :bps, -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBpsPrice }

      variant :bulk_bps, -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkBpsPrice }

      variant :bulk, -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkPrice }

      variant :threshold_total_amount,
              -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionThresholdTotalAmountPrice }

      variant :tiered_package, -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPackagePrice }

      variant :tiered_with_minimum,
              -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredWithMinimumPrice }

      variant :unit_with_percent,
              -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithPercentPrice }

      variant :package_with_allocation,
              -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackageWithAllocationPrice }

      variant :tiered_with_proration,
              -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTierWithProrationPrice }

      variant :unit_with_proration,
              -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithProrationPrice }

      variant :grouped_allocation,
              -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedAllocationPrice }

      variant :grouped_with_prorated_minimum,
              -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithProratedMinimumPrice }

      variant :bulk_with_proration,
              -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkWithProrationPrice }

      variant :scalable_matrix_with_unit_pricing,
              -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithUnitPricingPrice }

      variant :scalable_matrix_with_tiered_pricing,
              -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithTieredPricingPrice }

      variant :cumulative_grouped_bulk,
              -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionCumulativeGroupedBulkPrice }

      variant :max_group_tiered_package,
              -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMaxGroupTieredPackagePrice }

      variant :grouped_with_metered_minimum,
              -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithMeteredMinimumPrice }

      variant :matrix_with_display_name,
              -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixWithDisplayNamePrice }

      variant :grouped_tiered_package,
              -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedTieredPackagePrice }

      class NewSubscriptionUnitPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitPrice::Cadence]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param unit_config [Orb::Models::UnitConfigModel]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :unit]
        #   #
        #   def initialize(
        #     cadence:,
        #     item_id:,
        #     name:,
        #     unit_config:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionPackagePrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackagePrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackagePrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackagePrice::Cadence]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param package_config [Orb::Models::PackageConfigModel]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :package]
        #   #
        #   def initialize(
        #     cadence:,
        #     item_id:,
        #     name:,
        #     package_config:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionMatrixPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixPrice::Cadence]
        #   # @param item_id [String]
        #   # @param matrix_config [Orb::Models::MatrixConfigModel]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :matrix]
        #   #
        #   def initialize(
        #     cadence:,
        #     item_id:,
        #     matrix_config:,
        #     name:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionTieredPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPrice::Cadence]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param tiered_config [Orb::Models::TieredConfigModel]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :tiered]
        #   #
        #   def initialize(
        #     cadence:,
        #     item_id:,
        #     name:,
        #     tiered_config:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionTieredBpsPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredBpsPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredBpsPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredBpsPrice::Cadence]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param tiered_bps_config [Orb::Models::TieredBpsConfigModel]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :tiered_bps]
        #   #
        #   def initialize(
        #     cadence:,
        #     item_id:,
        #     name:,
        #     tiered_bps_config:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionBpsPrice < Orb::BaseModel
        # @!attribute bps_config
        #
        #   @return [Orb::Models::BpsConfigModel]
        required :bps_config, -> { Orb::Models::BpsConfigModel }

        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBpsPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBpsPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param bps_config [Orb::Models::BpsConfigModel]
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBpsPrice::Cadence]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :bps]
        #   #
        #   def initialize(
        #     bps_config:,
        #     cadence:,
        #     item_id:,
        #     name:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionBulkBpsPrice < Orb::BaseModel
        # @!attribute bulk_bps_config
        #
        #   @return [Orb::Models::BulkBpsConfigModel]
        required :bulk_bps_config, -> { Orb::Models::BulkBpsConfigModel }

        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkBpsPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkBpsPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param bulk_bps_config [Orb::Models::BulkBpsConfigModel]
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkBpsPrice::Cadence]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :bulk_bps]
        #   #
        #   def initialize(
        #     bulk_bps_config:,
        #     cadence:,
        #     item_id:,
        #     name:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionBulkPrice < Orb::BaseModel
        # @!attribute bulk_config
        #
        #   @return [Orb::Models::BulkConfigModel]
        required :bulk_config, -> { Orb::Models::BulkConfigModel }

        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkPrice::Cadence]
        required :cadence, enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param bulk_config [Orb::Models::BulkConfigModel]
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkPrice::Cadence]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :bulk]
        #   #
        #   def initialize(
        #     bulk_config:,
        #     cadence:,
        #     item_id:,
        #     name:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionThresholdTotalAmountPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionThresholdTotalAmountPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionThresholdTotalAmountPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionThresholdTotalAmountPrice::Cadence]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param threshold_total_amount_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :threshold_total_amount]
        #   #
        #   def initialize(
        #     cadence:,
        #     item_id:,
        #     name:,
        #     threshold_total_amount_config:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionTieredPackagePrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPackagePrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPackagePrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredPackagePrice::Cadence]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param tiered_package_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :tiered_package]
        #   #
        #   def initialize(
        #     cadence:,
        #     item_id:,
        #     name:,
        #     tiered_package_config:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionTieredWithMinimumPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredWithMinimumPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredWithMinimumPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTieredWithMinimumPrice::Cadence]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param tiered_with_minimum_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :tiered_with_minimum]
        #   #
        #   def initialize(
        #     cadence:,
        #     item_id:,
        #     name:,
        #     tiered_with_minimum_config:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionUnitWithPercentPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithPercentPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithPercentPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithPercentPrice::Cadence]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param unit_with_percent_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :unit_with_percent]
        #   #
        #   def initialize(
        #     cadence:,
        #     item_id:,
        #     name:,
        #     unit_with_percent_config:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionPackageWithAllocationPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackageWithAllocationPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackageWithAllocationPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionPackageWithAllocationPrice::Cadence]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param package_with_allocation_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :package_with_allocation]
        #   #
        #   def initialize(
        #     cadence:,
        #     item_id:,
        #     name:,
        #     package_with_allocation_config:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionTierWithProrationPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTierWithProrationPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTierWithProrationPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionTierWithProrationPrice::Cadence]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param tiered_with_proration_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :tiered_with_proration]
        #   #
        #   def initialize(
        #     cadence:,
        #     item_id:,
        #     name:,
        #     tiered_with_proration_config:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionUnitWithProrationPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithProrationPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithProrationPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionUnitWithProrationPrice::Cadence]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param unit_with_proration_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :unit_with_proration]
        #   #
        #   def initialize(
        #     cadence:,
        #     item_id:,
        #     name:,
        #     unit_with_proration_config:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionGroupedAllocationPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedAllocationPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedAllocationPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedAllocationPrice::Cadence]
        #   # @param grouped_allocation_config [Hash{Symbol=>Object}]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :grouped_allocation]
        #   #
        #   def initialize(
        #     cadence:,
        #     grouped_allocation_config:,
        #     item_id:,
        #     name:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionGroupedWithProratedMinimumPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithProratedMinimumPrice::Cadence]
        #   # @param grouped_with_prorated_minimum_config [Hash{Symbol=>Object}]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :grouped_with_prorated_minimum]
        #   #
        #   def initialize(
        #     cadence:,
        #     grouped_with_prorated_minimum_config:,
        #     item_id:,
        #     name:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionBulkWithProrationPrice < Orb::BaseModel
        # @!attribute bulk_with_proration_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :bulk_with_proration_config, Orb::HashOf[Orb::Unknown]

        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkWithProrationPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkWithProrationPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param bulk_with_proration_config [Hash{Symbol=>Object}]
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionBulkWithProrationPrice::Cadence]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :bulk_with_proration]
        #   #
        #   def initialize(
        #     bulk_with_proration_config:,
        #     cadence:,
        #     item_id:,
        #     name:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionScalableMatrixWithUnitPricingPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithUnitPricingPrice::Cadence]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param scalable_matrix_with_unit_pricing_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :scalable_matrix_with_unit_pricing]
        #   #
        #   def initialize(
        #     cadence:,
        #     item_id:,
        #     name:,
        #     scalable_matrix_with_unit_pricing_config:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionScalableMatrixWithTieredPricingPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionScalableMatrixWithTieredPricingPrice::Cadence]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param scalable_matrix_with_tiered_pricing_config [Hash{Symbol=>Object}]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :scalable_matrix_with_tiered_pricing]
        #   #
        #   def initialize(
        #     cadence:,
        #     item_id:,
        #     name:,
        #     scalable_matrix_with_tiered_pricing_config:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionCumulativeGroupedBulkPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionCumulativeGroupedBulkPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionCumulativeGroupedBulkPrice::Cadence }

        # @!attribute cumulative_grouped_bulk_config
        #
        #   @return [Hash{Symbol=>Object}]
        required :cumulative_grouped_bulk_config, Orb::HashOf[Orb::Unknown]

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionCumulativeGroupedBulkPrice::Cadence]
        #   # @param cumulative_grouped_bulk_config [Hash{Symbol=>Object}]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :cumulative_grouped_bulk]
        #   #
        #   def initialize(
        #     cadence:,
        #     cumulative_grouped_bulk_config:,
        #     item_id:,
        #     name:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionMaxGroupTieredPackagePrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMaxGroupTieredPackagePrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMaxGroupTieredPackagePrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMaxGroupTieredPackagePrice::Cadence]
        #   # @param item_id [String]
        #   # @param max_group_tiered_package_config [Hash{Symbol=>Object}]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :max_group_tiered_package]
        #   #
        #   def initialize(
        #     cadence:,
        #     item_id:,
        #     max_group_tiered_package_config:,
        #     name:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionGroupedWithMeteredMinimumPrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedWithMeteredMinimumPrice::Cadence]
        #   # @param grouped_with_metered_minimum_config [Hash{Symbol=>Object}]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :grouped_with_metered_minimum]
        #   #
        #   def initialize(
        #     cadence:,
        #     grouped_with_metered_minimum_config:,
        #     item_id:,
        #     name:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionMatrixWithDisplayNamePrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixWithDisplayNamePrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixWithDisplayNamePrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionMatrixWithDisplayNamePrice::Cadence]
        #   # @param item_id [String]
        #   # @param matrix_with_display_name_config [Hash{Symbol=>Object}]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :matrix_with_display_name]
        #   #
        #   def initialize(
        #     cadence:,
        #     item_id:,
        #     matrix_with_display_name_config:,
        #     name:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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

      class NewSubscriptionGroupedTieredPackagePrice < Orb::BaseModel
        # @!attribute cadence
        #   The cadence to bill for this price on.
        #
        #   @return [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedTieredPackagePrice::Cadence]
        required :cadence,
                 enum: -> { Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedTieredPackagePrice::Cadence }

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

        # @!attribute currency
        #   An ISO 4217 currency string, or custom pricing unit identifier, in which this
        #     price is billed.
        #
        #   @return [String, nil]
        optional :currency, String, nil?: true

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

        # @!attribute reference_id
        #   A transient ID that can be used to reference this price when adding adjustments
        #     in the same API call.
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!parse
        #   # @param cadence [Symbol, Orb::Models::NewSubscriptionPriceModel::NewSubscriptionGroupedTieredPackagePrice::Cadence]
        #   # @param grouped_tiered_package_config [Hash{Symbol=>Object}]
        #   # @param item_id [String]
        #   # @param name [String]
        #   # @param billable_metric_id [String, nil]
        #   # @param billed_in_advance [Boolean, nil]
        #   # @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param conversion_rate [Float, nil]
        #   # @param currency [String, nil]
        #   # @param external_price_id [String, nil]
        #   # @param fixed_price_quantity [Float, nil]
        #   # @param invoice_grouping_key [String, nil]
        #   # @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfigurationModel, nil]
        #   # @param metadata [Hash{Symbol=>String, nil}, nil]
        #   # @param reference_id [String, nil]
        #   # @param model_type [Symbol, :grouped_tiered_package]
        #   #
        #   def initialize(
        #     cadence:,
        #     grouped_tiered_package_config:,
        #     item_id:,
        #     name:,
        #     billable_metric_id: nil,
        #     billed_in_advance: nil,
        #     billing_cycle_configuration: nil,
        #     conversion_rate: nil,
        #     currency: nil,
        #     external_price_id: nil,
        #     fixed_price_quantity: nil,
        #     invoice_grouping_key: nil,
        #     invoicing_cycle_configuration: nil,
        #     metadata: nil,
        #     reference_id: nil,
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
    end
  end
end
