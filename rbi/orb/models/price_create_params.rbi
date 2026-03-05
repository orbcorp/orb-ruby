# typed: strong

module Orb
  module Models
    class PriceCreateParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Orb::PriceCreateParams, Orb::Internal::AnyHash) }

      # New floating price request body params.
      sig do
        returns(
          T.any(
            Orb::NewFloatingUnitPrice,
            Orb::NewFloatingTieredPrice,
            Orb::NewFloatingBulkPrice,
            Orb::PriceCreateParams::Body::BulkWithFilters,
            Orb::NewFloatingPackagePrice,
            Orb::NewFloatingMatrixPrice,
            Orb::NewFloatingThresholdTotalAmountPrice,
            Orb::NewFloatingTieredPackagePrice,
            Orb::NewFloatingTieredWithMinimumPrice,
            Orb::NewFloatingGroupedTieredPrice,
            Orb::NewFloatingTieredPackageWithMinimumPrice,
            Orb::NewFloatingPackageWithAllocationPrice,
            Orb::NewFloatingUnitWithPercentPrice,
            Orb::NewFloatingMatrixWithAllocationPrice,
            Orb::NewFloatingTieredWithProrationPrice,
            Orb::NewFloatingUnitWithProrationPrice,
            Orb::NewFloatingGroupedAllocationPrice,
            Orb::NewFloatingBulkWithProrationPrice,
            Orb::NewFloatingGroupedWithProratedMinimumPrice,
            Orb::NewFloatingGroupedWithMeteredMinimumPrice,
            Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds,
            Orb::NewFloatingMatrixWithDisplayNamePrice,
            Orb::NewFloatingGroupedTieredPackagePrice,
            Orb::NewFloatingMaxGroupTieredPackagePrice,
            Orb::NewFloatingScalableMatrixWithUnitPricingPrice,
            Orb::NewFloatingScalableMatrixWithTieredPricingPrice,
            Orb::NewFloatingCumulativeGroupedBulkPrice,
            Orb::PriceCreateParams::Body::CumulativeGroupedAllocation,
            Orb::NewFloatingMinimumCompositePrice,
            Orb::PriceCreateParams::Body::Percent,
            Orb::PriceCreateParams::Body::EventOutput
          )
        )
      end
      attr_accessor :body

      sig do
        params(
          body:
            T.any(
              Orb::NewFloatingUnitPrice::OrHash,
              Orb::NewFloatingTieredPrice::OrHash,
              Orb::NewFloatingBulkPrice::OrHash,
              Orb::PriceCreateParams::Body::BulkWithFilters::OrHash,
              Orb::NewFloatingPackagePrice::OrHash,
              Orb::NewFloatingMatrixPrice::OrHash,
              Orb::NewFloatingThresholdTotalAmountPrice::OrHash,
              Orb::NewFloatingTieredPackagePrice::OrHash,
              Orb::NewFloatingTieredWithMinimumPrice::OrHash,
              Orb::NewFloatingGroupedTieredPrice::OrHash,
              Orb::NewFloatingTieredPackageWithMinimumPrice::OrHash,
              Orb::NewFloatingPackageWithAllocationPrice::OrHash,
              Orb::NewFloatingUnitWithPercentPrice::OrHash,
              Orb::NewFloatingMatrixWithAllocationPrice::OrHash,
              Orb::NewFloatingTieredWithProrationPrice::OrHash,
              Orb::NewFloatingUnitWithProrationPrice::OrHash,
              Orb::NewFloatingGroupedAllocationPrice::OrHash,
              Orb::NewFloatingBulkWithProrationPrice::OrHash,
              Orb::NewFloatingGroupedWithProratedMinimumPrice::OrHash,
              Orb::NewFloatingGroupedWithMeteredMinimumPrice::OrHash,
              Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::OrHash,
              Orb::NewFloatingMatrixWithDisplayNamePrice::OrHash,
              Orb::NewFloatingGroupedTieredPackagePrice::OrHash,
              Orb::NewFloatingMaxGroupTieredPackagePrice::OrHash,
              Orb::NewFloatingScalableMatrixWithUnitPricingPrice::OrHash,
              Orb::NewFloatingScalableMatrixWithTieredPricingPrice::OrHash,
              Orb::NewFloatingCumulativeGroupedBulkPrice::OrHash,
              Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::OrHash,
              Orb::NewFloatingMinimumCompositePrice::OrHash,
              Orb::PriceCreateParams::Body::Percent::OrHash,
              Orb::PriceCreateParams::Body::EventOutput::OrHash
            ),
          request_options: Orb::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # New floating price request body params.
        body:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            body:
              T.any(
                Orb::NewFloatingUnitPrice,
                Orb::NewFloatingTieredPrice,
                Orb::NewFloatingBulkPrice,
                Orb::PriceCreateParams::Body::BulkWithFilters,
                Orb::NewFloatingPackagePrice,
                Orb::NewFloatingMatrixPrice,
                Orb::NewFloatingThresholdTotalAmountPrice,
                Orb::NewFloatingTieredPackagePrice,
                Orb::NewFloatingTieredWithMinimumPrice,
                Orb::NewFloatingGroupedTieredPrice,
                Orb::NewFloatingTieredPackageWithMinimumPrice,
                Orb::NewFloatingPackageWithAllocationPrice,
                Orb::NewFloatingUnitWithPercentPrice,
                Orb::NewFloatingMatrixWithAllocationPrice,
                Orb::NewFloatingTieredWithProrationPrice,
                Orb::NewFloatingUnitWithProrationPrice,
                Orb::NewFloatingGroupedAllocationPrice,
                Orb::NewFloatingBulkWithProrationPrice,
                Orb::NewFloatingGroupedWithProratedMinimumPrice,
                Orb::NewFloatingGroupedWithMeteredMinimumPrice,
                Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds,
                Orb::NewFloatingMatrixWithDisplayNamePrice,
                Orb::NewFloatingGroupedTieredPackagePrice,
                Orb::NewFloatingMaxGroupTieredPackagePrice,
                Orb::NewFloatingScalableMatrixWithUnitPricingPrice,
                Orb::NewFloatingScalableMatrixWithTieredPricingPrice,
                Orb::NewFloatingCumulativeGroupedBulkPrice,
                Orb::PriceCreateParams::Body::CumulativeGroupedAllocation,
                Orb::NewFloatingMinimumCompositePrice,
                Orb::PriceCreateParams::Body::Percent,
                Orb::PriceCreateParams::Body::EventOutput
              ),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash
      end

      # New floating price request body params.
      module Body
        extend Orb::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Orb::NewFloatingUnitPrice,
              Orb::NewFloatingTieredPrice,
              Orb::NewFloatingBulkPrice,
              Orb::PriceCreateParams::Body::BulkWithFilters,
              Orb::NewFloatingPackagePrice,
              Orb::NewFloatingMatrixPrice,
              Orb::NewFloatingThresholdTotalAmountPrice,
              Orb::NewFloatingTieredPackagePrice,
              Orb::NewFloatingTieredWithMinimumPrice,
              Orb::NewFloatingGroupedTieredPrice,
              Orb::NewFloatingTieredPackageWithMinimumPrice,
              Orb::NewFloatingPackageWithAllocationPrice,
              Orb::NewFloatingUnitWithPercentPrice,
              Orb::NewFloatingMatrixWithAllocationPrice,
              Orb::NewFloatingTieredWithProrationPrice,
              Orb::NewFloatingUnitWithProrationPrice,
              Orb::NewFloatingGroupedAllocationPrice,
              Orb::NewFloatingBulkWithProrationPrice,
              Orb::NewFloatingGroupedWithProratedMinimumPrice,
              Orb::NewFloatingGroupedWithMeteredMinimumPrice,
              Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds,
              Orb::NewFloatingMatrixWithDisplayNamePrice,
              Orb::NewFloatingGroupedTieredPackagePrice,
              Orb::NewFloatingMaxGroupTieredPackagePrice,
              Orb::NewFloatingScalableMatrixWithUnitPricingPrice,
              Orb::NewFloatingScalableMatrixWithTieredPricingPrice,
              Orb::NewFloatingCumulativeGroupedBulkPrice,
              Orb::PriceCreateParams::Body::CumulativeGroupedAllocation,
              Orb::NewFloatingMinimumCompositePrice,
              Orb::PriceCreateParams::Body::Percent,
              Orb::PriceCreateParams::Body::EventOutput
            )
          end

        class BulkWithFilters < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::Body::BulkWithFilters,
                Orb::Internal::AnyHash
              )
            end

          # Configuration for bulk_with_filters pricing
          sig do
            returns(
              Orb::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig
            )
          end
          attr_reader :bulk_with_filters_config

          sig do
            params(
              bulk_with_filters_config:
                Orb::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig::OrHash
            ).void
          end
          attr_writer :bulk_with_filters_config

          # The cadence to bill for this price on.
          sig do
            returns(
              Orb::PriceCreateParams::Body::BulkWithFilters::Cadence::OrSymbol
            )
          end
          attr_accessor :cadence

          # An ISO 4217 currency string for which this price is billed in.
          sig { returns(String) }
          attr_accessor :currency

          # The id of the item the price will be associated with.
          sig { returns(String) }
          attr_accessor :item_id

          # The pricing model type
          sig { returns(Symbol) }
          attr_accessor :model_type

          # The name of the price.
          sig { returns(String) }
          attr_accessor :name

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

          # The ID of the license type to associate with this price.
          sig { returns(T.nilable(String)) }
          attr_accessor :license_type_id

          # User-specified key/value pairs for the resource. Individual keys can be removed
          # by setting the value to `null`, and the entire metadata mapping can be cleared
          # by setting `metadata` to `null`.
          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              bulk_with_filters_config:
                Orb::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig::OrHash,
              cadence:
                Orb::PriceCreateParams::Body::BulkWithFilters::Cadence::OrSymbol,
              currency: String,
              item_id: String,
              name: String,
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
              dimensional_price_configuration:
                T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration:
                T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
              license_type_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Configuration for bulk_with_filters pricing
            bulk_with_filters_config:,
            # The cadence to bill for this price on.
            cadence:,
            # An ISO 4217 currency string for which this price is billed in.
            currency:,
            # The id of the item the price will be associated with.
            item_id:,
            # The name of the price.
            name:,
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
            # The ID of the license type to associate with this price.
            license_type_id: nil,
            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            metadata: nil,
            # The pricing model type
            model_type: :bulk_with_filters
          )
          end

          sig do
            override.returns(
              {
                bulk_with_filters_config:
                  Orb::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig,
                cadence:
                  Orb::PriceCreateParams::Body::BulkWithFilters::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                model_type: Symbol,
                name: String,
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
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration),
                license_type_id: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
              }
            )
          end
          def to_hash
          end

          class BulkWithFiltersConfig < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig,
                  Orb::Internal::AnyHash
                )
              end

            # Property filters to apply (all must match)
            sig do
              returns(
                T::Array[
                  Orb::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig::Filter
                ]
              )
            end
            attr_accessor :filters

            # Bulk tiers for rating based on total usage volume
            sig do
              returns(
                T::Array[
                  Orb::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig::Tier
                ]
              )
            end
            attr_accessor :tiers

            # Configuration for bulk_with_filters pricing
            sig do
              params(
                filters:
                  T::Array[
                    Orb::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig::Filter::OrHash
                  ],
                tiers:
                  T::Array[
                    Orb::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig::Tier::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(
              # Property filters to apply (all must match)
              filters:,
              # Bulk tiers for rating based on total usage volume
              tiers:
            )
            end

            sig do
              override.returns(
                {
                  filters:
                    T::Array[
                      Orb::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig::Filter
                    ],
                  tiers:
                    T::Array[
                      Orb::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig::Tier
                    ]
                }
              )
            end
            def to_hash
            end

            class Filter < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig::Filter,
                    Orb::Internal::AnyHash
                  )
                end

              # Event property key to filter on
              sig { returns(String) }
              attr_accessor :property_key

              # Event property value to match
              sig { returns(String) }
              attr_accessor :property_value

              # Configuration for a single property filter
              sig do
                params(property_key: String, property_value: String).returns(
                  T.attached_class
                )
              end
              def self.new(
                # Event property key to filter on
                property_key:,
                # Event property value to match
                property_value:
              )
              end

              sig do
                override.returns(
                  { property_key: String, property_value: String }
                )
              end
              def to_hash
              end
            end

            class Tier < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::PriceCreateParams::Body::BulkWithFilters::BulkWithFiltersConfig::Tier,
                    Orb::Internal::AnyHash
                  )
                end

              # Amount per unit
              sig { returns(String) }
              attr_accessor :unit_amount

              # The lower bound for this tier
              sig { returns(T.nilable(String)) }
              attr_accessor :tier_lower_bound

              # Configuration for a single bulk pricing tier
              sig do
                params(
                  unit_amount: String,
                  tier_lower_bound: T.nilable(String)
                ).returns(T.attached_class)
              end
              def self.new(
                # Amount per unit
                unit_amount:,
                # The lower bound for this tier
                tier_lower_bound: nil
              )
              end

              sig do
                override.returns(
                  { unit_amount: String, tier_lower_bound: T.nilable(String) }
                )
              end
              def to_hash
              end
            end
          end

          # The cadence to bill for this price on.
          module Cadence
            extend Orb::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Orb::PriceCreateParams::Body::BulkWithFilters::Cadence
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ANNUAL =
              T.let(
                :annual,
                Orb::PriceCreateParams::Body::BulkWithFilters::Cadence::TaggedSymbol
              )
            SEMI_ANNUAL =
              T.let(
                :semi_annual,
                Orb::PriceCreateParams::Body::BulkWithFilters::Cadence::TaggedSymbol
              )
            MONTHLY =
              T.let(
                :monthly,
                Orb::PriceCreateParams::Body::BulkWithFilters::Cadence::TaggedSymbol
              )
            QUARTERLY =
              T.let(
                :quarterly,
                Orb::PriceCreateParams::Body::BulkWithFilters::Cadence::TaggedSymbol
              )
            ONE_TIME =
              T.let(
                :one_time,
                Orb::PriceCreateParams::Body::BulkWithFilters::Cadence::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                Orb::PriceCreateParams::Body::BulkWithFilters::Cadence::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::PriceCreateParams::Body::BulkWithFilters::Cadence::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds,
                Orb::Internal::AnyHash
              )
            end

          # The cadence to bill for this price on.
          sig do
            returns(
              Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::Cadence::OrSymbol
            )
          end
          attr_accessor :cadence

          # An ISO 4217 currency string for which this price is billed in.
          sig { returns(String) }
          attr_accessor :currency

          # Configuration for grouped_with_min_max_thresholds pricing
          sig do
            returns(
              Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig
            )
          end
          attr_reader :grouped_with_min_max_thresholds_config

          sig do
            params(
              grouped_with_min_max_thresholds_config:
                Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig::OrHash
            ).void
          end
          attr_writer :grouped_with_min_max_thresholds_config

          # The id of the item the price will be associated with.
          sig { returns(String) }
          attr_accessor :item_id

          # The pricing model type
          sig { returns(Symbol) }
          attr_accessor :model_type

          # The name of the price.
          sig { returns(String) }
          attr_accessor :name

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

          # The ID of the license type to associate with this price.
          sig { returns(T.nilable(String)) }
          attr_accessor :license_type_id

          # User-specified key/value pairs for the resource. Individual keys can be removed
          # by setting the value to `null`, and the entire metadata mapping can be cleared
          # by setting `metadata` to `null`.
          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence:
                Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
              currency: String,
              grouped_with_min_max_thresholds_config:
                Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig::OrHash,
              item_id: String,
              name: String,
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
              dimensional_price_configuration:
                T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration:
                T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
              license_type_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The cadence to bill for this price on.
            cadence:,
            # An ISO 4217 currency string for which this price is billed in.
            currency:,
            # Configuration for grouped_with_min_max_thresholds pricing
            grouped_with_min_max_thresholds_config:,
            # The id of the item the price will be associated with.
            item_id:,
            # The name of the price.
            name:,
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
            # The ID of the license type to associate with this price.
            license_type_id: nil,
            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            metadata: nil,
            # The pricing model type
            model_type: :grouped_with_min_max_thresholds
          )
          end

          sig do
            override.returns(
              {
                cadence:
                  Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
                currency: String,
                grouped_with_min_max_thresholds_config:
                  Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig,
                item_id: String,
                model_type: Symbol,
                name: String,
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
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration),
                license_type_id: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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
                  Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::Cadence
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ANNUAL =
              T.let(
                :annual,
                Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
              )
            SEMI_ANNUAL =
              T.let(
                :semi_annual,
                Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
              )
            MONTHLY =
              T.let(
                :monthly,
                Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
              )
            QUARTERLY =
              T.let(
                :quarterly,
                Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
              )
            ONE_TIME =
              T.let(
                :one_time,
                Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class GroupedWithMinMaxThresholdsConfig < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceCreateParams::Body::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig,
                  Orb::Internal::AnyHash
                )
              end

            # The event property used to group before applying thresholds
            sig { returns(String) }
            attr_accessor :grouping_key

            # The maximum amount to charge each group
            sig { returns(String) }
            attr_accessor :maximum_charge

            # The minimum amount to charge each group, regardless of usage
            sig { returns(String) }
            attr_accessor :minimum_charge

            # The base price charged per group
            sig { returns(String) }
            attr_accessor :per_unit_rate

            # Configuration for grouped_with_min_max_thresholds pricing
            sig do
              params(
                grouping_key: String,
                maximum_charge: String,
                minimum_charge: String,
                per_unit_rate: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The event property used to group before applying thresholds
              grouping_key:,
              # The maximum amount to charge each group
              maximum_charge:,
              # The minimum amount to charge each group, regardless of usage
              minimum_charge:,
              # The base price charged per group
              per_unit_rate:
            )
            end

            sig do
              override.returns(
                {
                  grouping_key: String,
                  maximum_charge: String,
                  minimum_charge: String,
                  per_unit_rate: String
                }
              )
            end
            def to_hash
            end
          end
        end

        class CumulativeGroupedAllocation < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::Body::CumulativeGroupedAllocation,
                Orb::Internal::AnyHash
              )
            end

          # The cadence to bill for this price on.
          sig do
            returns(
              Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::Cadence::OrSymbol
            )
          end
          attr_accessor :cadence

          # Configuration for cumulative_grouped_allocation pricing
          sig do
            returns(
              Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig
            )
          end
          attr_reader :cumulative_grouped_allocation_config

          sig do
            params(
              cumulative_grouped_allocation_config:
                Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig::OrHash
            ).void
          end
          attr_writer :cumulative_grouped_allocation_config

          # An ISO 4217 currency string for which this price is billed in.
          sig { returns(String) }
          attr_accessor :currency

          # The id of the item the price will be associated with.
          sig { returns(String) }
          attr_accessor :item_id

          # The pricing model type
          sig { returns(Symbol) }
          attr_accessor :model_type

          # The name of the price.
          sig { returns(String) }
          attr_accessor :name

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

          # The ID of the license type to associate with this price.
          sig { returns(T.nilable(String)) }
          attr_accessor :license_type_id

          # User-specified key/value pairs for the resource. Individual keys can be removed
          # by setting the value to `null`, and the entire metadata mapping can be cleared
          # by setting `metadata` to `null`.
          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence:
                Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::Cadence::OrSymbol,
              cumulative_grouped_allocation_config:
                Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig::OrHash,
              currency: String,
              item_id: String,
              name: String,
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
              dimensional_price_configuration:
                T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration:
                T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
              license_type_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The cadence to bill for this price on.
            cadence:,
            # Configuration for cumulative_grouped_allocation pricing
            cumulative_grouped_allocation_config:,
            # An ISO 4217 currency string for which this price is billed in.
            currency:,
            # The id of the item the price will be associated with.
            item_id:,
            # The name of the price.
            name:,
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
            # The ID of the license type to associate with this price.
            license_type_id: nil,
            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            metadata: nil,
            # The pricing model type
            model_type: :cumulative_grouped_allocation
          )
          end

          sig do
            override.returns(
              {
                cadence:
                  Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::Cadence::OrSymbol,
                cumulative_grouped_allocation_config:
                  Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig,
                currency: String,
                item_id: String,
                model_type: Symbol,
                name: String,
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
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration),
                license_type_id: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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
                  Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::Cadence
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ANNUAL =
              T.let(
                :annual,
                Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::Cadence::TaggedSymbol
              )
            SEMI_ANNUAL =
              T.let(
                :semi_annual,
                Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::Cadence::TaggedSymbol
              )
            MONTHLY =
              T.let(
                :monthly,
                Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::Cadence::TaggedSymbol
              )
            QUARTERLY =
              T.let(
                :quarterly,
                Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::Cadence::TaggedSymbol
              )
            ONE_TIME =
              T.let(
                :one_time,
                Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::Cadence::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::Cadence::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::Cadence::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class CumulativeGroupedAllocationConfig < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceCreateParams::Body::CumulativeGroupedAllocation::CumulativeGroupedAllocationConfig,
                  Orb::Internal::AnyHash
                )
              end

            # The overall allocation across all groups
            sig { returns(String) }
            attr_accessor :cumulative_allocation

            # The allocation per individual group
            sig { returns(String) }
            attr_accessor :group_allocation

            # The event property used to group usage before applying allocations
            sig { returns(String) }
            attr_accessor :grouping_key

            # The amount to charge for each unit outside of the allocation
            sig { returns(String) }
            attr_accessor :unit_amount

            # Configuration for cumulative_grouped_allocation pricing
            sig do
              params(
                cumulative_allocation: String,
                group_allocation: String,
                grouping_key: String,
                unit_amount: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The overall allocation across all groups
              cumulative_allocation:,
              # The allocation per individual group
              group_allocation:,
              # The event property used to group usage before applying allocations
              grouping_key:,
              # The amount to charge for each unit outside of the allocation
              unit_amount:
            )
            end

            sig do
              override.returns(
                {
                  cumulative_allocation: String,
                  group_allocation: String,
                  grouping_key: String,
                  unit_amount: String
                }
              )
            end
            def to_hash
            end
          end
        end

        class Percent < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::Body::Percent,
                Orb::Internal::AnyHash
              )
            end

          # The cadence to bill for this price on.
          sig do
            returns(Orb::PriceCreateParams::Body::Percent::Cadence::OrSymbol)
          end
          attr_accessor :cadence

          # An ISO 4217 currency string for which this price is billed in.
          sig { returns(String) }
          attr_accessor :currency

          # The id of the item the price will be associated with.
          sig { returns(String) }
          attr_accessor :item_id

          # The pricing model type
          sig { returns(Symbol) }
          attr_accessor :model_type

          # The name of the price.
          sig { returns(String) }
          attr_accessor :name

          # Configuration for percent pricing
          sig { returns(Orb::PriceCreateParams::Body::Percent::PercentConfig) }
          attr_reader :percent_config

          sig do
            params(
              percent_config:
                Orb::PriceCreateParams::Body::Percent::PercentConfig::OrHash
            ).void
          end
          attr_writer :percent_config

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

          # The ID of the license type to associate with this price.
          sig { returns(T.nilable(String)) }
          attr_accessor :license_type_id

          # User-specified key/value pairs for the resource. Individual keys can be removed
          # by setting the value to `null`, and the entire metadata mapping can be cleared
          # by setting `metadata` to `null`.
          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence: Orb::PriceCreateParams::Body::Percent::Cadence::OrSymbol,
              currency: String,
              item_id: String,
              name: String,
              percent_config:
                Orb::PriceCreateParams::Body::Percent::PercentConfig::OrHash,
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
              dimensional_price_configuration:
                T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration:
                T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
              license_type_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The cadence to bill for this price on.
            cadence:,
            # An ISO 4217 currency string for which this price is billed in.
            currency:,
            # The id of the item the price will be associated with.
            item_id:,
            # The name of the price.
            name:,
            # Configuration for percent pricing
            percent_config:,
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
            # The ID of the license type to associate with this price.
            license_type_id: nil,
            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            metadata: nil,
            # The pricing model type
            model_type: :percent
          )
          end

          sig do
            override.returns(
              {
                cadence:
                  Orb::PriceCreateParams::Body::Percent::Cadence::OrSymbol,
                currency: String,
                item_id: String,
                model_type: Symbol,
                name: String,
                percent_config:
                  Orb::PriceCreateParams::Body::Percent::PercentConfig,
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
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration),
                license_type_id: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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
                T.all(Symbol, Orb::PriceCreateParams::Body::Percent::Cadence)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ANNUAL =
              T.let(
                :annual,
                Orb::PriceCreateParams::Body::Percent::Cadence::TaggedSymbol
              )
            SEMI_ANNUAL =
              T.let(
                :semi_annual,
                Orb::PriceCreateParams::Body::Percent::Cadence::TaggedSymbol
              )
            MONTHLY =
              T.let(
                :monthly,
                Orb::PriceCreateParams::Body::Percent::Cadence::TaggedSymbol
              )
            QUARTERLY =
              T.let(
                :quarterly,
                Orb::PriceCreateParams::Body::Percent::Cadence::TaggedSymbol
              )
            ONE_TIME =
              T.let(
                :one_time,
                Orb::PriceCreateParams::Body::Percent::Cadence::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                Orb::PriceCreateParams::Body::Percent::Cadence::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::PriceCreateParams::Body::Percent::Cadence::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class PercentConfig < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceCreateParams::Body::Percent::PercentConfig,
                  Orb::Internal::AnyHash
                )
              end

            # What percent of the component subtotals to charge
            sig { returns(Float) }
            attr_accessor :percent

            # Configuration for percent pricing
            sig { params(percent: Float).returns(T.attached_class) }
            def self.new(
              # What percent of the component subtotals to charge
              percent:
            )
            end

            sig { override.returns({ percent: Float }) }
            def to_hash
            end
          end
        end

        class EventOutput < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::PriceCreateParams::Body::EventOutput,
                Orb::Internal::AnyHash
              )
            end

          # The cadence to bill for this price on.
          sig do
            returns(
              Orb::PriceCreateParams::Body::EventOutput::Cadence::OrSymbol
            )
          end
          attr_accessor :cadence

          # An ISO 4217 currency string for which this price is billed in.
          sig { returns(String) }
          attr_accessor :currency

          # Configuration for event_output pricing
          sig do
            returns(
              Orb::PriceCreateParams::Body::EventOutput::EventOutputConfig
            )
          end
          attr_reader :event_output_config

          sig do
            params(
              event_output_config:
                Orb::PriceCreateParams::Body::EventOutput::EventOutputConfig::OrHash
            ).void
          end
          attr_writer :event_output_config

          # The id of the item the price will be associated with.
          sig { returns(String) }
          attr_accessor :item_id

          # The pricing model type
          sig { returns(Symbol) }
          attr_accessor :model_type

          # The name of the price.
          sig { returns(String) }
          attr_accessor :name

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

          # The ID of the license type to associate with this price.
          sig { returns(T.nilable(String)) }
          attr_accessor :license_type_id

          # User-specified key/value pairs for the resource. Individual keys can be removed
          # by setting the value to `null`, and the entire metadata mapping can be cleared
          # by setting `metadata` to `null`.
          sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
          attr_accessor :metadata

          sig do
            params(
              cadence:
                Orb::PriceCreateParams::Body::EventOutput::Cadence::OrSymbol,
              currency: String,
              event_output_config:
                Orb::PriceCreateParams::Body::EventOutput::EventOutputConfig::OrHash,
              item_id: String,
              name: String,
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
              dimensional_price_configuration:
                T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              invoice_grouping_key: T.nilable(String),
              invoicing_cycle_configuration:
                T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
              license_type_id: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              model_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The cadence to bill for this price on.
            cadence:,
            # An ISO 4217 currency string for which this price is billed in.
            currency:,
            # Configuration for event_output pricing
            event_output_config:,
            # The id of the item the price will be associated with.
            item_id:,
            # The name of the price.
            name:,
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
            # The ID of the license type to associate with this price.
            license_type_id: nil,
            # User-specified key/value pairs for the resource. Individual keys can be removed
            # by setting the value to `null`, and the entire metadata mapping can be cleared
            # by setting `metadata` to `null`.
            metadata: nil,
            # The pricing model type
            model_type: :event_output
          )
          end

          sig do
            override.returns(
              {
                cadence:
                  Orb::PriceCreateParams::Body::EventOutput::Cadence::OrSymbol,
                currency: String,
                event_output_config:
                  Orb::PriceCreateParams::Body::EventOutput::EventOutputConfig,
                item_id: String,
                model_type: Symbol,
                name: String,
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
                dimensional_price_configuration:
                  T.nilable(Orb::NewDimensionalPriceConfiguration),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration:
                  T.nilable(Orb::NewBillingCycleConfiguration),
                license_type_id: T.nilable(String),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)])
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
                  Orb::PriceCreateParams::Body::EventOutput::Cadence
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ANNUAL =
              T.let(
                :annual,
                Orb::PriceCreateParams::Body::EventOutput::Cadence::TaggedSymbol
              )
            SEMI_ANNUAL =
              T.let(
                :semi_annual,
                Orb::PriceCreateParams::Body::EventOutput::Cadence::TaggedSymbol
              )
            MONTHLY =
              T.let(
                :monthly,
                Orb::PriceCreateParams::Body::EventOutput::Cadence::TaggedSymbol
              )
            QUARTERLY =
              T.let(
                :quarterly,
                Orb::PriceCreateParams::Body::EventOutput::Cadence::TaggedSymbol
              )
            ONE_TIME =
              T.let(
                :one_time,
                Orb::PriceCreateParams::Body::EventOutput::Cadence::TaggedSymbol
              )
            CUSTOM =
              T.let(
                :custom,
                Orb::PriceCreateParams::Body::EventOutput::Cadence::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Orb::PriceCreateParams::Body::EventOutput::Cadence::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class EventOutputConfig < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::PriceCreateParams::Body::EventOutput::EventOutputConfig,
                  Orb::Internal::AnyHash
                )
              end

            # The key in the event data to extract the unit rate from.
            sig { returns(String) }
            attr_accessor :unit_rating_key

            # If provided, this amount will be used as the unit rate when an event does not
            # have a value for the `unit_rating_key`. If not provided, events missing a unit
            # rate will be ignored.
            sig { returns(T.nilable(String)) }
            attr_accessor :default_unit_rate

            # An optional key in the event data to group by (e.g., event ID). All events will
            # also be grouped by their unit rate.
            sig { returns(T.nilable(String)) }
            attr_accessor :grouping_key

            # Configuration for event_output pricing
            sig do
              params(
                unit_rating_key: String,
                default_unit_rate: T.nilable(String),
                grouping_key: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # The key in the event data to extract the unit rate from.
              unit_rating_key:,
              # If provided, this amount will be used as the unit rate when an event does not
              # have a value for the `unit_rating_key`. If not provided, events missing a unit
              # rate will be ignored.
              default_unit_rate: nil,
              # An optional key in the event data to group by (e.g., event ID). All events will
              # also be grouped by their unit rate.
              grouping_key: nil
            )
            end

            sig do
              override.returns(
                {
                  unit_rating_key: String,
                  default_unit_rate: T.nilable(String),
                  grouping_key: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end
        end

        sig do
          override.returns(T::Array[Orb::PriceCreateParams::Body::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
