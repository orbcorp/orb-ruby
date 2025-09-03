# typed: strong

module Orb
  module Models
    class BetaCreatePlanVersionParams < Orb::Internal::Type::BaseModel
      extend Orb::Internal::Type::RequestParameters::Converter
      include Orb::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Orb::BetaCreatePlanVersionParams, Orb::Internal::AnyHash)
        end

      # New version number.
      sig { returns(Integer) }
      attr_accessor :version

      # Additional adjustments to be added to the plan.
      sig do
        returns(
          T.nilable(T::Array[Orb::BetaCreatePlanVersionParams::AddAdjustment])
        )
      end
      attr_accessor :add_adjustments

      # Additional prices to be added to the plan.
      sig do
        returns(T.nilable(T::Array[Orb::BetaCreatePlanVersionParams::AddPrice]))
      end
      attr_accessor :add_prices

      # Adjustments to be removed from the plan.
      sig do
        returns(
          T.nilable(
            T::Array[Orb::BetaCreatePlanVersionParams::RemoveAdjustment]
          )
        )
      end
      attr_accessor :remove_adjustments

      # Prices to be removed from the plan.
      sig do
        returns(
          T.nilable(T::Array[Orb::BetaCreatePlanVersionParams::RemovePrice])
        )
      end
      attr_accessor :remove_prices

      # Adjustments to be replaced with additional adjustments on the plan.
      sig do
        returns(
          T.nilable(
            T::Array[Orb::BetaCreatePlanVersionParams::ReplaceAdjustment]
          )
        )
      end
      attr_accessor :replace_adjustments

      # Prices to be replaced with additional prices on the plan.
      sig do
        returns(
          T.nilable(T::Array[Orb::BetaCreatePlanVersionParams::ReplacePrice])
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
              T::Array[Orb::BetaCreatePlanVersionParams::AddAdjustment::OrHash]
            ),
          add_prices:
            T.nilable(
              T::Array[Orb::BetaCreatePlanVersionParams::AddPrice::OrHash]
            ),
          remove_adjustments:
            T.nilable(
              T::Array[
                Orb::BetaCreatePlanVersionParams::RemoveAdjustment::OrHash
              ]
            ),
          remove_prices:
            T.nilable(
              T::Array[Orb::BetaCreatePlanVersionParams::RemovePrice::OrHash]
            ),
          replace_adjustments:
            T.nilable(
              T::Array[
                Orb::BetaCreatePlanVersionParams::ReplaceAdjustment::OrHash
              ]
            ),
          replace_prices:
            T.nilable(
              T::Array[Orb::BetaCreatePlanVersionParams::ReplacePrice::OrHash]
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
                T::Array[Orb::BetaCreatePlanVersionParams::AddAdjustment]
              ),
            add_prices:
              T.nilable(T::Array[Orb::BetaCreatePlanVersionParams::AddPrice]),
            remove_adjustments:
              T.nilable(
                T::Array[Orb::BetaCreatePlanVersionParams::RemoveAdjustment]
              ),
            remove_prices:
              T.nilable(
                T::Array[Orb::BetaCreatePlanVersionParams::RemovePrice]
              ),
            replace_adjustments:
              T.nilable(
                T::Array[Orb::BetaCreatePlanVersionParams::ReplaceAdjustment]
              ),
            replace_prices:
              T.nilable(
                T::Array[Orb::BetaCreatePlanVersionParams::ReplacePrice]
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
              Orb::BetaCreatePlanVersionParams::AddAdjustment,
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
                Orb::BetaCreatePlanVersionParams::AddAdjustment::Adjustment::Variants
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
              Orb::BetaCreatePlanVersionParams::AddPrice,
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

        # The price to add to the plan
        sig do
          returns(
            T.nilable(
              T.any(
                Orb::NewPlanUnitPrice,
                Orb::NewPlanPackagePrice,
                Orb::NewPlanMatrixPrice,
                Orb::NewPlanTieredPrice,
                Orb::NewPlanBulkPrice,
                Orb::NewPlanThresholdTotalAmountPrice,
                Orb::NewPlanTieredPackagePrice,
                Orb::NewPlanTieredWithMinimumPrice,
                Orb::NewPlanUnitWithPercentPrice,
                Orb::NewPlanPackageWithAllocationPrice,
                Orb::NewPlanTierWithProrationPrice,
                Orb::NewPlanUnitWithProrationPrice,
                Orb::NewPlanGroupedAllocationPrice,
                Orb::NewPlanGroupedWithProratedMinimumPrice,
                Orb::NewPlanGroupedWithMeteredMinimumPrice,
                Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds,
                Orb::NewPlanMatrixWithDisplayNamePrice,
                Orb::NewPlanBulkWithProrationPrice,
                Orb::NewPlanGroupedTieredPackagePrice,
                Orb::NewPlanMaxGroupTieredPackagePrice,
                Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                Orb::NewPlanCumulativeGroupedBulkPrice,
                Orb::NewPlanTieredPackageWithMinimumPrice,
                Orb::NewPlanMatrixWithAllocationPrice,
                Orb::NewPlanGroupedTieredPrice,
                Orb::NewPlanMinimumCompositePrice
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
                  Orb::NewPlanPackagePrice::OrHash,
                  Orb::NewPlanMatrixPrice::OrHash,
                  Orb::NewPlanTieredPrice::OrHash,
                  Orb::NewPlanBulkPrice::OrHash,
                  Orb::NewPlanThresholdTotalAmountPrice::OrHash,
                  Orb::NewPlanTieredPackagePrice::OrHash,
                  Orb::NewPlanTieredWithMinimumPrice::OrHash,
                  Orb::NewPlanUnitWithPercentPrice::OrHash,
                  Orb::NewPlanPackageWithAllocationPrice::OrHash,
                  Orb::NewPlanTierWithProrationPrice::OrHash,
                  Orb::NewPlanUnitWithProrationPrice::OrHash,
                  Orb::NewPlanGroupedAllocationPrice::OrHash,
                  Orb::NewPlanGroupedWithProratedMinimumPrice::OrHash,
                  Orb::NewPlanGroupedWithMeteredMinimumPrice::OrHash,
                  Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::OrHash,
                  Orb::NewPlanMatrixWithDisplayNamePrice::OrHash,
                  Orb::NewPlanBulkWithProrationPrice::OrHash,
                  Orb::NewPlanGroupedTieredPackagePrice::OrHash,
                  Orb::NewPlanMaxGroupTieredPackagePrice::OrHash,
                  Orb::NewPlanScalableMatrixWithUnitPricingPrice::OrHash,
                  Orb::NewPlanScalableMatrixWithTieredPricingPrice::OrHash,
                  Orb::NewPlanCumulativeGroupedBulkPrice::OrHash,
                  Orb::NewPlanTieredPackageWithMinimumPrice::OrHash,
                  Orb::NewPlanMatrixWithAllocationPrice::OrHash,
                  Orb::NewPlanGroupedTieredPrice::OrHash,
                  Orb::NewPlanMinimumCompositePrice::OrHash
                )
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # The allocation price to add to the plan.
          allocation_price: nil,
          # The phase to add this price to.
          plan_phase_order: nil,
          # The price to add to the plan
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
                    Orb::NewPlanPackagePrice,
                    Orb::NewPlanMatrixPrice,
                    Orb::NewPlanTieredPrice,
                    Orb::NewPlanBulkPrice,
                    Orb::NewPlanThresholdTotalAmountPrice,
                    Orb::NewPlanTieredPackagePrice,
                    Orb::NewPlanTieredWithMinimumPrice,
                    Orb::NewPlanUnitWithPercentPrice,
                    Orb::NewPlanPackageWithAllocationPrice,
                    Orb::NewPlanTierWithProrationPrice,
                    Orb::NewPlanUnitWithProrationPrice,
                    Orb::NewPlanGroupedAllocationPrice,
                    Orb::NewPlanGroupedWithProratedMinimumPrice,
                    Orb::NewPlanGroupedWithMeteredMinimumPrice,
                    Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds,
                    Orb::NewPlanMatrixWithDisplayNamePrice,
                    Orb::NewPlanBulkWithProrationPrice,
                    Orb::NewPlanGroupedTieredPackagePrice,
                    Orb::NewPlanMaxGroupTieredPackagePrice,
                    Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                    Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                    Orb::NewPlanCumulativeGroupedBulkPrice,
                    Orb::NewPlanTieredPackageWithMinimumPrice,
                    Orb::NewPlanMatrixWithAllocationPrice,
                    Orb::NewPlanGroupedTieredPrice,
                    Orb::NewPlanMinimumCompositePrice
                  )
                )
            }
          )
        end
        def to_hash
        end

        # The price to add to the plan
        module Price
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::NewPlanUnitPrice,
                Orb::NewPlanPackagePrice,
                Orb::NewPlanMatrixPrice,
                Orb::NewPlanTieredPrice,
                Orb::NewPlanBulkPrice,
                Orb::NewPlanThresholdTotalAmountPrice,
                Orb::NewPlanTieredPackagePrice,
                Orb::NewPlanTieredWithMinimumPrice,
                Orb::NewPlanUnitWithPercentPrice,
                Orb::NewPlanPackageWithAllocationPrice,
                Orb::NewPlanTierWithProrationPrice,
                Orb::NewPlanUnitWithProrationPrice,
                Orb::NewPlanGroupedAllocationPrice,
                Orb::NewPlanGroupedWithProratedMinimumPrice,
                Orb::NewPlanGroupedWithMeteredMinimumPrice,
                Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds,
                Orb::NewPlanMatrixWithDisplayNamePrice,
                Orb::NewPlanBulkWithProrationPrice,
                Orb::NewPlanGroupedTieredPackagePrice,
                Orb::NewPlanMaxGroupTieredPackagePrice,
                Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                Orb::NewPlanCumulativeGroupedBulkPrice,
                Orb::NewPlanTieredPackageWithMinimumPrice,
                Orb::NewPlanMatrixWithAllocationPrice,
                Orb::NewPlanGroupedTieredPrice,
                Orb::NewPlanMinimumCompositePrice
              )
            end

          class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_with_min_max_thresholds_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

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
                  Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
                grouped_with_min_max_thresholds_config:
                  T::Hash[Symbol, T.anything],
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
              model_type: :grouped_with_min_max_thresholds
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
                  grouped_with_min_max_thresholds_config:
                    T::Hash[Symbol, T.anything],
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
                    Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::BetaCreatePlanVersionParams::AddPrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Orb::BetaCreatePlanVersionParams::AddPrice::Price::Variants
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
              Orb::BetaCreatePlanVersionParams::RemoveAdjustment,
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
              Orb::BetaCreatePlanVersionParams::RemovePrice,
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
              Orb::BetaCreatePlanVersionParams::ReplaceAdjustment,
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
                Orb::BetaCreatePlanVersionParams::ReplaceAdjustment::Adjustment::Variants
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
              Orb::BetaCreatePlanVersionParams::ReplacePrice,
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

        # The price to add to the plan
        sig do
          returns(
            T.nilable(
              T.any(
                Orb::NewPlanUnitPrice,
                Orb::NewPlanPackagePrice,
                Orb::NewPlanMatrixPrice,
                Orb::NewPlanTieredPrice,
                Orb::NewPlanBulkPrice,
                Orb::NewPlanThresholdTotalAmountPrice,
                Orb::NewPlanTieredPackagePrice,
                Orb::NewPlanTieredWithMinimumPrice,
                Orb::NewPlanUnitWithPercentPrice,
                Orb::NewPlanPackageWithAllocationPrice,
                Orb::NewPlanTierWithProrationPrice,
                Orb::NewPlanUnitWithProrationPrice,
                Orb::NewPlanGroupedAllocationPrice,
                Orb::NewPlanGroupedWithProratedMinimumPrice,
                Orb::NewPlanGroupedWithMeteredMinimumPrice,
                Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds,
                Orb::NewPlanMatrixWithDisplayNamePrice,
                Orb::NewPlanBulkWithProrationPrice,
                Orb::NewPlanGroupedTieredPackagePrice,
                Orb::NewPlanMaxGroupTieredPackagePrice,
                Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                Orb::NewPlanCumulativeGroupedBulkPrice,
                Orb::NewPlanTieredPackageWithMinimumPrice,
                Orb::NewPlanMatrixWithAllocationPrice,
                Orb::NewPlanGroupedTieredPrice,
                Orb::NewPlanMinimumCompositePrice
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
                  Orb::NewPlanPackagePrice::OrHash,
                  Orb::NewPlanMatrixPrice::OrHash,
                  Orb::NewPlanTieredPrice::OrHash,
                  Orb::NewPlanBulkPrice::OrHash,
                  Orb::NewPlanThresholdTotalAmountPrice::OrHash,
                  Orb::NewPlanTieredPackagePrice::OrHash,
                  Orb::NewPlanTieredWithMinimumPrice::OrHash,
                  Orb::NewPlanUnitWithPercentPrice::OrHash,
                  Orb::NewPlanPackageWithAllocationPrice::OrHash,
                  Orb::NewPlanTierWithProrationPrice::OrHash,
                  Orb::NewPlanUnitWithProrationPrice::OrHash,
                  Orb::NewPlanGroupedAllocationPrice::OrHash,
                  Orb::NewPlanGroupedWithProratedMinimumPrice::OrHash,
                  Orb::NewPlanGroupedWithMeteredMinimumPrice::OrHash,
                  Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::OrHash,
                  Orb::NewPlanMatrixWithDisplayNamePrice::OrHash,
                  Orb::NewPlanBulkWithProrationPrice::OrHash,
                  Orb::NewPlanGroupedTieredPackagePrice::OrHash,
                  Orb::NewPlanMaxGroupTieredPackagePrice::OrHash,
                  Orb::NewPlanScalableMatrixWithUnitPricingPrice::OrHash,
                  Orb::NewPlanScalableMatrixWithTieredPricingPrice::OrHash,
                  Orb::NewPlanCumulativeGroupedBulkPrice::OrHash,
                  Orb::NewPlanTieredPackageWithMinimumPrice::OrHash,
                  Orb::NewPlanMatrixWithAllocationPrice::OrHash,
                  Orb::NewPlanGroupedTieredPrice::OrHash,
                  Orb::NewPlanMinimumCompositePrice::OrHash
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
          # The price to add to the plan
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
                    Orb::NewPlanPackagePrice,
                    Orb::NewPlanMatrixPrice,
                    Orb::NewPlanTieredPrice,
                    Orb::NewPlanBulkPrice,
                    Orb::NewPlanThresholdTotalAmountPrice,
                    Orb::NewPlanTieredPackagePrice,
                    Orb::NewPlanTieredWithMinimumPrice,
                    Orb::NewPlanUnitWithPercentPrice,
                    Orb::NewPlanPackageWithAllocationPrice,
                    Orb::NewPlanTierWithProrationPrice,
                    Orb::NewPlanUnitWithProrationPrice,
                    Orb::NewPlanGroupedAllocationPrice,
                    Orb::NewPlanGroupedWithProratedMinimumPrice,
                    Orb::NewPlanGroupedWithMeteredMinimumPrice,
                    Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds,
                    Orb::NewPlanMatrixWithDisplayNamePrice,
                    Orb::NewPlanBulkWithProrationPrice,
                    Orb::NewPlanGroupedTieredPackagePrice,
                    Orb::NewPlanMaxGroupTieredPackagePrice,
                    Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                    Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                    Orb::NewPlanCumulativeGroupedBulkPrice,
                    Orb::NewPlanTieredPackageWithMinimumPrice,
                    Orb::NewPlanMatrixWithAllocationPrice,
                    Orb::NewPlanGroupedTieredPrice,
                    Orb::NewPlanMinimumCompositePrice
                  )
                )
            }
          )
        end
        def to_hash
        end

        # The price to add to the plan
        module Price
          extend Orb::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Orb::NewPlanUnitPrice,
                Orb::NewPlanPackagePrice,
                Orb::NewPlanMatrixPrice,
                Orb::NewPlanTieredPrice,
                Orb::NewPlanBulkPrice,
                Orb::NewPlanThresholdTotalAmountPrice,
                Orb::NewPlanTieredPackagePrice,
                Orb::NewPlanTieredWithMinimumPrice,
                Orb::NewPlanUnitWithPercentPrice,
                Orb::NewPlanPackageWithAllocationPrice,
                Orb::NewPlanTierWithProrationPrice,
                Orb::NewPlanUnitWithProrationPrice,
                Orb::NewPlanGroupedAllocationPrice,
                Orb::NewPlanGroupedWithProratedMinimumPrice,
                Orb::NewPlanGroupedWithMeteredMinimumPrice,
                Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds,
                Orb::NewPlanMatrixWithDisplayNamePrice,
                Orb::NewPlanBulkWithProrationPrice,
                Orb::NewPlanGroupedTieredPackagePrice,
                Orb::NewPlanMaxGroupTieredPackagePrice,
                Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                Orb::NewPlanCumulativeGroupedBulkPrice,
                Orb::NewPlanTieredPackageWithMinimumPrice,
                Orb::NewPlanMatrixWithAllocationPrice,
                Orb::NewPlanGroupedTieredPrice,
                Orb::NewPlanMinimumCompositePrice
              )
            end

          class GroupedWithMinMaxThresholds < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds,
                  Orb::Internal::AnyHash
                )
              end

            # The cadence to bill for this price on.
            sig do
              returns(
                Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol
              )
            end
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_with_min_max_thresholds_config

            # The id of the item the price will be associated with.
            sig { returns(String) }
            attr_accessor :item_id

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
                  Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
                grouped_with_min_max_thresholds_config:
                  T::Hash[Symbol, T.anything],
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
              model_type: :grouped_with_min_max_thresholds
            )
            end

            sig do
              override.returns(
                {
                  cadence:
                    Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::OrSymbol,
                  grouped_with_min_max_thresholds_config:
                    T::Hash[Symbol, T.anything],
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
                    Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANNUAL =
                T.let(
                  :annual,
                  Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              ONE_TIME =
                T.let(
                  :one_time,
                  Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )
              CUSTOM =
                T.let(
                  :custom,
                  Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::GroupedWithMinMaxThresholds::Cadence::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Orb::BetaCreatePlanVersionParams::ReplacePrice::Price::Variants
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
