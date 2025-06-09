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

          # The price to add to the plan
          sig do
            returns(
              T.nilable(
                T.any(
                  Orb::NewPlanUnitPrice,
                  Orb::NewPlanPackagePrice,
                  Orb::NewPlanMatrixPrice,
                  Orb::NewPlanTieredPrice,
                  Orb::NewPlanTieredBPSPrice,
                  Orb::NewPlanBPSPrice,
                  Orb::NewPlanBulkBPSPrice,
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
                  Orb::NewPlanMatrixWithDisplayNamePrice,
                  Orb::NewPlanBulkWithProrationPrice,
                  Orb::NewPlanGroupedTieredPackagePrice,
                  Orb::NewPlanMaxGroupTieredPackagePrice,
                  Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                  Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                  Orb::NewPlanCumulativeGroupedBulkPrice,
                  Orb::NewPlanTieredPackageWithMinimumPrice,
                  Orb::NewPlanMatrixWithAllocationPrice,
                  Orb::NewPlanGroupedTieredPrice
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
                    Orb::NewPlanTieredBPSPrice::OrHash,
                    Orb::NewPlanBPSPrice::OrHash,
                    Orb::NewPlanBulkBPSPrice::OrHash,
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
                    Orb::NewPlanMatrixWithDisplayNamePrice::OrHash,
                    Orb::NewPlanBulkWithProrationPrice::OrHash,
                    Orb::NewPlanGroupedTieredPackagePrice::OrHash,
                    Orb::NewPlanMaxGroupTieredPackagePrice::OrHash,
                    Orb::NewPlanScalableMatrixWithUnitPricingPrice::OrHash,
                    Orb::NewPlanScalableMatrixWithTieredPricingPrice::OrHash,
                    Orb::NewPlanCumulativeGroupedBulkPrice::OrHash,
                    Orb::NewPlanTieredPackageWithMinimumPrice::OrHash,
                    Orb::NewPlanMatrixWithAllocationPrice::OrHash,
                    Orb::NewPlanGroupedTieredPrice::OrHash
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
                      Orb::NewPlanTieredBPSPrice,
                      Orb::NewPlanBPSPrice,
                      Orb::NewPlanBulkBPSPrice,
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
                      Orb::NewPlanMatrixWithDisplayNamePrice,
                      Orb::NewPlanBulkWithProrationPrice,
                      Orb::NewPlanGroupedTieredPackagePrice,
                      Orb::NewPlanMaxGroupTieredPackagePrice,
                      Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                      Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                      Orb::NewPlanCumulativeGroupedBulkPrice,
                      Orb::NewPlanTieredPackageWithMinimumPrice,
                      Orb::NewPlanMatrixWithAllocationPrice,
                      Orb::NewPlanGroupedTieredPrice
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
                  Orb::NewPlanTieredBPSPrice,
                  Orb::NewPlanBPSPrice,
                  Orb::NewPlanBulkBPSPrice,
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
                  Orb::NewPlanMatrixWithDisplayNamePrice,
                  Orb::NewPlanBulkWithProrationPrice,
                  Orb::NewPlanGroupedTieredPackagePrice,
                  Orb::NewPlanMaxGroupTieredPackagePrice,
                  Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                  Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                  Orb::NewPlanCumulativeGroupedBulkPrice,
                  Orb::NewPlanTieredPackageWithMinimumPrice,
                  Orb::NewPlanMatrixWithAllocationPrice,
                  Orb::NewPlanGroupedTieredPrice
                )
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

          # The price to add to the plan
          sig do
            returns(
              T.nilable(
                T.any(
                  Orb::NewPlanUnitPrice,
                  Orb::NewPlanPackagePrice,
                  Orb::NewPlanMatrixPrice,
                  Orb::NewPlanTieredPrice,
                  Orb::NewPlanTieredBPSPrice,
                  Orb::NewPlanBPSPrice,
                  Orb::NewPlanBulkBPSPrice,
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
                  Orb::NewPlanMatrixWithDisplayNamePrice,
                  Orb::NewPlanBulkWithProrationPrice,
                  Orb::NewPlanGroupedTieredPackagePrice,
                  Orb::NewPlanMaxGroupTieredPackagePrice,
                  Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                  Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                  Orb::NewPlanCumulativeGroupedBulkPrice,
                  Orb::NewPlanTieredPackageWithMinimumPrice,
                  Orb::NewPlanMatrixWithAllocationPrice,
                  Orb::NewPlanGroupedTieredPrice
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
                    Orb::NewPlanTieredBPSPrice::OrHash,
                    Orb::NewPlanBPSPrice::OrHash,
                    Orb::NewPlanBulkBPSPrice::OrHash,
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
                    Orb::NewPlanMatrixWithDisplayNamePrice::OrHash,
                    Orb::NewPlanBulkWithProrationPrice::OrHash,
                    Orb::NewPlanGroupedTieredPackagePrice::OrHash,
                    Orb::NewPlanMaxGroupTieredPackagePrice::OrHash,
                    Orb::NewPlanScalableMatrixWithUnitPricingPrice::OrHash,
                    Orb::NewPlanScalableMatrixWithTieredPricingPrice::OrHash,
                    Orb::NewPlanCumulativeGroupedBulkPrice::OrHash,
                    Orb::NewPlanTieredPackageWithMinimumPrice::OrHash,
                    Orb::NewPlanMatrixWithAllocationPrice::OrHash,
                    Orb::NewPlanGroupedTieredPrice::OrHash
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
                      Orb::NewPlanTieredBPSPrice,
                      Orb::NewPlanBPSPrice,
                      Orb::NewPlanBulkBPSPrice,
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
                      Orb::NewPlanMatrixWithDisplayNamePrice,
                      Orb::NewPlanBulkWithProrationPrice,
                      Orb::NewPlanGroupedTieredPackagePrice,
                      Orb::NewPlanMaxGroupTieredPackagePrice,
                      Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                      Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                      Orb::NewPlanCumulativeGroupedBulkPrice,
                      Orb::NewPlanTieredPackageWithMinimumPrice,
                      Orb::NewPlanMatrixWithAllocationPrice,
                      Orb::NewPlanGroupedTieredPrice
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
                  Orb::NewPlanTieredBPSPrice,
                  Orb::NewPlanBPSPrice,
                  Orb::NewPlanBulkBPSPrice,
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
                  Orb::NewPlanMatrixWithDisplayNamePrice,
                  Orb::NewPlanBulkWithProrationPrice,
                  Orb::NewPlanGroupedTieredPackagePrice,
                  Orb::NewPlanMaxGroupTieredPackagePrice,
                  Orb::NewPlanScalableMatrixWithUnitPricingPrice,
                  Orb::NewPlanScalableMatrixWithTieredPricingPrice,
                  Orb::NewPlanCumulativeGroupedBulkPrice,
                  Orb::NewPlanTieredPackageWithMinimumPrice,
                  Orb::NewPlanMatrixWithAllocationPrice,
                  Orb::NewPlanGroupedTieredPrice
                )
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
