# typed: strong

module Orb
  module Models
    module Plans
      module ExternalPlanID
        class VersionRetrieveResponse < Orb::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse,
                Orb::Internal::AnyHash
              )
            end

          # Adjustments for this plan. If the plan has phases, this includes adjustments
          # across all phases of the plan.
          sig do
            returns(
              T::Array[
                Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Variants
              ]
            )
          end
          attr_accessor :adjustments

          sig { returns(Time) }
          attr_accessor :created_at

          sig do
            returns(
              T.nilable(
                T::Array[
                  Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::PlanPhase
                ]
              )
            )
          end
          attr_accessor :plan_phases

          # Prices for this plan. If the plan has phases, this includes prices across all
          # phases of the plan.
          sig { returns(T::Array[Orb::Price::Variants]) }
          attr_accessor :prices

          sig { returns(Integer) }
          attr_accessor :version

          # The PlanVersion resource represents the prices and adjustments present on a
          # specific version of a plan.
          sig do
            params(
              adjustments:
                T::Array[
                  T.any(
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::OrHash,
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::OrHash,
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::OrHash,
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::OrHash,
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::OrHash
                  )
                ],
              created_at: Time,
              plan_phases:
                T.nilable(
                  T::Array[
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::PlanPhase::OrHash
                  ]
                ),
              prices:
                T::Array[
                  T.any(
                    Orb::Price::Unit::OrHash,
                    Orb::Price::Package::OrHash,
                    Orb::Price::Matrix::OrHash,
                    Orb::Price::Tiered::OrHash,
                    Orb::Price::TieredBps::OrHash,
                    Orb::Price::Bps::OrHash,
                    Orb::Price::BulkBps::OrHash,
                    Orb::Price::Bulk::OrHash,
                    Orb::Price::ThresholdTotalAmount::OrHash,
                    Orb::Price::TieredPackage::OrHash,
                    Orb::Price::GroupedTiered::OrHash,
                    Orb::Price::TieredWithMinimum::OrHash,
                    Orb::Price::TieredPackageWithMinimum::OrHash,
                    Orb::Price::PackageWithAllocation::OrHash,
                    Orb::Price::UnitWithPercent::OrHash,
                    Orb::Price::MatrixWithAllocation::OrHash,
                    Orb::Price::TieredWithProration::OrHash,
                    Orb::Price::UnitWithProration::OrHash,
                    Orb::Price::GroupedAllocation::OrHash,
                    Orb::Price::GroupedWithProratedMinimum::OrHash,
                    Orb::Price::GroupedWithMeteredMinimum::OrHash,
                    Orb::Price::MatrixWithDisplayName::OrHash,
                    Orb::Price::BulkWithProration::OrHash,
                    Orb::Price::GroupedTieredPackage::OrHash,
                    Orb::Price::MaxGroupTieredPackage::OrHash,
                    Orb::Price::ScalableMatrixWithUnitPricing::OrHash,
                    Orb::Price::ScalableMatrixWithTieredPricing::OrHash,
                    Orb::Price::CumulativeGroupedBulk::OrHash
                  )
                ],
              version: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # Adjustments for this plan. If the plan has phases, this includes adjustments
            # across all phases of the plan.
            adjustments:,
            created_at:,
            plan_phases:,
            # Prices for this plan. If the plan has phases, this includes prices across all
            # phases of the plan.
            prices:,
            version:
          )
          end

          sig do
            override.returns(
              {
                adjustments:
                  T::Array[
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Variants
                  ],
                created_at: Time,
                plan_phases:
                  T.nilable(
                    T::Array[
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::PlanPhase
                    ]
                  ),
                prices: T::Array[Orb::Price::Variants],
                version: Integer
              }
            )
          end
          def to_hash
          end

          module Adjustment
            extend Orb::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount,
                  Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount,
                  Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount,
                  Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum,
                  Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum
                )
              end

            class UsageDiscount < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(Symbol) }
              attr_accessor :adjustment_type

              # The price IDs that this adjustment applies to.
              sig { returns(T::Array[String]) }
              attr_accessor :applies_to_price_ids

              # The filters that determine which prices to apply this adjustment to.
              sig do
                returns(
                  T::Array[
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter
                  ]
                )
              end
              attr_accessor :filters

              # True for adjustments that apply to an entire invocice, false for adjustments
              # that apply to only one price.
              sig { returns(T::Boolean) }
              attr_accessor :is_invoice_level

              # The plan phase in which this adjustment is active.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :plan_phase_order

              # The reason for the adjustment.
              sig { returns(T.nilable(String)) }
              attr_accessor :reason

              # The number of usage units by which to discount the price this adjustment applies
              # to in a given billing period.
              sig { returns(Float) }
              attr_accessor :usage_discount

              sig do
                params(
                  id: String,
                  applies_to_price_ids: T::Array[String],
                  filters:
                    T::Array[
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::OrHash
                    ],
                  is_invoice_level: T::Boolean,
                  plan_phase_order: T.nilable(Integer),
                  reason: T.nilable(String),
                  usage_discount: Float,
                  adjustment_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # The price IDs that this adjustment applies to.
                applies_to_price_ids:,
                # The filters that determine which prices to apply this adjustment to.
                filters:,
                # True for adjustments that apply to an entire invocice, false for adjustments
                # that apply to only one price.
                is_invoice_level:,
                # The plan phase in which this adjustment is active.
                plan_phase_order:,
                # The reason for the adjustment.
                reason:,
                # The number of usage units by which to discount the price this adjustment applies
                # to in a given billing period.
                usage_discount:,
                adjustment_type: :usage_discount
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    filters:
                      T::Array[
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter
                      ],
                    is_invoice_level: T::Boolean,
                    plan_phase_order: T.nilable(Integer),
                    reason: T.nilable(String),
                    usage_discount: Float
                  }
                )
              end
              def to_hash
              end

              class Filter < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter,
                      Orb::Internal::AnyHash
                    )
                  end

                # The property of the price to filter on.
                sig do
                  returns(
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                  )
                end
                attr_accessor :field

                # Should prices that match the filter be included or excluded.
                sig do
                  returns(
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::Operator::TaggedSymbol
                  )
                end
                attr_accessor :operator

                # The IDs or values that match this filter.
                sig { returns(T::Array[String]) }
                attr_accessor :values

                sig do
                  params(
                    field:
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::Field::OrSymbol,
                    operator:
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::Operator::OrSymbol,
                    values: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The property of the price to filter on.
                  field:,
                  # Should prices that match the filter be included or excluded.
                  operator:,
                  # The IDs or values that match this filter.
                  values:
                )
                end

                sig do
                  override.returns(
                    {
                      field:
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol,
                      operator:
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::Operator::TaggedSymbol,
                      values: T::Array[String]
                    }
                  )
                end
                def to_hash
                end

                # The property of the price to filter on.
                module Field
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::Field
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PRICE_ID =
                    T.let(
                      :price_id,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                    )
                  ITEM_ID =
                    T.let(
                      :item_id,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                    )
                  PRICE_TYPE =
                    T.let(
                      :price_type,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                    )
                  CURRENCY =
                    T.let(
                      :currency,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                    )
                  PRICING_UNIT_ID =
                    T.let(
                      :pricing_unit_id,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::Field::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                # Should prices that match the filter be included or excluded.
                module Operator
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::Operator
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INCLUDES =
                    T.let(
                      :includes,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::Operator::TaggedSymbol
                    )
                  EXCLUDES =
                    T.let(
                      :excludes,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::Operator::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::UsageDiscount::Filter::Operator::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            class AmountDiscount < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(Symbol) }
              attr_accessor :adjustment_type

              # The amount by which to discount the prices this adjustment applies to in a given
              # billing period.
              sig { returns(String) }
              attr_accessor :amount_discount

              # The price IDs that this adjustment applies to.
              sig { returns(T::Array[String]) }
              attr_accessor :applies_to_price_ids

              # The filters that determine which prices to apply this adjustment to.
              sig do
                returns(
                  T::Array[
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter
                  ]
                )
              end
              attr_accessor :filters

              # True for adjustments that apply to an entire invocice, false for adjustments
              # that apply to only one price.
              sig { returns(T::Boolean) }
              attr_accessor :is_invoice_level

              # The plan phase in which this adjustment is active.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :plan_phase_order

              # The reason for the adjustment.
              sig { returns(T.nilable(String)) }
              attr_accessor :reason

              sig do
                params(
                  id: String,
                  amount_discount: String,
                  applies_to_price_ids: T::Array[String],
                  filters:
                    T::Array[
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::OrHash
                    ],
                  is_invoice_level: T::Boolean,
                  plan_phase_order: T.nilable(Integer),
                  reason: T.nilable(String),
                  adjustment_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # The amount by which to discount the prices this adjustment applies to in a given
                # billing period.
                amount_discount:,
                # The price IDs that this adjustment applies to.
                applies_to_price_ids:,
                # The filters that determine which prices to apply this adjustment to.
                filters:,
                # True for adjustments that apply to an entire invocice, false for adjustments
                # that apply to only one price.
                is_invoice_level:,
                # The plan phase in which this adjustment is active.
                plan_phase_order:,
                # The reason for the adjustment.
                reason:,
                adjustment_type: :amount_discount
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    amount_discount: String,
                    applies_to_price_ids: T::Array[String],
                    filters:
                      T::Array[
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter
                      ],
                    is_invoice_level: T::Boolean,
                    plan_phase_order: T.nilable(Integer),
                    reason: T.nilable(String)
                  }
                )
              end
              def to_hash
              end

              class Filter < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter,
                      Orb::Internal::AnyHash
                    )
                  end

                # The property of the price to filter on.
                sig do
                  returns(
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                  )
                end
                attr_accessor :field

                # Should prices that match the filter be included or excluded.
                sig do
                  returns(
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::Operator::TaggedSymbol
                  )
                end
                attr_accessor :operator

                # The IDs or values that match this filter.
                sig { returns(T::Array[String]) }
                attr_accessor :values

                sig do
                  params(
                    field:
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::Field::OrSymbol,
                    operator:
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::Operator::OrSymbol,
                    values: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The property of the price to filter on.
                  field:,
                  # Should prices that match the filter be included or excluded.
                  operator:,
                  # The IDs or values that match this filter.
                  values:
                )
                end

                sig do
                  override.returns(
                    {
                      field:
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol,
                      operator:
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::Operator::TaggedSymbol,
                      values: T::Array[String]
                    }
                  )
                end
                def to_hash
                end

                # The property of the price to filter on.
                module Field
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::Field
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PRICE_ID =
                    T.let(
                      :price_id,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                    )
                  ITEM_ID =
                    T.let(
                      :item_id,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                    )
                  PRICE_TYPE =
                    T.let(
                      :price_type,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                    )
                  CURRENCY =
                    T.let(
                      :currency,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                    )
                  PRICING_UNIT_ID =
                    T.let(
                      :pricing_unit_id,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::Field::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                # Should prices that match the filter be included or excluded.
                module Operator
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::Operator
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INCLUDES =
                    T.let(
                      :includes,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::Operator::TaggedSymbol
                    )
                  EXCLUDES =
                    T.let(
                      :excludes,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::Operator::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::AmountDiscount::Filter::Operator::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            class PercentageDiscount < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(Symbol) }
              attr_accessor :adjustment_type

              # The price IDs that this adjustment applies to.
              sig { returns(T::Array[String]) }
              attr_accessor :applies_to_price_ids

              # The filters that determine which prices to apply this adjustment to.
              sig do
                returns(
                  T::Array[
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter
                  ]
                )
              end
              attr_accessor :filters

              # True for adjustments that apply to an entire invocice, false for adjustments
              # that apply to only one price.
              sig { returns(T::Boolean) }
              attr_accessor :is_invoice_level

              # The percentage (as a value between 0 and 1) by which to discount the price
              # intervals this adjustment applies to in a given billing period.
              sig { returns(Float) }
              attr_accessor :percentage_discount

              # The plan phase in which this adjustment is active.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :plan_phase_order

              # The reason for the adjustment.
              sig { returns(T.nilable(String)) }
              attr_accessor :reason

              sig do
                params(
                  id: String,
                  applies_to_price_ids: T::Array[String],
                  filters:
                    T::Array[
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::OrHash
                    ],
                  is_invoice_level: T::Boolean,
                  percentage_discount: Float,
                  plan_phase_order: T.nilable(Integer),
                  reason: T.nilable(String),
                  adjustment_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # The price IDs that this adjustment applies to.
                applies_to_price_ids:,
                # The filters that determine which prices to apply this adjustment to.
                filters:,
                # True for adjustments that apply to an entire invocice, false for adjustments
                # that apply to only one price.
                is_invoice_level:,
                # The percentage (as a value between 0 and 1) by which to discount the price
                # intervals this adjustment applies to in a given billing period.
                percentage_discount:,
                # The plan phase in which this adjustment is active.
                plan_phase_order:,
                # The reason for the adjustment.
                reason:,
                adjustment_type: :percentage_discount
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    filters:
                      T::Array[
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter
                      ],
                    is_invoice_level: T::Boolean,
                    percentage_discount: Float,
                    plan_phase_order: T.nilable(Integer),
                    reason: T.nilable(String)
                  }
                )
              end
              def to_hash
              end

              class Filter < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter,
                      Orb::Internal::AnyHash
                    )
                  end

                # The property of the price to filter on.
                sig do
                  returns(
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                  )
                end
                attr_accessor :field

                # Should prices that match the filter be included or excluded.
                sig do
                  returns(
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::Operator::TaggedSymbol
                  )
                end
                attr_accessor :operator

                # The IDs or values that match this filter.
                sig { returns(T::Array[String]) }
                attr_accessor :values

                sig do
                  params(
                    field:
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::Field::OrSymbol,
                    operator:
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::Operator::OrSymbol,
                    values: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The property of the price to filter on.
                  field:,
                  # Should prices that match the filter be included or excluded.
                  operator:,
                  # The IDs or values that match this filter.
                  values:
                )
                end

                sig do
                  override.returns(
                    {
                      field:
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol,
                      operator:
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::Operator::TaggedSymbol,
                      values: T::Array[String]
                    }
                  )
                end
                def to_hash
                end

                # The property of the price to filter on.
                module Field
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::Field
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PRICE_ID =
                    T.let(
                      :price_id,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                    )
                  ITEM_ID =
                    T.let(
                      :item_id,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                    )
                  PRICE_TYPE =
                    T.let(
                      :price_type,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                    )
                  CURRENCY =
                    T.let(
                      :currency,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                    )
                  PRICING_UNIT_ID =
                    T.let(
                      :pricing_unit_id,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::Field::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                # Should prices that match the filter be included or excluded.
                module Operator
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::Operator
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INCLUDES =
                    T.let(
                      :includes,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::Operator::TaggedSymbol
                    )
                  EXCLUDES =
                    T.let(
                      :excludes,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::Operator::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::PercentageDiscount::Filter::Operator::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            class Minimum < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(Symbol) }
              attr_accessor :adjustment_type

              # The price IDs that this adjustment applies to.
              sig { returns(T::Array[String]) }
              attr_accessor :applies_to_price_ids

              # The filters that determine which prices to apply this adjustment to.
              sig do
                returns(
                  T::Array[
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter
                  ]
                )
              end
              attr_accessor :filters

              # True for adjustments that apply to an entire invocice, false for adjustments
              # that apply to only one price.
              sig { returns(T::Boolean) }
              attr_accessor :is_invoice_level

              # The item ID that revenue from this minimum will be attributed to.
              sig { returns(String) }
              attr_accessor :item_id

              # The minimum amount to charge in a given billing period for the prices this
              # adjustment applies to.
              sig { returns(String) }
              attr_accessor :minimum_amount

              # The plan phase in which this adjustment is active.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :plan_phase_order

              # The reason for the adjustment.
              sig { returns(T.nilable(String)) }
              attr_accessor :reason

              sig do
                params(
                  id: String,
                  applies_to_price_ids: T::Array[String],
                  filters:
                    T::Array[
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::OrHash
                    ],
                  is_invoice_level: T::Boolean,
                  item_id: String,
                  minimum_amount: String,
                  plan_phase_order: T.nilable(Integer),
                  reason: T.nilable(String),
                  adjustment_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # The price IDs that this adjustment applies to.
                applies_to_price_ids:,
                # The filters that determine which prices to apply this adjustment to.
                filters:,
                # True for adjustments that apply to an entire invocice, false for adjustments
                # that apply to only one price.
                is_invoice_level:,
                # The item ID that revenue from this minimum will be attributed to.
                item_id:,
                # The minimum amount to charge in a given billing period for the prices this
                # adjustment applies to.
                minimum_amount:,
                # The plan phase in which this adjustment is active.
                plan_phase_order:,
                # The reason for the adjustment.
                reason:,
                adjustment_type: :minimum
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    filters:
                      T::Array[
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter
                      ],
                    is_invoice_level: T::Boolean,
                    item_id: String,
                    minimum_amount: String,
                    plan_phase_order: T.nilable(Integer),
                    reason: T.nilable(String)
                  }
                )
              end
              def to_hash
              end

              class Filter < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter,
                      Orb::Internal::AnyHash
                    )
                  end

                # The property of the price to filter on.
                sig do
                  returns(
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::Field::TaggedSymbol
                  )
                end
                attr_accessor :field

                # Should prices that match the filter be included or excluded.
                sig do
                  returns(
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::Operator::TaggedSymbol
                  )
                end
                attr_accessor :operator

                # The IDs or values that match this filter.
                sig { returns(T::Array[String]) }
                attr_accessor :values

                sig do
                  params(
                    field:
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::Field::OrSymbol,
                    operator:
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::Operator::OrSymbol,
                    values: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The property of the price to filter on.
                  field:,
                  # Should prices that match the filter be included or excluded.
                  operator:,
                  # The IDs or values that match this filter.
                  values:
                )
                end

                sig do
                  override.returns(
                    {
                      field:
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::Field::TaggedSymbol,
                      operator:
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::Operator::TaggedSymbol,
                      values: T::Array[String]
                    }
                  )
                end
                def to_hash
                end

                # The property of the price to filter on.
                module Field
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::Field
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PRICE_ID =
                    T.let(
                      :price_id,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::Field::TaggedSymbol
                    )
                  ITEM_ID =
                    T.let(
                      :item_id,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::Field::TaggedSymbol
                    )
                  PRICE_TYPE =
                    T.let(
                      :price_type,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::Field::TaggedSymbol
                    )
                  CURRENCY =
                    T.let(
                      :currency,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::Field::TaggedSymbol
                    )
                  PRICING_UNIT_ID =
                    T.let(
                      :pricing_unit_id,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::Field::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::Field::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                # Should prices that match the filter be included or excluded.
                module Operator
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::Operator
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INCLUDES =
                    T.let(
                      :includes,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::Operator::TaggedSymbol
                    )
                  EXCLUDES =
                    T.let(
                      :excludes,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::Operator::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Minimum::Filter::Operator::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            class Maximum < Orb::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum,
                    Orb::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :id

              sig { returns(Symbol) }
              attr_accessor :adjustment_type

              # The price IDs that this adjustment applies to.
              sig { returns(T::Array[String]) }
              attr_accessor :applies_to_price_ids

              # The filters that determine which prices to apply this adjustment to.
              sig do
                returns(
                  T::Array[
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter
                  ]
                )
              end
              attr_accessor :filters

              # True for adjustments that apply to an entire invocice, false for adjustments
              # that apply to only one price.
              sig { returns(T::Boolean) }
              attr_accessor :is_invoice_level

              # The maximum amount to charge in a given billing period for the prices this
              # adjustment applies to.
              sig { returns(String) }
              attr_accessor :maximum_amount

              # The plan phase in which this adjustment is active.
              sig { returns(T.nilable(Integer)) }
              attr_accessor :plan_phase_order

              # The reason for the adjustment.
              sig { returns(T.nilable(String)) }
              attr_accessor :reason

              sig do
                params(
                  id: String,
                  applies_to_price_ids: T::Array[String],
                  filters:
                    T::Array[
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::OrHash
                    ],
                  is_invoice_level: T::Boolean,
                  maximum_amount: String,
                  plan_phase_order: T.nilable(Integer),
                  reason: T.nilable(String),
                  adjustment_type: Symbol
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # The price IDs that this adjustment applies to.
                applies_to_price_ids:,
                # The filters that determine which prices to apply this adjustment to.
                filters:,
                # True for adjustments that apply to an entire invocice, false for adjustments
                # that apply to only one price.
                is_invoice_level:,
                # The maximum amount to charge in a given billing period for the prices this
                # adjustment applies to.
                maximum_amount:,
                # The plan phase in which this adjustment is active.
                plan_phase_order:,
                # The reason for the adjustment.
                reason:,
                adjustment_type: :maximum
              )
              end

              sig do
                override.returns(
                  {
                    id: String,
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    filters:
                      T::Array[
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter
                      ],
                    is_invoice_level: T::Boolean,
                    maximum_amount: String,
                    plan_phase_order: T.nilable(Integer),
                    reason: T.nilable(String)
                  }
                )
              end
              def to_hash
              end

              class Filter < Orb::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter,
                      Orb::Internal::AnyHash
                    )
                  end

                # The property of the price to filter on.
                sig do
                  returns(
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::Field::TaggedSymbol
                  )
                end
                attr_accessor :field

                # Should prices that match the filter be included or excluded.
                sig do
                  returns(
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::Operator::TaggedSymbol
                  )
                end
                attr_accessor :operator

                # The IDs or values that match this filter.
                sig { returns(T::Array[String]) }
                attr_accessor :values

                sig do
                  params(
                    field:
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::Field::OrSymbol,
                    operator:
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::Operator::OrSymbol,
                    values: T::Array[String]
                  ).returns(T.attached_class)
                end
                def self.new(
                  # The property of the price to filter on.
                  field:,
                  # Should prices that match the filter be included or excluded.
                  operator:,
                  # The IDs or values that match this filter.
                  values:
                )
                end

                sig do
                  override.returns(
                    {
                      field:
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::Field::TaggedSymbol,
                      operator:
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::Operator::TaggedSymbol,
                      values: T::Array[String]
                    }
                  )
                end
                def to_hash
                end

                # The property of the price to filter on.
                module Field
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::Field
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  PRICE_ID =
                    T.let(
                      :price_id,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::Field::TaggedSymbol
                    )
                  ITEM_ID =
                    T.let(
                      :item_id,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::Field::TaggedSymbol
                    )
                  PRICE_TYPE =
                    T.let(
                      :price_type,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::Field::TaggedSymbol
                    )
                  CURRENCY =
                    T.let(
                      :currency,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::Field::TaggedSymbol
                    )
                  PRICING_UNIT_ID =
                    T.let(
                      :pricing_unit_id,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::Field::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::Field::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                # Should prices that match the filter be included or excluded.
                module Operator
                  extend Orb::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::Operator
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INCLUDES =
                    T.let(
                      :includes,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::Operator::TaggedSymbol
                    )
                  EXCLUDES =
                    T.let(
                      :excludes,
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::Operator::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Maximum::Filter::Operator::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::Adjustment::Variants
                ]
              )
            end
            def self.variants
            end
          end

          class PlanPhase < Orb::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::PlanPhase,
                  Orb::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            # How many terms of length `duration_unit` this phase is active for. If null, this
            # phase is evergreen and active indefinitely
            sig { returns(T.nilable(Integer)) }
            attr_accessor :duration

            sig do
              returns(
                T.nilable(
                  Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::PlanPhase::DurationUnit::TaggedSymbol
                )
              )
            end
            attr_accessor :duration_unit

            sig { returns(String) }
            attr_accessor :name

            # Determines the ordering of the phase in a plan's lifecycle. 1 = first phase.
            sig { returns(Integer) }
            attr_accessor :order

            sig do
              params(
                id: String,
                description: T.nilable(String),
                duration: T.nilable(Integer),
                duration_unit:
                  T.nilable(
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::PlanPhase::DurationUnit::OrSymbol
                  ),
                name: String,
                order: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              description:,
              # How many terms of length `duration_unit` this phase is active for. If null, this
              # phase is evergreen and active indefinitely
              duration:,
              duration_unit:,
              name:,
              # Determines the ordering of the phase in a plan's lifecycle. 1 = first phase.
              order:
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  description: T.nilable(String),
                  duration: T.nilable(Integer),
                  duration_unit:
                    T.nilable(
                      Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::PlanPhase::DurationUnit::TaggedSymbol
                    ),
                  name: String,
                  order: Integer
                }
              )
            end
            def to_hash
            end

            module DurationUnit
              extend Orb::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::PlanPhase::DurationUnit
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DAILY =
                T.let(
                  :daily,
                  Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::PlanPhase::DurationUnit::TaggedSymbol
                )
              MONTHLY =
                T.let(
                  :monthly,
                  Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::PlanPhase::DurationUnit::TaggedSymbol
                )
              QUARTERLY =
                T.let(
                  :quarterly,
                  Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::PlanPhase::DurationUnit::TaggedSymbol
                )
              SEMI_ANNUAL =
                T.let(
                  :semi_annual,
                  Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::PlanPhase::DurationUnit::TaggedSymbol
                )
              ANNUAL =
                T.let(
                  :annual,
                  Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::PlanPhase::DurationUnit::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Orb::Models::Plans::ExternalPlanID::VersionRetrieveResponse::PlanPhase::DurationUnit::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
