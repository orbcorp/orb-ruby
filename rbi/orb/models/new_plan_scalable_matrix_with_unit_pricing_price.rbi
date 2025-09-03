# typed: strong

module Orb
  module Models
    class NewPlanScalableMatrixWithUnitPricingPrice < Orb::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Orb::NewPlanScalableMatrixWithUnitPricingPrice,
            Orb::Internal::AnyHash
          )
        end

      # The cadence to bill for this price on.
      sig do
        returns(
          Orb::NewPlanScalableMatrixWithUnitPricingPrice::Cadence::OrSymbol
        )
      end
      attr_accessor :cadence

      # The id of the item the price will be associated with.
      sig { returns(String) }
      attr_accessor :item_id

      # The pricing model type
      sig do
        returns(
          Orb::NewPlanScalableMatrixWithUnitPricingPrice::ModelType::OrSymbol
        )
      end
      attr_accessor :model_type

      # The name of the price.
      sig { returns(String) }
      attr_accessor :name

      # Configuration for scalable_matrix_with_unit_pricing pricing
      sig do
        returns(
          Orb::NewPlanScalableMatrixWithUnitPricingPrice::ScalableMatrixWithUnitPricingConfig
        )
      end
      attr_reader :scalable_matrix_with_unit_pricing_config

      sig do
        params(
          scalable_matrix_with_unit_pricing_config:
            Orb::NewPlanScalableMatrixWithUnitPricingPrice::ScalableMatrixWithUnitPricingConfig::OrHash
        ).void
      end
      attr_writer :scalable_matrix_with_unit_pricing_config

      # The id of the billable metric for the price. Only needed if the price is
      # usage-based.
      sig { returns(T.nilable(String)) }
      attr_accessor :billable_metric_id

      # If the Price represents a fixed cost, the price will be billed in-advance if
      # this is true, and in-arrears if this is false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :billed_in_advance

      # For custom cadence: specifies the duration of the billing period in days or
      # months.
      sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
      attr_reader :billing_cycle_configuration

      sig do
        params(
          billing_cycle_configuration:
            T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
        ).void
      end
      attr_writer :billing_cycle_configuration

      # The per unit conversion rate of the price currency to the invoicing currency.
      sig { returns(T.nilable(Float)) }
      attr_accessor :conversion_rate

      # The configuration for the rate of the price currency to the invoicing currency.
      sig do
        returns(
          T.nilable(
            T.any(
              Orb::UnitConversionRateConfig,
              Orb::TieredConversionRateConfig
            )
          )
        )
      end
      attr_accessor :conversion_rate_config

      # An ISO 4217 currency string, or custom pricing unit identifier, in which this
      # price is billed.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency

      # For dimensional price: specifies a price group and dimension values
      sig { returns(T.nilable(Orb::NewDimensionalPriceConfiguration)) }
      attr_reader :dimensional_price_configuration

      sig do
        params(
          dimensional_price_configuration:
            T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash)
        ).void
      end
      attr_writer :dimensional_price_configuration

      # An alias for the price.
      sig { returns(T.nilable(String)) }
      attr_accessor :external_price_id

      # If the Price represents a fixed cost, this represents the quantity of units
      # applied.
      sig { returns(T.nilable(Float)) }
      attr_accessor :fixed_price_quantity

      # The property used to group this price on an invoice
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_grouping_key

      # Within each billing cycle, specifies the cadence at which invoices are produced.
      # If unspecified, a single invoice is produced per billing cycle.
      sig { returns(T.nilable(Orb::NewBillingCycleConfiguration)) }
      attr_reader :invoicing_cycle_configuration

      sig do
        params(
          invoicing_cycle_configuration:
            T.nilable(Orb::NewBillingCycleConfiguration::OrHash)
        ).void
      end
      attr_writer :invoicing_cycle_configuration

      # User-specified key/value pairs for the resource. Individual keys can be removed
      # by setting the value to `null`, and the entire metadata mapping can be cleared
      # by setting `metadata` to `null`.
      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      attr_accessor :metadata

      # A transient ID that can be used to reference this price when adding adjustments
      # in the same API call.
      sig { returns(T.nilable(String)) }
      attr_accessor :reference_id

      sig do
        params(
          cadence:
            Orb::NewPlanScalableMatrixWithUnitPricingPrice::Cadence::OrSymbol,
          item_id: String,
          model_type:
            Orb::NewPlanScalableMatrixWithUnitPricingPrice::ModelType::OrSymbol,
          name: String,
          scalable_matrix_with_unit_pricing_config:
            Orb::NewPlanScalableMatrixWithUnitPricingPrice::ScalableMatrixWithUnitPricingConfig::OrHash,
          billable_metric_id: T.nilable(String),
          billed_in_advance: T.nilable(T::Boolean),
          billing_cycle_configuration:
            T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
          conversion_rate: T.nilable(Float),
          conversion_rate_config:
            T.nilable(
              T.any(
                Orb::UnitConversionRateConfig::OrHash,
                Orb::TieredConversionRateConfig::OrHash
              )
            ),
          currency: T.nilable(String),
          dimensional_price_configuration:
            T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
          external_price_id: T.nilable(String),
          fixed_price_quantity: T.nilable(Float),
          invoice_grouping_key: T.nilable(String),
          invoicing_cycle_configuration:
            T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          reference_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The cadence to bill for this price on.
        cadence:,
        # The id of the item the price will be associated with.
        item_id:,
        # The pricing model type
        model_type:,
        # The name of the price.
        name:,
        # Configuration for scalable_matrix_with_unit_pricing pricing
        scalable_matrix_with_unit_pricing_config:,
        # The id of the billable metric for the price. Only needed if the price is
        # usage-based.
        billable_metric_id: nil,
        # If the Price represents a fixed cost, the price will be billed in-advance if
        # this is true, and in-arrears if this is false.
        billed_in_advance: nil,
        # For custom cadence: specifies the duration of the billing period in days or
        # months.
        billing_cycle_configuration: nil,
        # The per unit conversion rate of the price currency to the invoicing currency.
        conversion_rate: nil,
        # The configuration for the rate of the price currency to the invoicing currency.
        conversion_rate_config: nil,
        # An ISO 4217 currency string, or custom pricing unit identifier, in which this
        # price is billed.
        currency: nil,
        # For dimensional price: specifies a price group and dimension values
        dimensional_price_configuration: nil,
        # An alias for the price.
        external_price_id: nil,
        # If the Price represents a fixed cost, this represents the quantity of units
        # applied.
        fixed_price_quantity: nil,
        # The property used to group this price on an invoice
        invoice_grouping_key: nil,
        # Within each billing cycle, specifies the cadence at which invoices are produced.
        # If unspecified, a single invoice is produced per billing cycle.
        invoicing_cycle_configuration: nil,
        # User-specified key/value pairs for the resource. Individual keys can be removed
        # by setting the value to `null`, and the entire metadata mapping can be cleared
        # by setting `metadata` to `null`.
        metadata: nil,
        # A transient ID that can be used to reference this price when adding adjustments
        # in the same API call.
        reference_id: nil
      )
      end

      sig do
        override.returns(
          {
            cadence:
              Orb::NewPlanScalableMatrixWithUnitPricingPrice::Cadence::OrSymbol,
            item_id: String,
            model_type:
              Orb::NewPlanScalableMatrixWithUnitPricingPrice::ModelType::OrSymbol,
            name: String,
            scalable_matrix_with_unit_pricing_config:
              Orb::NewPlanScalableMatrixWithUnitPricingPrice::ScalableMatrixWithUnitPricingConfig,
            billable_metric_id: T.nilable(String),
            billed_in_advance: T.nilable(T::Boolean),
            billing_cycle_configuration:
              T.nilable(Orb::NewBillingCycleConfiguration),
            conversion_rate: T.nilable(Float),
            conversion_rate_config:
              T.nilable(
                T.any(
                  Orb::UnitConversionRateConfig,
                  Orb::TieredConversionRateConfig
                )
              ),
            currency: T.nilable(String),
            dimensional_price_configuration:
              T.nilable(Orb::NewDimensionalPriceConfiguration),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            invoice_grouping_key: T.nilable(String),
            invoicing_cycle_configuration:
              T.nilable(Orb::NewBillingCycleConfiguration),
            metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
            reference_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # The cadence to bill for this price on.
      module Cadence
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Orb::NewPlanScalableMatrixWithUnitPricingPrice::Cadence
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANNUAL =
          T.let(
            :annual,
            Orb::NewPlanScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
          )
        SEMI_ANNUAL =
          T.let(
            :semi_annual,
            Orb::NewPlanScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
          )
        MONTHLY =
          T.let(
            :monthly,
            Orb::NewPlanScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
          )
        QUARTERLY =
          T.let(
            :quarterly,
            Orb::NewPlanScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
          )
        ONE_TIME =
          T.let(
            :one_time,
            Orb::NewPlanScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
          )
        CUSTOM =
          T.let(
            :custom,
            Orb::NewPlanScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::NewPlanScalableMatrixWithUnitPricingPrice::Cadence::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The pricing model type
      module ModelType
        extend Orb::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Orb::NewPlanScalableMatrixWithUnitPricingPrice::ModelType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SCALABLE_MATRIX_WITH_UNIT_PRICING =
          T.let(
            :scalable_matrix_with_unit_pricing,
            Orb::NewPlanScalableMatrixWithUnitPricingPrice::ModelType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Orb::NewPlanScalableMatrixWithUnitPricingPrice::ModelType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class ScalableMatrixWithUnitPricingConfig < Orb::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Orb::NewPlanScalableMatrixWithUnitPricingPrice::ScalableMatrixWithUnitPricingConfig,
              Orb::Internal::AnyHash
            )
          end

        # Used to determine the unit rate
        sig { returns(String) }
        attr_accessor :first_dimension

        # Apply a scaling factor to each dimension
        sig do
          returns(
            T::Array[
              Orb::NewPlanScalableMatrixWithUnitPricingPrice::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor
            ]
          )
        end
        attr_accessor :matrix_scaling_factors

        # The final unit price to rate against the output of the matrix
        sig { returns(String) }
        attr_accessor :unit_price

        # If true, the unit price will be prorated to the billing period
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :prorate

        # Used to determine the unit rate (optional)
        sig { returns(T.nilable(String)) }
        attr_accessor :second_dimension

        # Configuration for scalable_matrix_with_unit_pricing pricing
        sig do
          params(
            first_dimension: String,
            matrix_scaling_factors:
              T::Array[
                Orb::NewPlanScalableMatrixWithUnitPricingPrice::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor::OrHash
              ],
            unit_price: String,
            prorate: T.nilable(T::Boolean),
            second_dimension: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Used to determine the unit rate
          first_dimension:,
          # Apply a scaling factor to each dimension
          matrix_scaling_factors:,
          # The final unit price to rate against the output of the matrix
          unit_price:,
          # If true, the unit price will be prorated to the billing period
          prorate: nil,
          # Used to determine the unit rate (optional)
          second_dimension: nil
        )
        end

        sig do
          override.returns(
            {
              first_dimension: String,
              matrix_scaling_factors:
                T::Array[
                  Orb::NewPlanScalableMatrixWithUnitPricingPrice::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor
                ],
              unit_price: String,
              prorate: T.nilable(T::Boolean),
              second_dimension: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class MatrixScalingFactor < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::NewPlanScalableMatrixWithUnitPricingPrice::ScalableMatrixWithUnitPricingConfig::MatrixScalingFactor,
                Orb::Internal::AnyHash
              )
            end

          # First dimension value
          sig { returns(String) }
          attr_accessor :first_dimension_value

          # Scaling factor
          sig { returns(String) }
          attr_accessor :scaling_factor

          # Second dimension value (optional)
          sig { returns(T.nilable(String)) }
          attr_accessor :second_dimension_value

          # Configuration for a single matrix scaling factor
          sig do
            params(
              first_dimension_value: String,
              scaling_factor: String,
              second_dimension_value: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # First dimension value
            first_dimension_value:,
            # Scaling factor
            scaling_factor:,
            # Second dimension value (optional)
            second_dimension_value: nil
          )
          end

          sig do
            override.returns(
              {
                first_dimension_value: String,
                scaling_factor: String,
                second_dimension_value: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
