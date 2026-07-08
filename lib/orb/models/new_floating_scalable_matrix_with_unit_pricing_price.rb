# frozen_string_literal: true

module Orb
  module Models
    class NewFloatingScalableMatrixWithUnitPricingPrice < Orb::Internal::Type::BaseModel
      # @!attribute cadence
      #   The cadence to bill for this price on.
      #
      #   @return [Symbol, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence]
      required :cadence, enum: -> { Orb::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence }

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
      #   The pricing model type
      #
      #   @return [Symbol, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice::ModelType]
      required :model_type, enum: -> { Orb::NewFloatingScalableMatrixWithUnitPricingPrice::ModelType }

      # @!attribute name
      #   The name of the price.
      #
      #   @return [String]
      required :name, String

      # @!attribute scalable_matrix_with_unit_pricing_config
      #   Configuration for scalable_matrix_with_unit_pricing pricing
      #
      #   @return [Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice::ScalableMatrixWithUnitPricingConfig]
      required :scalable_matrix_with_unit_pricing_config,
               -> { Orb::NewFloatingScalableMatrixWithUnitPricingPrice::ScalableMatrixWithUnitPricingConfig }

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
      #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
      optional :billing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

      # @!attribute conversion_rate
      #   The per unit conversion rate of the price currency to the invoicing currency.
      #
      #   @return [Float, nil]
      optional :conversion_rate, Float, nil?: true

      # @!attribute conversion_rate_config
      #   The configuration for the rate of the price currency to the invoicing currency.
      #
      #   @return [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil]
      optional :conversion_rate_config, union: -> { Orb::ConversionRateConfig }, nil?: true

      # @!attribute dimensional_price_configuration
      #   For dimensional price: specifies a price group and dimension values
      #
      #   @return [Orb::Models::NewDimensionalPriceConfiguration, nil]
      optional :dimensional_price_configuration, -> { Orb::NewDimensionalPriceConfiguration }, nil?: true

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
      #   @return [Orb::Models::NewBillingCycleConfiguration, nil]
      optional :invoicing_cycle_configuration, -> { Orb::NewBillingCycleConfiguration }, nil?: true

      # @!attribute license_type_id
      #   The ID of the license type to associate with this price.
      #
      #   @return [String, nil]
      optional :license_type_id, String, nil?: true

      # @!attribute metadata
      #   User-specified key/value pairs for the resource. Individual keys can be removed
      #   by setting the value to `null`, and the entire metadata mapping can be cleared
      #   by setting `metadata` to `null`.
      #
      #   @return [Hash{Symbol=>String, nil}, nil]
      optional :metadata, Orb::Internal::Type::HashOf[String, nil?: true], nil?: true

      # @!method initialize(cadence:, currency:, item_id:, model_type:, name:, scalable_matrix_with_unit_pricing_config:, billable_metric_id: nil, billed_in_advance: nil, billing_cycle_configuration: nil, conversion_rate: nil, conversion_rate_config: nil, dimensional_price_configuration: nil, external_price_id: nil, fixed_price_quantity: nil, invoice_grouping_key: nil, invoicing_cycle_configuration: nil, license_type_id: nil, metadata: nil)
      #   Some parameter documentations has been truncated, see
      #   {Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice} for more details.
      #
      #   @param cadence [Symbol, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice::Cadence] The cadence to bill for this price on.
      #
      #   @param currency [String] An ISO 4217 currency string for which this price is billed in.
      #
      #   @param item_id [String] The id of the item the price will be associated with.
      #
      #   @param model_type [Symbol, Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice::ModelType] The pricing model type
      #
      #   @param name [String] The name of the price.
      #
      #   @param scalable_matrix_with_unit_pricing_config [Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice::ScalableMatrixWithUnitPricingConfig] Configuration for scalable_matrix_with_unit_pricing pricing
      #
      #   @param billable_metric_id [String, nil] The id of the billable metric for the price. Only needed if the price is usage-b
      #
      #   @param billed_in_advance [Boolean, nil] If the Price represents a fixed cost, the price will be billed in-advance if thi
      #
      #   @param billing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] For custom cadence: specifies the duration of the billing period in days or mont
      #
      #   @param conversion_rate [Float, nil] The per unit conversion rate of the price currency to the invoicing currency.
      #
      #   @param conversion_rate_config [Orb::Models::UnitConversionRateConfig, Orb::Models::TieredConversionRateConfig, nil] The configuration for the rate of the price currency to the invoicing currency.
      #
      #   @param dimensional_price_configuration [Orb::Models::NewDimensionalPriceConfiguration, nil] For dimensional price: specifies a price group and dimension values
      #
      #   @param external_price_id [String, nil] An alias for the price.
      #
      #   @param fixed_price_quantity [Float, nil] If the Price represents a fixed cost, this represents the quantity of units appl
      #
      #   @param invoice_grouping_key [String, nil] The property used to group this price on an invoice
      #
      #   @param invoicing_cycle_configuration [Orb::Models::NewBillingCycleConfiguration, nil] Within each billing cycle, specifies the cadence at which invoices are produced.
      #
      #   @param license_type_id [String, nil] The ID of the license type to associate with this price.
      #
      #   @param metadata [Hash{Symbol=>String, nil}, nil] User-specified key/value pairs for the resource. Individual keys can be removed

      # The cadence to bill for this price on.
      #
      # @see Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice#cadence
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

      # The pricing model type
      #
      # @see Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice#model_type
      module ModelType
        extend Orb::Internal::Type::Enum

        SCALABLE_MATRIX_WITH_UNIT_PRICING = :scalable_matrix_with_unit_pricing

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice#scalable_matrix_with_unit_pricing_config
      class ScalableMatrixWithUnitPricingConfig < Orb::Internal::Type::BaseModel
        # @!attribute first_dimension
        #   Used to determine the unit rate
        #
        #   @return [String]
        required :first_dimension, String

        # @!attribute matrix_scaling_factors
        #   Apply a scaling factor to each dimension
        #
        #   @return [Array<Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor>]
        required :matrix_scaling_factors,
                 -> do
                   Orb::Internal::Type::ArrayOf[
                     Orb::NewFloatingScalableMatrixWithUnitPricingPrice::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor
                   ]
                 end

        # @!attribute unit_price
        #   The final unit price to rate against the output of the matrix
        #
        #   @return [String]
        required :unit_price, String

        # @!attribute grouping_key
        #   The property used to group this price
        #
        #   @return [String, nil]
        optional :grouping_key, String, nil?: true

        # @!attribute prorate
        #   If true, the unit price will be prorated to the billing period
        #
        #   @return [Boolean, nil]
        optional :prorate, Orb::Internal::Type::Boolean, nil?: true

        # @!attribute second_dimension
        #   Used to determine the unit rate (optional)
        #
        #   @return [String, nil]
        optional :second_dimension, String, nil?: true

        # @!method initialize(first_dimension:, matrix_scaling_factors:, unit_price:, grouping_key: nil, prorate: nil, second_dimension: nil)
        #   Configuration for scalable_matrix_with_unit_pricing pricing
        #
        #   @param first_dimension [String] Used to determine the unit rate
        #
        #   @param matrix_scaling_factors [Array<Orb::Models::NewFloatingScalableMatrixWithUnitPricingPrice::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor>] Apply a scaling factor to each dimension
        #
        #   @param unit_price [String] The final unit price to rate against the output of the matrix
        #
        #   @param grouping_key [String, nil] The property used to group this price
        #
        #   @param prorate [Boolean, nil] If true, the unit price will be prorated to the billing period
        #
        #   @param second_dimension [String, nil] Used to determine the unit rate (optional)

        class MatrixScalingFactor < Orb::Internal::Type::BaseModel
          # @!attribute first_dimension_value
          #
          #   @return [String]
          required :first_dimension_value, String

          # @!attribute scaling_factor
          #
          #   @return [String]
          required :scaling_factor, String

          # @!attribute second_dimension_value
          #
          #   @return [String, nil]
          optional :second_dimension_value, String, nil?: true

          # @!method initialize(first_dimension_value:, scaling_factor:, second_dimension_value: nil)
          #   Configuration for a single matrix scaling factor
          #
          #   @param first_dimension_value [String]
          #   @param scaling_factor [String]
          #   @param second_dimension_value [String, nil]
        end
      end
    end
  end
end
