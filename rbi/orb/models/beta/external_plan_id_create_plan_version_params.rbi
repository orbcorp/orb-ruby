# typed: strong

module Orb
  module Models
    module Beta
      class ExternalPlanIDCreatePlanVersionParams < Orb::Internal::Type::BaseModel
        extend Orb::Internal::Type::RequestParameters::Converter
        include Orb::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Orb::Beta::ExternalPlanIDCreatePlanVersionParams,
              Orb::Internal::AnyHash
            )
          end

        # New version number.
        sig { returns(Integer) }
        attr_accessor :version

        # Additional adjustments to be added to the plan.
        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddAdjustment
              ]
            )
          )
        end
        attr_accessor :add_adjustments

        # Additional prices to be added to the plan.
        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice
              ]
            )
          )
        end
        attr_accessor :add_prices

        # Adjustments to be removed from the plan.
        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::Beta::ExternalPlanIDCreatePlanVersionParams::RemoveAdjustment
              ]
            )
          )
        end
        attr_accessor :remove_adjustments

        # Prices to be removed from the plan.
        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::Beta::ExternalPlanIDCreatePlanVersionParams::RemovePrice
              ]
            )
          )
        end
        attr_accessor :remove_prices

        # Adjustments to be replaced with additional adjustments on the plan.
        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplaceAdjustment
              ]
            )
          )
        end
        attr_accessor :replace_adjustments

        # Prices to be replaced with additional prices on the plan.
        sig do
          returns(
            T.nilable(
              T::Array[
                Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice
              ]
            )
          )
        end
        attr_accessor :replace_prices

        # Set this new plan version as the default
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :set_as_default

        sig do
          params(
            version: Integer,
            add_adjustments:
              T.nilable(
                T::Array[
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddAdjustment::OrHash
                ]
              ),
            add_prices:
              T.nilable(
                T::Array[
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::OrHash
                ]
              ),
            remove_adjustments:
              T.nilable(
                T::Array[
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::RemoveAdjustment::OrHash
                ]
              ),
            remove_prices:
              T.nilable(
                T::Array[
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::RemovePrice::OrHash
                ]
              ),
            replace_adjustments:
              T.nilable(
                T::Array[
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplaceAdjustment::OrHash
                ]
              ),
            replace_prices:
              T.nilable(
                T::Array[
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::OrHash
                ]
              ),
            set_as_default: T.nilable(T::Boolean),
            request_options: Orb::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # New version number.
          version:,
          # Additional adjustments to be added to the plan.
          add_adjustments: nil,
          # Additional prices to be added to the plan.
          add_prices: nil,
          # Adjustments to be removed from the plan.
          remove_adjustments: nil,
          # Prices to be removed from the plan.
          remove_prices: nil,
          # Adjustments to be replaced with additional adjustments on the plan.
          replace_adjustments: nil,
          # Prices to be replaced with additional prices on the plan.
          replace_prices: nil,
          # Set this new plan version as the default
          set_as_default: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              version: Integer,
              add_adjustments:
                T.nilable(
                  T::Array[
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddAdjustment
                  ]
                ),
              add_prices:
                T.nilable(
                  T::Array[
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice
                  ]
                ),
              remove_adjustments:
                T.nilable(
                  T::Array[
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::RemoveAdjustment
                  ]
                ),
              remove_prices:
                T.nilable(
                  T::Array[
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::RemovePrice
                  ]
                ),
              replace_adjustments:
                T.nilable(
                  T::Array[
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplaceAdjustment
                  ]
                ),
              replace_prices:
                T.nilable(
                  T::Array[
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice
                  ]
                ),
              set_as_default: T.nilable(T::Boolean),
              request_options: Orb::RequestOptions
            }
          )
        end
        def to_hash
        end

        class AddAdjustment < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddAdjustment,
                Orb::Internal::AnyHash
              )
            end

          # The definition of a new adjustment to create and add to the plan.
          sig do
            returns(
              T.any(
                Orb::NewPercentageDiscount,
                Orb::NewUsageDiscount,
                Orb::NewAmountDiscount,
                Orb::NewMinimum,
                Orb::NewMaximum
              )
            )
          end
          attr_accessor :adjustment

          # The phase to add this adjustment to.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          sig do
            params(
              adjustment:
                T.any(
                  Orb::NewPercentageDiscount::OrHash,
                  Orb::NewUsageDiscount::OrHash,
                  Orb::NewAmountDiscount::OrHash,
                  Orb::NewMinimum::OrHash,
                  Orb::NewMaximum::OrHash
                ),
              plan_phase_order: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            # The definition of a new adjustment to create and add to the plan.
            adjustment:,
            # The phase to add this adjustment to.
            plan_phase_order: nil
          )
          end

          sig do
            override.returns(
              {
                adjustment:
                  T.any(
                    Orb::NewPercentageDiscount,
                    Orb::NewUsageDiscount,
                    Orb::NewAmountDiscount,
                    Orb::NewMinimum,
                    Orb::NewMaximum
                  ),
                plan_phase_order: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end

          # The definition of a new adjustment to create and add to the plan.
          module Adjustment
            extend Orb::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Orb::NewPercentageDiscount,
                  Orb::NewUsageDiscount,
                  Orb::NewAmountDiscount,
                  Orb::NewMinimum,
                  Orb::NewMaximum
                )
              end

            sig do
              override.returns(
                T::Array[
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddAdjustment::Adjustment::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end

        class AddPrice < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice,
                Orb::Internal::AnyHash
              )
            end

          # The allocation price to add to the plan.
          sig { returns(T.nilable(Orb::NewAllocationPrice)) }
          attr_reader :allocation_price

          sig do
            params(
              allocation_price: T.nilable(Orb::NewAllocationPrice::OrHash)
            ).void
          end
          attr_writer :allocation_price

          # The phase to add this price to.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          # New plan price request body params.
          sig do
            returns(
              T.nilable(
                T.any(
                  Orb::NewPlanUnitPrice,
                  Orb::NewPlanTieredPrice,
                  Orb::NewPlanBulkPrice,
                  Orb::NewPlanPackagePrice,
                  Orb::NewPlanMatrixPrice,
                  Orb::NewPlanThresholdTotalAmountPrice,
                  Orb::NewPlanTieredPackagePrice,
                  Orb::NewPlanTieredWithMinimumPrice,
                  Orb::NewPlanGroupedTieredPrice,
                  Orb::NewPlanTieredPackageWithMinimumPrice,
                  Orb::NewPlanPackageWithAllocationPrice,
                  Orb::NewPlanUnitWithPercentPrice,
                  Orb::NewPlanMatrixWithAllocationPrice,
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration,
                  Orb::NewPlanUnitWithProrationPrice,
                  Orb::NewPlanGroupedAllocationPrice,
                  Orb::NewPlanBulkWithProrationPrice,
                  Orb::NewPlanGroupedWithProratedMinimumPrice,
                  Orb::NewPlanGroupedWithMeteredMinimumPrice,
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds,
                  Orb::NewPlanMatrixWithDisplayNamePrice,
                  Orb::NewPlanGroupedTieredPackagePrice,
                  Orb::NewPlanMaxGroupTieredPackagePrice,
                  Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                  Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                  Orb::NewPlanCumulativeGroupedBulkPrice,
                  Orb::NewPlanMinimumCompositePrice,
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput
                )
              )
            )
          end
          attr_accessor :price

          sig do
            params(
              allocation_price: T.nilable(Orb::NewAllocationPrice::OrHash),
              plan_phase_order: T.nilable(Integer),
              price:
                T.nilable(
                  T.any(
                    Orb::NewPlanUnitPrice::OrHash,
                    Orb::NewPlanTieredPrice::OrHash,
                    Orb::NewPlanBulkPrice::OrHash,
                    Orb::NewPlanPackagePrice::OrHash,
                    Orb::NewPlanMatrixPrice::OrHash,
                    Orb::NewPlanThresholdTotalAmountPrice::OrHash,
                    Orb::NewPlanTieredPackagePrice::OrHash,
                    Orb::NewPlanTieredWithMinimumPrice::OrHash,
                    Orb::NewPlanGroupedTieredPrice::OrHash,
                    Orb::NewPlanTieredPackageWithMinimumPrice::OrHash,
                    Orb::NewPlanPackageWithAllocationPrice::OrHash,
                    Orb::NewPlanUnitWithPercentPrice::OrHash,
                    Orb::NewPlanMatrixWithAllocationPrice::OrHash,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::OrHash,
                    Orb::NewPlanUnitWithProrationPrice::OrHash,
                    Orb::NewPlanGroupedAllocationPrice::OrHash,
                    Orb::NewPlanBulkWithProrationPrice::OrHash,
                    Orb::NewPlanGroupedWithProratedMinimumPrice::OrHash,
                    Orb::NewPlanGroupedWithMeteredMinimumPrice::OrHash,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::OrHash,
                    Orb::NewPlanMatrixWithDisplayNamePrice::OrHash,
                    Orb::NewPlanGroupedTieredPackagePrice::OrHash,
                    Orb::NewPlanMaxGroupTieredPackagePrice::OrHash,
                    Orb::NewPlanScalableMatrixWithUnitPricingPrice::OrHash,
                    Orb::NewPlanScalableMatrixWithTieredPricingPrice::OrHash,
                    Orb::NewPlanCumulativeGroupedBulkPrice::OrHash,
                    Orb::NewPlanMinimumCompositePrice::OrHash,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput::OrHash
                  )
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # The allocation price to add to the plan.
            allocation_price: nil,
            # The phase to add this price to.
            plan_phase_order: nil,
            # New plan price request body params.
            price: nil
          )
          end

          sig do
            override.returns(
              {
                allocation_price: T.nilable(Orb::NewAllocationPrice),
                plan_phase_order: T.nilable(Integer),
                price:
                  T.nilable(
                    T.any(
                      Orb::NewPlanUnitPrice,
                      Orb::NewPlanTieredPrice,
                      Orb::NewPlanBulkPrice,
                      Orb::NewPlanPackagePrice,
                      Orb::NewPlanMatrixPrice,
                      Orb::NewPlanThresholdTotalAmountPrice,
                      Orb::NewPlanTieredPackagePrice,
                      Orb::NewPlanTieredWithMinimumPrice,
                      Orb::NewPlanGroupedTieredPrice,
                      Orb::NewPlanTieredPackageWithMinimumPrice,
                      Orb::NewPlanPackageWithAllocationPrice,
                      Orb::NewPlanUnitWithPercentPrice,
                      Orb::NewPlanMatrixWithAllocationPrice,
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration,
                      Orb::NewPlanUnitWithProrationPrice,
                      Orb::NewPlanGroupedAllocationPrice,
                      Orb::NewPlanBulkWithProrationPrice,
                      Orb::NewPlanGroupedWithProratedMinimumPrice,
                      Orb::NewPlanGroupedWithMeteredMinimumPrice,
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds,
                      Orb::NewPlanMatrixWithDisplayNamePrice,
                      Orb::NewPlanGroupedTieredPackagePrice,
                      Orb::NewPlanMaxGroupTieredPackagePrice,
                      Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                      Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                      Orb::NewPlanCumulativeGroupedBulkPrice,
                      Orb::NewPlanMinimumCompositePrice,
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput
                    )
                  )
              }
            )
          end
          def to_hash
          end

          # New plan price request body params.
          module Price
            extend Orb::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Orb::NewPlanUnitPrice,
                  Orb::NewPlanTieredPrice,
                  Orb::NewPlanBulkPrice,
                  Orb::NewPlanPackagePrice,
                  Orb::NewPlanMatrixPrice,
                  Orb::NewPlanThresholdTotalAmountPrice,
                  Orb::NewPlanTieredPackagePrice,
                  Orb::NewPlanTieredWithMinimumPrice,
                  Orb::NewPlanGroupedTieredPrice,
                  Orb::NewPlanTieredPackageWithMinimumPrice,
                  Orb::NewPlanPackageWithAllocationPrice,
                  Orb::NewPlanUnitWithPercentPrice,
                  Orb::NewPlanMatrixWithAllocationPrice,
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration,
                  Orb::NewPlanUnitWithProrationPrice,
                  Orb::NewPlanGroupedAllocationPrice,
                  Orb::NewPlanBulkWithProrationPrice,
                  Orb::NewPlanGroupedWithProratedMinimumPrice,
                  Orb::NewPlanGroupedWithMeteredMinimumPrice,
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds,
                  Orb::NewPlanMatrixWithDisplayNamePrice,
                  Orb::NewPlanGroupedTieredPackagePrice,
                  Orb::NewPlanMaxGroupTieredPackagePrice,
                  Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                  Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                  Orb::NewPlanCumulativeGroupedBulkPrice,
                  Orb::NewPlanMinimumCompositePrice,
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput
                )
              end

            class TieredWithProration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration,
                    Orb::Internal::AnyHash
                  )
                end

              # The cadence to bill for this price on.
              sig do
                returns(
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::Cadence::OrSymbol
                )
              end
              attr_accessor :cadence

              # The id of the item the price will be associated with.
              sig { returns(String) }
              attr_accessor :item_id

              # The pricing model type
              sig { returns(Symbol) }
              attr_accessor :model_type

              # The name of the price.
              sig { returns(String) }
              attr_accessor :name

              # Configuration for tiered_with_proration pricing
              sig do
                returns(
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig
                )
              end
              attr_reader :tiered_with_proration_config

              sig do
                params(
                  tiered_with_proration_config:
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig::OrHash
                ).void
              end
              attr_writer :tiered_with_proration_config

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
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::Cadence::OrSymbol,
                  item_id: String,
                  name: String,
                  tiered_with_proration_config:
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig::OrHash,
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
                  reference_id: T.nilable(String),
                  model_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The cadence to bill for this price on.
                cadence:,
                # The id of the item the price will be associated with.
                item_id:,
                # The name of the price.
                name:,
                # Configuration for tiered_with_proration pricing
                tiered_with_proration_config:,
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
                reference_id: nil,
                # The pricing model type
                model_type: :tiered_with_proration
              )
              end

              sig do
                override.returns(
                  {
                    cadence:
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_proration_config:
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig,
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
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::Cadence
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ANNUAL =
                  T.let(
                    :annual,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                  )
                SEMI_ANNUAL =
                  T.let(
                    :semi_annual,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                  )
                MONTHLY =
                  T.let(
                    :monthly,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :quarterly,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                  )
                ONE_TIME =
                  T.let(
                    :one_time,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                  )
                CUSTOM =
                  T.let(
                    :custom,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::Cadence::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class TieredWithProrationConfig < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig,
                      Orb::Internal::AnyHash
                    )
                  end

                # Tiers for rating based on total usage quantities into the specified tier with
                # proration
                sig do
                  returns(
                    T::Array[
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig::Tier
                    ]
                  )
                end
                attr_accessor :tiers

                # Configuration for tiered_with_proration pricing
                sig do
                  params(
                    tiers:
                      T::Array[
                        Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig::Tier::OrHash
                      ]
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Tiers for rating based on total usage quantities into the specified tier with
                  # proration
                  tiers:
                )
                end

                sig do
                  override.returns(
                    {
                      tiers:
                        T::Array[
                          Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig::Tier
                        ]
                    }
                  )
                end
                def to_hash
                end

                class Tier < Orb::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::TieredWithProration::TieredWithProrationConfig::Tier,
                        Orb::Internal::AnyHash
                      )
                    end

                  # Inclusive tier starting value
                  sig { returns(String) }
                  attr_accessor :tier_lower_bound

                  # Amount per unit
                  sig { returns(String) }
                  attr_accessor :unit_amount

                  # Configuration for a single tiered with proration tier
                  sig do
                    params(
                      tier_lower_bound: String,
                      unit_amount: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Inclusive tier starting value
                    tier_lower_bound:,
                    # Amount per unit
                    unit_amount:
                  )
                  end

                  sig do
                    override.returns(
                      { tier_lower_bound: String, unit_amount: String }
                    )
                  end
                  def to_hash
                  end
                end
              end
            end

            class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds,
                    Orb::Internal::AnyHash
                  )
                end

              # The cadence to bill for this price on.
              sig do
                returns(
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol
                )
              end
              attr_accessor :cadence

              # Configuration for grouped_with_min_max_thresholds pricing
              sig do
                returns(
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig
                )
              end
              attr_reader :grouped_with_min_max_thresholds_config

              sig do
                params(
                  grouped_with_min_max_thresholds_config:
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig::OrHash
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
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
                  grouped_with_min_max_thresholds_config:
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig::OrHash,
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
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String),
                  model_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The cadence to bill for this price on.
                cadence:,
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
                reference_id: nil,
                # The pricing model type
                model_type: :grouped_with_min_max_thresholds
              )
              end

              sig do
                override.returns(
                  {
                    cadence:
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
                    grouped_with_min_max_thresholds_config:
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig,
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
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ANNUAL =
                  T.let(
                    :annual,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                  )
                SEMI_ANNUAL =
                  T.let(
                    :semi_annual,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                  )
                MONTHLY =
                  T.let(
                    :monthly,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :quarterly,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                  )
                ONE_TIME =
                  T.let(
                    :one_time,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                  )
                CUSTOM =
                  T.let(
                    :custom,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
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
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig,
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

            class EventOutput < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput,
                    Orb::Internal::AnyHash
                  )
                end

              # The cadence to bill for this price on.
              sig do
                returns(
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput::Cadence::OrSymbol
                )
              end
              attr_accessor :cadence

              # Configuration for event_output pricing
              sig do
                returns(
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput::EventOutputConfig
                )
              end
              attr_reader :event_output_config

              sig do
                params(
                  event_output_config:
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput::EventOutputConfig::OrHash
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
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput::Cadence::OrSymbol,
                  event_output_config:
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput::EventOutputConfig::OrHash,
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
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String),
                  model_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The cadence to bill for this price on.
                cadence:,
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
                reference_id: nil,
                # The pricing model type
                model_type: :event_output
              )
              end

              sig do
                override.returns(
                  {
                    cadence:
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput::Cadence::OrSymbol,
                    event_output_config:
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput::EventOutputConfig,
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
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput::Cadence
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ANNUAL =
                  T.let(
                    :annual,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput::Cadence::TaggedSymbol
                  )
                SEMI_ANNUAL =
                  T.let(
                    :semi_annual,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput::Cadence::TaggedSymbol
                  )
                MONTHLY =
                  T.let(
                    :monthly,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput::Cadence::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :quarterly,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput::Cadence::TaggedSymbol
                  )
                ONE_TIME =
                  T.let(
                    :one_time,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput::Cadence::TaggedSymbol
                  )
                CUSTOM =
                  T.let(
                    :custom,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput::Cadence::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput::Cadence::TaggedSymbol
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
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::EventOutput::EventOutputConfig,
                      Orb::Internal::AnyHash
                    )
                  end

                # The key in the event data to extract the unit rate from.
                sig { returns(String) }
                attr_accessor :unit_rating_key

                # An optional key in the event data to group by (e.g., event ID). All events will
                # also be grouped by their unit rate.
                sig { returns(T.nilable(String)) }
                attr_accessor :grouping_key

                # Configuration for event_output pricing
                sig do
                  params(
                    unit_rating_key: String,
                    grouping_key: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The key in the event data to extract the unit rate from.
                  unit_rating_key:,
                  # An optional key in the event data to group by (e.g., event ID). All events will
                  # also be grouped by their unit rate.
                  grouping_key: nil
                )
                end

                sig do
                  override.returns(
                    { unit_rating_key: String, grouping_key: T.nilable(String) }
                  )
                end
                def to_hash
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::AddPrice::Price::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end

        class RemoveAdjustment < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Beta::ExternalPlanIDCreatePlanVersionParams::RemoveAdjustment,
                Orb::Internal::AnyHash
              )
            end

          # The id of the adjustment to remove from on the plan.
          sig { returns(String) }
          attr_accessor :adjustment_id

          # The phase to remove this adjustment from.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          sig do
            params(
              adjustment_id: String,
              plan_phase_order: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            # The id of the adjustment to remove from on the plan.
            adjustment_id:,
            # The phase to remove this adjustment from.
            plan_phase_order: nil
          )
          end

          sig do
            override.returns(
              { adjustment_id: String, plan_phase_order: T.nilable(Integer) }
            )
          end
          def to_hash
          end
        end

        class RemovePrice < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Beta::ExternalPlanIDCreatePlanVersionParams::RemovePrice,
                Orb::Internal::AnyHash
              )
            end

          # The id of the price to remove from the plan.
          sig { returns(String) }
          attr_accessor :price_id

          # The phase to remove this price from.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          sig do
            params(
              price_id: String,
              plan_phase_order: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            # The id of the price to remove from the plan.
            price_id:,
            # The phase to remove this price from.
            plan_phase_order: nil
          )
          end

          sig do
            override.returns(
              { price_id: String, plan_phase_order: T.nilable(Integer) }
            )
          end
          def to_hash
          end
        end

        class ReplaceAdjustment < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplaceAdjustment,
                Orb::Internal::AnyHash
              )
            end

          # The definition of a new adjustment to create and add to the plan.
          sig do
            returns(
              T.any(
                Orb::NewPercentageDiscount,
                Orb::NewUsageDiscount,
                Orb::NewAmountDiscount,
                Orb::NewMinimum,
                Orb::NewMaximum
              )
            )
          end
          attr_accessor :adjustment

          # The id of the adjustment on the plan to replace in the plan.
          sig { returns(String) }
          attr_accessor :replaces_adjustment_id

          # The phase to replace this adjustment from.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          sig do
            params(
              adjustment:
                T.any(
                  Orb::NewPercentageDiscount::OrHash,
                  Orb::NewUsageDiscount::OrHash,
                  Orb::NewAmountDiscount::OrHash,
                  Orb::NewMinimum::OrHash,
                  Orb::NewMaximum::OrHash
                ),
              replaces_adjustment_id: String,
              plan_phase_order: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            # The definition of a new adjustment to create and add to the plan.
            adjustment:,
            # The id of the adjustment on the plan to replace in the plan.
            replaces_adjustment_id:,
            # The phase to replace this adjustment from.
            plan_phase_order: nil
          )
          end

          sig do
            override.returns(
              {
                adjustment:
                  T.any(
                    Orb::NewPercentageDiscount,
                    Orb::NewUsageDiscount,
                    Orb::NewAmountDiscount,
                    Orb::NewMinimum,
                    Orb::NewMaximum
                  ),
                replaces_adjustment_id: String,
                plan_phase_order: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end

          # The definition of a new adjustment to create and add to the plan.
          module Adjustment
            extend Orb::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Orb::NewPercentageDiscount,
                  Orb::NewUsageDiscount,
                  Orb::NewAmountDiscount,
                  Orb::NewMinimum,
                  Orb::NewMaximum
                )
              end

            sig do
              override.returns(
                T::Array[
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplaceAdjustment::Adjustment::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end

        class ReplacePrice < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice,
                Orb::Internal::AnyHash
              )
            end

          # The id of the price on the plan to replace in the plan.
          sig { returns(String) }
          attr_accessor :replaces_price_id

          # The allocation price to add to the plan.
          sig { returns(T.nilable(Orb::NewAllocationPrice)) }
          attr_reader :allocation_price

          sig do
            params(
              allocation_price: T.nilable(Orb::NewAllocationPrice::OrHash)
            ).void
          end
          attr_writer :allocation_price

          # The phase to replace this price from.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :plan_phase_order

          # New plan price request body params.
          sig do
            returns(
              T.nilable(
                T.any(
                  Orb::NewPlanUnitPrice,
                  Orb::NewPlanTieredPrice,
                  Orb::NewPlanBulkPrice,
                  Orb::NewPlanPackagePrice,
                  Orb::NewPlanMatrixPrice,
                  Orb::NewPlanThresholdTotalAmountPrice,
                  Orb::NewPlanTieredPackagePrice,
                  Orb::NewPlanTieredWithMinimumPrice,
                  Orb::NewPlanGroupedTieredPrice,
                  Orb::NewPlanTieredPackageWithMinimumPrice,
                  Orb::NewPlanPackageWithAllocationPrice,
                  Orb::NewPlanUnitWithPercentPrice,
                  Orb::NewPlanMatrixWithAllocationPrice,
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration,
                  Orb::NewPlanUnitWithProrationPrice,
                  Orb::NewPlanGroupedAllocationPrice,
                  Orb::NewPlanBulkWithProrationPrice,
                  Orb::NewPlanGroupedWithProratedMinimumPrice,
                  Orb::NewPlanGroupedWithMeteredMinimumPrice,
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds,
                  Orb::NewPlanMatrixWithDisplayNamePrice,
                  Orb::NewPlanGroupedTieredPackagePrice,
                  Orb::NewPlanMaxGroupTieredPackagePrice,
                  Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                  Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                  Orb::NewPlanCumulativeGroupedBulkPrice,
                  Orb::NewPlanMinimumCompositePrice,
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput
                )
              )
            )
          end
          attr_accessor :price

          sig do
            params(
              replaces_price_id: String,
              allocation_price: T.nilable(Orb::NewAllocationPrice::OrHash),
              plan_phase_order: T.nilable(Integer),
              price:
                T.nilable(
                  T.any(
                    Orb::NewPlanUnitPrice::OrHash,
                    Orb::NewPlanTieredPrice::OrHash,
                    Orb::NewPlanBulkPrice::OrHash,
                    Orb::NewPlanPackagePrice::OrHash,
                    Orb::NewPlanMatrixPrice::OrHash,
                    Orb::NewPlanThresholdTotalAmountPrice::OrHash,
                    Orb::NewPlanTieredPackagePrice::OrHash,
                    Orb::NewPlanTieredWithMinimumPrice::OrHash,
                    Orb::NewPlanGroupedTieredPrice::OrHash,
                    Orb::NewPlanTieredPackageWithMinimumPrice::OrHash,
                    Orb::NewPlanPackageWithAllocationPrice::OrHash,
                    Orb::NewPlanUnitWithPercentPrice::OrHash,
                    Orb::NewPlanMatrixWithAllocationPrice::OrHash,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::OrHash,
                    Orb::NewPlanUnitWithProrationPrice::OrHash,
                    Orb::NewPlanGroupedAllocationPrice::OrHash,
                    Orb::NewPlanBulkWithProrationPrice::OrHash,
                    Orb::NewPlanGroupedWithProratedMinimumPrice::OrHash,
                    Orb::NewPlanGroupedWithMeteredMinimumPrice::OrHash,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::OrHash,
                    Orb::NewPlanMatrixWithDisplayNamePrice::OrHash,
                    Orb::NewPlanGroupedTieredPackagePrice::OrHash,
                    Orb::NewPlanMaxGroupTieredPackagePrice::OrHash,
                    Orb::NewPlanScalableMatrixWithUnitPricingPrice::OrHash,
                    Orb::NewPlanScalableMatrixWithTieredPricingPrice::OrHash,
                    Orb::NewPlanCumulativeGroupedBulkPrice::OrHash,
                    Orb::NewPlanMinimumCompositePrice::OrHash,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput::OrHash
                  )
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # The id of the price on the plan to replace in the plan.
            replaces_price_id:,
            # The allocation price to add to the plan.
            allocation_price: nil,
            # The phase to replace this price from.
            plan_phase_order: nil,
            # New plan price request body params.
            price: nil
          )
          end

          sig do
            override.returns(
              {
                replaces_price_id: String,
                allocation_price: T.nilable(Orb::NewAllocationPrice),
                plan_phase_order: T.nilable(Integer),
                price:
                  T.nilable(
                    T.any(
                      Orb::NewPlanUnitPrice,
                      Orb::NewPlanTieredPrice,
                      Orb::NewPlanBulkPrice,
                      Orb::NewPlanPackagePrice,
                      Orb::NewPlanMatrixPrice,
                      Orb::NewPlanThresholdTotalAmountPrice,
                      Orb::NewPlanTieredPackagePrice,
                      Orb::NewPlanTieredWithMinimumPrice,
                      Orb::NewPlanGroupedTieredPrice,
                      Orb::NewPlanTieredPackageWithMinimumPrice,
                      Orb::NewPlanPackageWithAllocationPrice,
                      Orb::NewPlanUnitWithPercentPrice,
                      Orb::NewPlanMatrixWithAllocationPrice,
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration,
                      Orb::NewPlanUnitWithProrationPrice,
                      Orb::NewPlanGroupedAllocationPrice,
                      Orb::NewPlanBulkWithProrationPrice,
                      Orb::NewPlanGroupedWithProratedMinimumPrice,
                      Orb::NewPlanGroupedWithMeteredMinimumPrice,
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds,
                      Orb::NewPlanMatrixWithDisplayNamePrice,
                      Orb::NewPlanGroupedTieredPackagePrice,
                      Orb::NewPlanMaxGroupTieredPackagePrice,
                      Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                      Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                      Orb::NewPlanCumulativeGroupedBulkPrice,
                      Orb::NewPlanMinimumCompositePrice,
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput
                    )
                  )
              }
            )
          end
          def to_hash
          end

          # New plan price request body params.
          module Price
            extend Orb::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Orb::NewPlanUnitPrice,
                  Orb::NewPlanTieredPrice,
                  Orb::NewPlanBulkPrice,
                  Orb::NewPlanPackagePrice,
                  Orb::NewPlanMatrixPrice,
                  Orb::NewPlanThresholdTotalAmountPrice,
                  Orb::NewPlanTieredPackagePrice,
                  Orb::NewPlanTieredWithMinimumPrice,
                  Orb::NewPlanGroupedTieredPrice,
                  Orb::NewPlanTieredPackageWithMinimumPrice,
                  Orb::NewPlanPackageWithAllocationPrice,
                  Orb::NewPlanUnitWithPercentPrice,
                  Orb::NewPlanMatrixWithAllocationPrice,
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration,
                  Orb::NewPlanUnitWithProrationPrice,
                  Orb::NewPlanGroupedAllocationPrice,
                  Orb::NewPlanBulkWithProrationPrice,
                  Orb::NewPlanGroupedWithProratedMinimumPrice,
                  Orb::NewPlanGroupedWithMeteredMinimumPrice,
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds,
                  Orb::NewPlanMatrixWithDisplayNamePrice,
                  Orb::NewPlanGroupedTieredPackagePrice,
                  Orb::NewPlanMaxGroupTieredPackagePrice,
                  Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                  Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                  Orb::NewPlanCumulativeGroupedBulkPrice,
                  Orb::NewPlanMinimumCompositePrice,
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput
                )
              end

            class TieredWithProration < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration,
                    Orb::Internal::AnyHash
                  )
                end

              # The cadence to bill for this price on.
              sig do
                returns(
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::Cadence::OrSymbol
                )
              end
              attr_accessor :cadence

              # The id of the item the price will be associated with.
              sig { returns(String) }
              attr_accessor :item_id

              # The pricing model type
              sig { returns(Symbol) }
              attr_accessor :model_type

              # The name of the price.
              sig { returns(String) }
              attr_accessor :name

              # Configuration for tiered_with_proration pricing
              sig do
                returns(
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig
                )
              end
              attr_reader :tiered_with_proration_config

              sig do
                params(
                  tiered_with_proration_config:
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig::OrHash
                ).void
              end
              attr_writer :tiered_with_proration_config

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
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::Cadence::OrSymbol,
                  item_id: String,
                  name: String,
                  tiered_with_proration_config:
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig::OrHash,
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
                  reference_id: T.nilable(String),
                  model_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The cadence to bill for this price on.
                cadence:,
                # The id of the item the price will be associated with.
                item_id:,
                # The name of the price.
                name:,
                # Configuration for tiered_with_proration pricing
                tiered_with_proration_config:,
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
                reference_id: nil,
                # The pricing model type
                model_type: :tiered_with_proration
              )
              end

              sig do
                override.returns(
                  {
                    cadence:
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::Cadence::OrSymbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_proration_config:
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig,
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
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::Cadence
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ANNUAL =
                  T.let(
                    :annual,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                  )
                SEMI_ANNUAL =
                  T.let(
                    :semi_annual,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                  )
                MONTHLY =
                  T.let(
                    :monthly,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :quarterly,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                  )
                ONE_TIME =
                  T.let(
                    :one_time,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                  )
                CUSTOM =
                  T.let(
                    :custom,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::Cadence::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class TieredWithProrationConfig < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig,
                      Orb::Internal::AnyHash
                    )
                  end

                # Tiers for rating based on total usage quantities into the specified tier with
                # proration
                sig do
                  returns(
                    T::Array[
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig::Tier
                    ]
                  )
                end
                attr_accessor :tiers

                # Configuration for tiered_with_proration pricing
                sig do
                  params(
                    tiers:
                      T::Array[
                        Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig::Tier::OrHash
                      ]
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Tiers for rating based on total usage quantities into the specified tier with
                  # proration
                  tiers:
                )
                end

                sig do
                  override.returns(
                    {
                      tiers:
                        T::Array[
                          Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig::Tier
                        ]
                    }
                  )
                end
                def to_hash
                end

                class Tier < Orb::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::TieredWithProration::TieredWithProrationConfig::Tier,
                        Orb::Internal::AnyHash
                      )
                    end

                  # Inclusive tier starting value
                  sig { returns(String) }
                  attr_accessor :tier_lower_bound

                  # Amount per unit
                  sig { returns(String) }
                  attr_accessor :unit_amount

                  # Configuration for a single tiered with proration tier
                  sig do
                    params(
                      tier_lower_bound: String,
                      unit_amount: String
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Inclusive tier starting value
                    tier_lower_bound:,
                    # Amount per unit
                    unit_amount:
                  )
                  end

                  sig do
                    override.returns(
                      { tier_lower_bound: String, unit_amount: String }
                    )
                  end
                  def to_hash
                  end
                end
              end
            end

            class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds,
                    Orb::Internal::AnyHash
                  )
                end

              # The cadence to bill for this price on.
              sig do
                returns(
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol
                )
              end
              attr_accessor :cadence

              # Configuration for grouped_with_min_max_thresholds pricing
              sig do
                returns(
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig
                )
              end
              attr_reader :grouped_with_min_max_thresholds_config

              sig do
                params(
                  grouped_with_min_max_thresholds_config:
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig::OrHash
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
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
                  grouped_with_min_max_thresholds_config:
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig::OrHash,
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
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String),
                  model_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The cadence to bill for this price on.
                cadence:,
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
                reference_id: nil,
                # The pricing model type
                model_type: :grouped_with_min_max_thresholds
              )
              end

              sig do
                override.returns(
                  {
                    cadence:
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
                    grouped_with_min_max_thresholds_config:
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig,
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
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ANNUAL =
                  T.let(
                    :annual,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                  )
                SEMI_ANNUAL =
                  T.let(
                    :semi_annual,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                  )
                MONTHLY =
                  T.let(
                    :monthly,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :quarterly,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                  )
                ONE_TIME =
                  T.let(
                    :one_time,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                  )
                CUSTOM =
                  T.let(
                    :custom,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
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
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::GroupedWithMinMaxThresholdsConfig,
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

            class EventOutput < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput,
                    Orb::Internal::AnyHash
                  )
                end

              # The cadence to bill for this price on.
              sig do
                returns(
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput::Cadence::OrSymbol
                )
              end
              attr_accessor :cadence

              # Configuration for event_output pricing
              sig do
                returns(
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput::EventOutputConfig
                )
              end
              attr_reader :event_output_config

              sig do
                params(
                  event_output_config:
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput::EventOutputConfig::OrHash
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
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput::Cadence::OrSymbol,
                  event_output_config:
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput::EventOutputConfig::OrHash,
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
                  currency: T.nilable(String),
                  dimensional_price_configuration:
                    T.nilable(Orb::NewDimensionalPriceConfiguration::OrHash),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration:
                    T.nilable(Orb::NewBillingCycleConfiguration::OrHash),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String),
                  model_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                # The cadence to bill for this price on.
                cadence:,
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
                reference_id: nil,
                # The pricing model type
                model_type: :event_output
              )
              end

              sig do
                override.returns(
                  {
                    cadence:
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput::Cadence::OrSymbol,
                    event_output_config:
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput::EventOutputConfig,
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
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput::Cadence
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                ANNUAL =
                  T.let(
                    :annual,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput::Cadence::TaggedSymbol
                  )
                SEMI_ANNUAL =
                  T.let(
                    :semi_annual,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput::Cadence::TaggedSymbol
                  )
                MONTHLY =
                  T.let(
                    :monthly,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput::Cadence::TaggedSymbol
                  )
                QUARTERLY =
                  T.let(
                    :quarterly,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput::Cadence::TaggedSymbol
                  )
                ONE_TIME =
                  T.let(
                    :one_time,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput::Cadence::TaggedSymbol
                  )
                CUSTOM =
                  T.let(
                    :custom,
                    Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput::Cadence::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput::Cadence::TaggedSymbol
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
                      Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::EventOutput::EventOutputConfig,
                      Orb::Internal::AnyHash
                    )
                  end

                # The key in the event data to extract the unit rate from.
                sig { returns(String) }
                attr_accessor :unit_rating_key

                # An optional key in the event data to group by (e.g., event ID). All events will
                # also be grouped by their unit rate.
                sig { returns(T.nilable(String)) }
                attr_accessor :grouping_key

                # Configuration for event_output pricing
                sig do
                  params(
                    unit_rating_key: String,
                    grouping_key: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The key in the event data to extract the unit rate from.
                  unit_rating_key:,
                  # An optional key in the event data to group by (e.g., event ID). All events will
                  # also be grouped by their unit rate.
                  grouping_key: nil
                )
                end

                sig do
                  override.returns(
                    { unit_rating_key: String, grouping_key: T.nilable(String) }
                  )
                end
                def to_hash
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Orb::Beta::ExternalPlanIDCreatePlanVersionParams::ReplacePrice::Price::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end
    end
  end
end
