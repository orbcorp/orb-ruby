# typed: strong

module Orb
  module Models
    class SubscriptionSchedulePlanChangeParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(Symbol) }
      attr_accessor :change_option

      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment])) }
      attr_accessor :add_adjustments

      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice])) }
      attr_accessor :add_prices

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :align_billing_with_plan_change_date

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :auto_collection

      sig { returns(T.nilable(Symbol)) }
      attr_accessor :billing_cycle_alignment

      sig do
        returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAnchorConfiguration))
      end
      attr_accessor :billing_cycle_anchor_configuration

      sig { returns(T.nilable(Time)) }
      attr_accessor :change_date

      sig { returns(T.nilable(String)) }
      attr_accessor :coupon_redemption_code

      sig { returns(T.nilable(Float)) }
      attr_accessor :credits_overage_rate

      sig { returns(T.nilable(String)) }
      attr_accessor :default_invoice_memo

      sig { returns(T.nilable(String)) }
      attr_accessor :external_plan_id

      sig { returns(T.nilable(String)) }
      attr_accessor :filter

      sig { returns(T.nilable(Integer)) }
      attr_accessor :initial_phase_order

      sig { returns(T.nilable(String)) }
      attr_accessor :invoicing_threshold

      sig { returns(T.nilable(Integer)) }
      attr_accessor :net_terms

      sig { returns(T.nilable(Float)) }
      attr_accessor :per_credit_overage_amount

      sig { returns(T.nilable(String)) }
      attr_accessor :plan_id

      sig { returns(T.nilable(Integer)) }
      attr_accessor :plan_version_number

      sig { returns(T.nilable(T::Array[T.anything])) }
      attr_accessor :price_overrides

      sig do
        returns(T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::RemoveAdjustment]))
      end
      attr_accessor :remove_adjustments

      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::RemovePrice])) }
      attr_accessor :remove_prices

      sig do
        returns(T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment]))
      end
      attr_accessor :replace_adjustments

      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice])) }
      attr_accessor :replace_prices

      sig { returns(T.nilable(Integer)) }
      attr_accessor :trial_duration_days

      sig do
        params(
          change_option: Symbol,
          add_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment]),
          add_prices: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice]),
          align_billing_with_plan_change_date: T.nilable(T::Boolean),
          auto_collection: T.nilable(T::Boolean),
          billing_cycle_alignment: T.nilable(Symbol),
          billing_cycle_anchor_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAnchorConfiguration),
          change_date: T.nilable(Time),
          coupon_redemption_code: T.nilable(String),
          credits_overage_rate: T.nilable(Float),
          default_invoice_memo: T.nilable(String),
          external_plan_id: T.nilable(String),
          filter: T.nilable(String),
          initial_phase_order: T.nilable(Integer),
          invoicing_threshold: T.nilable(String),
          net_terms: T.nilable(Integer),
          per_credit_overage_amount: T.nilable(Float),
          plan_id: T.nilable(String),
          plan_version_number: T.nilable(Integer),
          price_overrides: T.nilable(T::Array[T.anything]),
          remove_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::RemoveAdjustment]),
          remove_prices: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::RemovePrice]),
          replace_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment]),
          replace_prices: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice]),
          trial_duration_days: T.nilable(Integer),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(
        change_option:,
        add_adjustments: nil,
        add_prices: nil,
        align_billing_with_plan_change_date: nil,
        auto_collection: nil,
        billing_cycle_alignment: nil,
        billing_cycle_anchor_configuration: nil,
        change_date: nil,
        coupon_redemption_code: nil,
        credits_overage_rate: nil,
        default_invoice_memo: nil,
        external_plan_id: nil,
        filter: nil,
        initial_phase_order: nil,
        invoicing_threshold: nil,
        net_terms: nil,
        per_credit_overage_amount: nil,
        plan_id: nil,
        plan_version_number: nil,
        price_overrides: nil,
        remove_adjustments: nil,
        remove_prices: nil,
        replace_adjustments: nil,
        replace_prices: nil,
        trial_duration_days: nil,
        request_options: {}
      ); end

      sig do
        override.returns(
          {
            change_option: Symbol,
            add_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment]),
            add_prices: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice]),
            align_billing_with_plan_change_date: T.nilable(T::Boolean),
            auto_collection: T.nilable(T::Boolean),
            billing_cycle_alignment: T.nilable(Symbol),
            billing_cycle_anchor_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAnchorConfiguration),
            change_date: T.nilable(Time),
            coupon_redemption_code: T.nilable(String),
            credits_overage_rate: T.nilable(Float),
            default_invoice_memo: T.nilable(String),
            external_plan_id: T.nilable(String),
            filter: T.nilable(String),
            initial_phase_order: T.nilable(Integer),
            invoicing_threshold: T.nilable(String),
            net_terms: T.nilable(Integer),
            per_credit_overage_amount: T.nilable(Float),
            plan_id: T.nilable(String),
            plan_version_number: T.nilable(Integer),
            price_overrides: T.nilable(T::Array[T.anything]),
            remove_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::RemoveAdjustment]),
            remove_prices: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::RemovePrice]),
            replace_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment]),
            replace_prices: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice]),
            trial_duration_days: T.nilable(Integer),
            request_options: Orb::RequestOptions
          }
        )
      end
      def to_hash; end

      class ChangeOption < Orb::Enum
        abstract!

        REQUESTED_DATE = :requested_date
        END_OF_SUBSCRIPTION_TERM = :end_of_subscription_term
        IMMEDIATE = :immediate

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class AddAdjustment < Orb::BaseModel
        sig do
          returns(
            T.any(
              Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMaximum
            )
          )
        end
        attr_accessor :adjustment

        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig { returns(T.nilable(Time)) }
        attr_accessor :start_date

        sig do
          params(
            adjustment: T.any(
              Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMaximum
            ),
            end_date: T.nilable(Time),
            plan_phase_order: T.nilable(Integer),
            start_date: T.nilable(Time)
          ).void
        end
        def initialize(adjustment:, end_date: nil, plan_phase_order: nil, start_date: nil); end

        sig do
          override.returns(
            {
              adjustment: T.any(
                Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMaximum
              ),
              end_date: T.nilable(Time),
              plan_phase_order: T.nilable(Integer),
              start_date: T.nilable(Time)
            }
          )
        end
        def to_hash; end

        class Adjustment < Orb::Union
          abstract!

          class NewPercentageDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(Float) }
            attr_accessor :percentage_discount

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                percentage_discount: Float,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              ).void
            end
            def initialize(
              applies_to_price_ids:,
              percentage_discount:,
              is_invoice_level: nil,
              adjustment_type: :percentage_discount
            )
            end

            sig do
              override.returns(
                {
                  adjustment_type: Symbol,
                  applies_to_price_ids: T::Array[String],
                  percentage_discount: Float,
                  is_invoice_level: T::Boolean
                }
              )
            end
            def to_hash; end
          end

          class NewUsageDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(Float) }
            attr_accessor :usage_discount

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                usage_discount: Float,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              ).void
            end
            def initialize(
              applies_to_price_ids:,
              usage_discount:,
              is_invoice_level: nil,
              adjustment_type: :usage_discount
            )
            end

            sig do
              override.returns(
                {
                  adjustment_type: Symbol,
                  applies_to_price_ids: T::Array[String],
                  usage_discount: Float,
                  is_invoice_level: T::Boolean
                }
              )
            end
            def to_hash; end
          end

          class NewAmountDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(String) }
            attr_accessor :amount_discount

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                amount_discount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              ).void
            end
            def initialize(
              amount_discount:,
              applies_to_price_ids:,
              is_invoice_level: nil,
              adjustment_type: :amount_discount
            )
            end

            sig do
              override.returns(
                {
                  adjustment_type: Symbol,
                  amount_discount: String,
                  applies_to_price_ids: T::Array[String],
                  is_invoice_level: T::Boolean
                }
              )
            end
            def to_hash; end
          end

          class NewMinimum < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(String) }
            attr_accessor :minimum_amount

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                item_id: String,
                minimum_amount: String,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              ).void
            end
            def initialize(
              applies_to_price_ids:,
              item_id:,
              minimum_amount:,
              is_invoice_level: nil,
              adjustment_type: :minimum
            )
            end

            sig do
              override.returns(
                {
                  adjustment_type: Symbol,
                  applies_to_price_ids: T::Array[String],
                  item_id: String,
                  minimum_amount: String,
                  is_invoice_level: T::Boolean
                }
              )
            end
            def to_hash; end
          end

          class NewMaximum < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(String) }
            attr_accessor :maximum_amount

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                maximum_amount: String,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              ).void
            end
            def initialize(
              applies_to_price_ids:,
              maximum_amount:,
              is_invoice_level: nil,
              adjustment_type: :maximum
            )
            end

            sig do
              override.returns(
                {
                  adjustment_type: Symbol,
                  applies_to_price_ids: T::Array[String],
                  maximum_amount: String,
                  is_invoice_level: T::Boolean
                }
              )
            end
            def to_hash; end
          end

          sig do
            override.returns(
              [
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewPercentageDiscount
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewUsageDiscount
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewAmountDiscount
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMinimum
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddAdjustment::Adjustment::NewMaximum
                ]
              ]
            )
          end
          private_class_method def self.variants; end
        end
      end

      class AddPrice < Orb::BaseModel
        sig do
          returns(T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Discount]))
        end
        attr_accessor :discounts

        sig { returns(T.nilable(Time)) }
        attr_accessor :end_date

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig { returns(T.nilable(Integer)) }
        attr_accessor :plan_phase_order

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice
              )
            )
          )
        end
        attr_accessor :price

        sig { returns(T.nilable(String)) }
        attr_accessor :price_id

        sig { returns(T.nilable(Time)) }
        attr_accessor :start_date

        sig do
          params(
            discounts: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Discount]),
            end_date: T.nilable(Time),
            external_price_id: T.nilable(String),
            maximum_amount: T.nilable(String),
            minimum_amount: T.nilable(String),
            plan_phase_order: T.nilable(Integer),
            price: T.nilable(
              T.any(
                Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice
              )
            ),
            price_id: T.nilable(String),
            start_date: T.nilable(Time)
          ).void
        end
        def initialize(
          discounts: nil,
          end_date: nil,
          external_price_id: nil,
          maximum_amount: nil,
          minimum_amount: nil,
          plan_phase_order: nil,
          price: nil,
          price_id: nil,
          start_date: nil
        ); end

        sig do
          override.returns(
            {
              discounts: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Discount]),
              end_date: T.nilable(Time),
              external_price_id: T.nilable(String),
              maximum_amount: T.nilable(String),
              minimum_amount: T.nilable(String),
              plan_phase_order: T.nilable(Integer),
              price: T.nilable(
                T.any(
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice
                )
              ),
              price_id: T.nilable(String),
              start_date: T.nilable(Time)
            }
          )
        end
        def to_hash; end

        class Discount < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :discount_type

          sig { returns(T.nilable(String)) }
          attr_accessor :amount_discount

          sig { returns(T.nilable(Float)) }
          attr_accessor :percentage_discount

          sig { returns(T.nilable(Float)) }
          attr_accessor :usage_discount

          sig do
            params(
              discount_type: Symbol,
              amount_discount: T.nilable(String),
              percentage_discount: T.nilable(Float),
              usage_discount: T.nilable(Float)
            ).void
          end
          def initialize(discount_type:, amount_discount: nil, percentage_discount: nil, usage_discount: nil)
          end

          sig do
            override.returns(
              {
                discount_type: Symbol,
                amount_discount: T.nilable(String),
                percentage_discount: T.nilable(Float),
                usage_discount: T.nilable(Float)
              }
            )
          end
          def to_hash; end

          class DiscountType < Orb::Enum
            abstract!

            PERCENTAGE = :percentage
            USAGE = :usage
            AMOUNT = :amount

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class Price < Orb::Union
          abstract!

          class NewSubscriptionUnitPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig)
            end
            attr_accessor :unit_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                unit_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              unit_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :unit
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  unit_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class UnitConfig < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :unit_amount

              sig { params(unit_amount: String).void }
              def initialize(unit_amount:); end

              sig { override.returns({unit_amount: String}) }
              def to_hash; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionPackagePrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig)
            end
            attr_accessor :package_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                package_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              package_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :package
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  package_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class PackageConfig < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :package_amount

              sig { returns(Integer) }
              attr_accessor :package_size

              sig { params(package_amount: String, package_size: Integer).void }
              def initialize(package_amount:, package_size:); end

              sig { override.returns({package_amount: String, package_size: Integer}) }
              def to_hash; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionMatrixPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig do
              returns(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig)
            end
            attr_accessor :matrix_config

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                matrix_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              matrix_config:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :matrix
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  matrix_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class MatrixConfig < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :default_unit_amount

              sig { returns(T::Array[T.nilable(String)]) }
              attr_accessor :dimensions

              sig do
                returns(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue])
              end
              attr_accessor :matrix_values

              sig do
                params(
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue]
                ).void
              end
              def initialize(default_unit_amount:, dimensions:, matrix_values:); end

              sig do
                override.returns(
                  {
                    default_unit_amount: String,
                    dimensions: T::Array[T.nilable(String)],
                    matrix_values: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue]
                  }
                )
              end
              def to_hash; end

              class MatrixValue < Orb::BaseModel
                sig { returns(T::Array[T.nilable(String)]) }
                attr_accessor :dimension_values

                sig { returns(String) }
                attr_accessor :unit_amount

                sig { params(dimension_values: T::Array[T.nilable(String)], unit_amount: String).void }
                def initialize(dimension_values:, unit_amount:); end

                sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
                def to_hash; end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionTieredPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig)
            end
            attr_accessor :tiered_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              tiered_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class TieredConfig < Orb::BaseModel
              sig do
                returns(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier])
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                ).void
              end
              def initialize(tiers:); end

              sig do
                override.returns({tiers: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]})
              end
              def to_hash; end

              class Tier < Orb::BaseModel
                sig { returns(Float) }
                attr_accessor :first_unit

                sig { returns(String) }
                attr_accessor :unit_amount

                sig { returns(T.nilable(Float)) }
                attr_accessor :last_unit

                sig { params(first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)).void }
                def initialize(first_unit:, unit_amount:, last_unit: nil); end

                sig do
                  override.returns({first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)})
                end
                def to_hash; end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionTieredBpsPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig)
            end
            attr_accessor :tiered_bps_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_bps_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              tiered_bps_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered_bps
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_bps_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class TieredBpsConfig < Orb::BaseModel
              sig do
                returns(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier])
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier]
                ).void
              end
              def initialize(tiers:); end

              sig do
                override.returns({tiers: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier]})
              end
              def to_hash; end

              class Tier < Orb::BaseModel
                sig { returns(Float) }
                attr_accessor :bps

                sig { returns(String) }
                attr_accessor :minimum_amount

                sig { returns(T.nilable(String)) }
                attr_accessor :maximum_amount

                sig { returns(T.nilable(String)) }
                attr_accessor :per_unit_maximum

                sig do
                  params(
                    bps: Float,
                    minimum_amount: String,
                    maximum_amount: T.nilable(String),
                    per_unit_maximum: T.nilable(String)
                  ).void
                end
                def initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil); end

                sig do
                  override.returns(
                    {
                      bps: Float,
                      minimum_amount: String,
                      maximum_amount: T.nilable(String),
                      per_unit_maximum: T.nilable(String)
                    }
                  )
                end
                def to_hash; end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionBpsPrice < Orb::BaseModel
            sig do
              returns(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig)
            end
            attr_accessor :bps_config

            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bps_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig,
                cadence: Symbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              bps_config:,
              cadence:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :bps
            ); end

            sig do
              override.returns(
                {
                  bps_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig,
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(
                    T::Hash[Symbol,
                            T.nilable(String)]
                  ),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class BpsConfig < Orb::BaseModel
              sig { returns(Float) }
              attr_accessor :bps

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_maximum

              sig { params(bps: Float, per_unit_maximum: T.nilable(String)).void }
              def initialize(bps:, per_unit_maximum: nil); end

              sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
              def to_hash; end
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionBulkBpsPrice < Orb::BaseModel
            sig do
              returns(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig)
            end
            attr_accessor :bulk_bps_config

            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_bps_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
                cadence: Symbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              bulk_bps_config:,
              cadence:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :bulk_bps
            ); end

            sig do
              override.returns(
                {
                  bulk_bps_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(
                    T::Hash[Symbol,
                            T.nilable(String)]
                  ),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class BulkBpsConfig < Orb::BaseModel
              sig do
                returns(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier])
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
                ).void
              end
              def initialize(tiers:); end

              sig do
                override.returns({tiers: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]})
              end
              def to_hash; end

              class Tier < Orb::BaseModel
                sig { returns(Float) }
                attr_accessor :bps

                sig { returns(T.nilable(String)) }
                attr_accessor :maximum_amount

                sig { returns(T.nilable(String)) }
                attr_accessor :per_unit_maximum

                sig do
                  params(
                    bps: Float,
                    maximum_amount: T.nilable(String),
                    per_unit_maximum: T.nilable(String)
                  ).void
                end
                def initialize(bps:, maximum_amount: nil, per_unit_maximum: nil); end

                sig do
                  override.returns(
                    {
                      bps: Float,
                      maximum_amount: T.nilable(String),
                      per_unit_maximum: T.nilable(String)
                    }
                  )
                end
                def to_hash; end
              end
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionBulkPrice < Orb::BaseModel
            sig do
              returns(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig)
            end
            attr_accessor :bulk_config

            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig,
                cadence: Symbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              bulk_config:,
              cadence:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :bulk
            ); end

            sig do
              override.returns(
                {
                  bulk_config: Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig,
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(
                    T::Hash[Symbol,
                            T.nilable(String)]
                  ),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class BulkConfig < Orb::BaseModel
              sig do
                returns(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier])
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                ).void
              end
              def initialize(tiers:); end

              sig do
                override.returns({tiers: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]})
              end
              def to_hash; end

              class Tier < Orb::BaseModel
                sig { returns(String) }
                attr_accessor :unit_amount

                sig { returns(T.nilable(Float)) }
                attr_accessor :maximum_units

                sig { params(unit_amount: String, maximum_units: T.nilable(Float)).void }
                def initialize(unit_amount:, maximum_units: nil); end

                sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
                def to_hash; end
              end
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionThresholdTotalAmountPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :threshold_total_amount_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                threshold_total_amount_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              threshold_total_amount_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :threshold_total_amount
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  threshold_total_amount_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionTieredPackagePrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_package_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_package_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              tiered_package_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered_package
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_package_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionTieredWithMinimumPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_with_minimum_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              tiered_with_minimum_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered_with_minimum
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionUnitWithPercentPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :unit_with_percent_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                unit_with_percent_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              unit_with_percent_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :unit_with_percent
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  unit_with_percent_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionPackageWithAllocationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :package_with_allocation_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                package_with_allocation_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              package_with_allocation_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :package_with_allocation
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  package_with_allocation_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionTierWithProrationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_with_proration_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              tiered_with_proration_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered_with_proration
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_with_proration_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionUnitWithProrationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :unit_with_proration_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                unit_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              unit_with_proration_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :unit_with_proration
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  unit_with_proration_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionGroupedAllocationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_allocation_config

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                grouped_allocation_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              grouped_allocation_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :grouped_allocation
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  grouped_allocation_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionGroupedWithProratedMinimumPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_with_prorated_minimum_config

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              grouped_with_prorated_minimum_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :grouped_with_prorated_minimum
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionBulkWithProrationPrice < Orb::BaseModel
            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :bulk_with_proration_config

            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_with_proration_config: T::Hash[Symbol, T.anything],
                cadence: Symbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              bulk_with_proration_config:,
              cadence:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :bulk_with_proration
            ); end

            sig do
              override.returns(
                {
                  bulk_with_proration_config: T::Hash[Symbol, T.anything],
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          sig do
            override.returns(
              [
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackagePrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionMatrixPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredBpsPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBpsPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkBpsPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredPackagePrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice
                ]
              ]
            )
          end
          private_class_method def self.variants; end
        end
      end

      class BillingCycleAlignment < Orb::Enum
        abstract!

        UNCHANGED = T.let(:unchanged, T.nilable(Symbol))
        PLAN_CHANGE_DATE = T.let(:plan_change_date, T.nilable(Symbol))
        START_OF_MONTH = T.let(:start_of_month, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class BillingCycleAnchorConfiguration < Orb::BaseModel
        sig { returns(Integer) }
        attr_accessor :day

        sig { returns(T.nilable(Integer)) }
        attr_accessor :month

        sig { returns(T.nilable(Integer)) }
        attr_accessor :year

        sig { params(day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)).void }
        def initialize(day:, month: nil, year: nil); end

        sig { override.returns({day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)}) }
        def to_hash; end
      end

      class RemoveAdjustment < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :adjustment_id

        sig { params(adjustment_id: String).void }
        def initialize(adjustment_id:); end

        sig { override.returns({adjustment_id: String}) }
        def to_hash; end
      end

      class RemovePrice < Orb::BaseModel
        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(String)) }
        attr_accessor :price_id

        sig { params(external_price_id: T.nilable(String), price_id: T.nilable(String)).void }
        def initialize(external_price_id: nil, price_id: nil); end

        sig { override.returns({external_price_id: T.nilable(String), price_id: T.nilable(String)}) }
        def to_hash; end
      end

      class ReplaceAdjustment < Orb::BaseModel
        sig do
          returns(
            T.any(
              Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMaximum
            )
          )
        end
        attr_accessor :adjustment

        sig { returns(String) }
        attr_accessor :replaces_adjustment_id

        sig do
          params(
            adjustment: T.any(
              Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMaximum
            ),
            replaces_adjustment_id: String
          ).void
        end
        def initialize(adjustment:, replaces_adjustment_id:); end

        sig do
          override.returns(
            {
              adjustment: T.any(
                Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewUsageDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewAmountDiscount, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMinimum, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMaximum
              ),
              replaces_adjustment_id: String
            }
          )
        end
        def to_hash; end

        class Adjustment < Orb::Union
          abstract!

          class NewPercentageDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(Float) }
            attr_accessor :percentage_discount

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                percentage_discount: Float,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              ).void
            end
            def initialize(
              applies_to_price_ids:,
              percentage_discount:,
              is_invoice_level: nil,
              adjustment_type: :percentage_discount
            )
            end

            sig do
              override.returns(
                {
                  adjustment_type: Symbol,
                  applies_to_price_ids: T::Array[String],
                  percentage_discount: Float,
                  is_invoice_level: T::Boolean
                }
              )
            end
            def to_hash; end
          end

          class NewUsageDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(Float) }
            attr_accessor :usage_discount

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                usage_discount: Float,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              ).void
            end
            def initialize(
              applies_to_price_ids:,
              usage_discount:,
              is_invoice_level: nil,
              adjustment_type: :usage_discount
            )
            end

            sig do
              override.returns(
                {
                  adjustment_type: Symbol,
                  applies_to_price_ids: T::Array[String],
                  usage_discount: Float,
                  is_invoice_level: T::Boolean
                }
              )
            end
            def to_hash; end
          end

          class NewAmountDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(String) }
            attr_accessor :amount_discount

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                amount_discount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              ).void
            end
            def initialize(
              amount_discount:,
              applies_to_price_ids:,
              is_invoice_level: nil,
              adjustment_type: :amount_discount
            )
            end

            sig do
              override.returns(
                {
                  adjustment_type: Symbol,
                  amount_discount: String,
                  applies_to_price_ids: T::Array[String],
                  is_invoice_level: T::Boolean
                }
              )
            end
            def to_hash; end
          end

          class NewMinimum < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(String) }
            attr_accessor :minimum_amount

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                item_id: String,
                minimum_amount: String,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              ).void
            end
            def initialize(
              applies_to_price_ids:,
              item_id:,
              minimum_amount:,
              is_invoice_level: nil,
              adjustment_type: :minimum
            )
            end

            sig do
              override.returns(
                {
                  adjustment_type: Symbol,
                  applies_to_price_ids: T::Array[String],
                  item_id: String,
                  minimum_amount: String,
                  is_invoice_level: T::Boolean
                }
              )
            end
            def to_hash; end
          end

          class NewMaximum < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :adjustment_type

            sig { returns(T::Array[String]) }
            attr_accessor :applies_to_price_ids

            sig { returns(String) }
            attr_accessor :maximum_amount

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :is_invoice_level

            sig { params(is_invoice_level: T::Boolean).void }
            attr_writer :is_invoice_level

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                maximum_amount: String,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              ).void
            end
            def initialize(
              applies_to_price_ids:,
              maximum_amount:,
              is_invoice_level: nil,
              adjustment_type: :maximum
            )
            end

            sig do
              override.returns(
                {
                  adjustment_type: Symbol,
                  applies_to_price_ids: T::Array[String],
                  maximum_amount: String,
                  is_invoice_level: T::Boolean
                }
              )
            end
            def to_hash; end
          end

          sig do
            override.returns(
              [
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewUsageDiscount
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewAmountDiscount
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMinimum
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplaceAdjustment::Adjustment::NewMaximum
                ]
              ]
            )
          end
          private_class_method def self.variants; end
        end
      end

      class ReplacePrice < Orb::BaseModel
        sig { returns(String) }
        attr_accessor :replaces_price_id

        sig do
          returns(T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Discount]))
        end
        attr_accessor :discounts

        sig { returns(T.nilable(String)) }
        attr_accessor :external_price_id

        sig { returns(T.nilable(Float)) }
        attr_accessor :fixed_price_quantity

        sig { returns(T.nilable(String)) }
        attr_accessor :maximum_amount

        sig { returns(T.nilable(String)) }
        attr_accessor :minimum_amount

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice
              )
            )
          )
        end
        attr_accessor :price

        sig { returns(T.nilable(String)) }
        attr_accessor :price_id

        sig do
          params(
            replaces_price_id: String,
            discounts: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Discount]),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            maximum_amount: T.nilable(String),
            minimum_amount: T.nilable(String),
            price: T.nilable(
              T.any(
                Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice
              )
            ),
            price_id: T.nilable(String)
          ).void
        end
        def initialize(
          replaces_price_id:,
          discounts: nil,
          external_price_id: nil,
          fixed_price_quantity: nil,
          maximum_amount: nil,
          minimum_amount: nil,
          price: nil,
          price_id: nil
        ); end

        sig do
          override.returns(
            {
              replaces_price_id: String,
              discounts: T.nilable(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Discount]),
              external_price_id: T.nilable(String),
              fixed_price_quantity: T.nilable(Float),
              maximum_amount: T.nilable(String),
              minimum_amount: T.nilable(String),
              price: T.nilable(
                T.any(
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice, Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice
                )
              ),
              price_id: T.nilable(String)
            }
          )
        end
        def to_hash; end

        class Discount < Orb::BaseModel
          sig { returns(Symbol) }
          attr_accessor :discount_type

          sig { returns(T.nilable(String)) }
          attr_accessor :amount_discount

          sig { returns(T.nilable(Float)) }
          attr_accessor :percentage_discount

          sig { returns(T.nilable(Float)) }
          attr_accessor :usage_discount

          sig do
            params(
              discount_type: Symbol,
              amount_discount: T.nilable(String),
              percentage_discount: T.nilable(Float),
              usage_discount: T.nilable(Float)
            ).void
          end
          def initialize(discount_type:, amount_discount: nil, percentage_discount: nil, usage_discount: nil)
          end

          sig do
            override.returns(
              {
                discount_type: Symbol,
                amount_discount: T.nilable(String),
                percentage_discount: T.nilable(Float),
                usage_discount: T.nilable(Float)
              }
            )
          end
          def to_hash; end

          class DiscountType < Orb::Enum
            abstract!

            PERCENTAGE = :percentage
            USAGE = :usage
            AMOUNT = :amount

            sig { override.returns(T::Array[Symbol]) }
            def self.values; end
          end
        end

        class Price < Orb::Union
          abstract!

          class NewSubscriptionUnitPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig)
            end
            attr_accessor :unit_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                unit_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              unit_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :unit
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  unit_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class UnitConfig < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :unit_amount

              sig { params(unit_amount: String).void }
              def initialize(unit_amount:); end

              sig { override.returns({unit_amount: String}) }
              def to_hash; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionPackagePrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig)
            end
            attr_accessor :package_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                package_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              package_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :package
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  package_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class PackageConfig < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :package_amount

              sig { returns(Integer) }
              attr_accessor :package_size

              sig { params(package_amount: String, package_size: Integer).void }
              def initialize(package_amount:, package_size:); end

              sig { override.returns({package_amount: String, package_size: Integer}) }
              def to_hash; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionMatrixPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig do
              returns(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig)
            end
            attr_accessor :matrix_config

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                matrix_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              matrix_config:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :matrix
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  matrix_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class MatrixConfig < Orb::BaseModel
              sig { returns(String) }
              attr_accessor :default_unit_amount

              sig { returns(T::Array[T.nilable(String)]) }
              attr_accessor :dimensions

              sig do
                returns(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue])
              end
              attr_accessor :matrix_values

              sig do
                params(
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue]
                ).void
              end
              def initialize(default_unit_amount:, dimensions:, matrix_values:); end

              sig do
                override.returns(
                  {
                    default_unit_amount: String,
                    dimensions: T::Array[T.nilable(String)],
                    matrix_values: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue]
                  }
                )
              end
              def to_hash; end

              class MatrixValue < Orb::BaseModel
                sig { returns(T::Array[T.nilable(String)]) }
                attr_accessor :dimension_values

                sig { returns(String) }
                attr_accessor :unit_amount

                sig { params(dimension_values: T::Array[T.nilable(String)], unit_amount: String).void }
                def initialize(dimension_values:, unit_amount:); end

                sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
                def to_hash; end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionTieredPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig)
            end
            attr_accessor :tiered_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              tiered_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class TieredConfig < Orb::BaseModel
              sig do
                returns(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier])
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                ).void
              end
              def initialize(tiers:); end

              sig do
                override.returns({tiers: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]})
              end
              def to_hash; end

              class Tier < Orb::BaseModel
                sig { returns(Float) }
                attr_accessor :first_unit

                sig { returns(String) }
                attr_accessor :unit_amount

                sig { returns(T.nilable(Float)) }
                attr_accessor :last_unit

                sig { params(first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)).void }
                def initialize(first_unit:, unit_amount:, last_unit: nil); end

                sig do
                  override.returns({first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)})
                end
                def to_hash; end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionTieredBpsPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig do
              returns(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig)
            end
            attr_accessor :tiered_bps_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_bps_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              tiered_bps_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered_bps
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_bps_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class TieredBpsConfig < Orb::BaseModel
              sig do
                returns(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier])
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier]
                ).void
              end
              def initialize(tiers:); end

              sig do
                override.returns({tiers: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier]})
              end
              def to_hash; end

              class Tier < Orb::BaseModel
                sig { returns(Float) }
                attr_accessor :bps

                sig { returns(String) }
                attr_accessor :minimum_amount

                sig { returns(T.nilable(String)) }
                attr_accessor :maximum_amount

                sig { returns(T.nilable(String)) }
                attr_accessor :per_unit_maximum

                sig do
                  params(
                    bps: Float,
                    minimum_amount: String,
                    maximum_amount: T.nilable(String),
                    per_unit_maximum: T.nilable(String)
                  ).void
                end
                def initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil); end

                sig do
                  override.returns(
                    {
                      bps: Float,
                      minimum_amount: String,
                      maximum_amount: T.nilable(String),
                      per_unit_maximum: T.nilable(String)
                    }
                  )
                end
                def to_hash; end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionBpsPrice < Orb::BaseModel
            sig do
              returns(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig)
            end
            attr_accessor :bps_config

            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bps_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig,
                cadence: Symbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              bps_config:,
              cadence:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :bps
            ); end

            sig do
              override.returns(
                {
                  bps_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig,
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(
                    T::Hash[Symbol,
                            T.nilable(String)]
                  ),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class BpsConfig < Orb::BaseModel
              sig { returns(Float) }
              attr_accessor :bps

              sig { returns(T.nilable(String)) }
              attr_accessor :per_unit_maximum

              sig { params(bps: Float, per_unit_maximum: T.nilable(String)).void }
              def initialize(bps:, per_unit_maximum: nil); end

              sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
              def to_hash; end
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionBulkBpsPrice < Orb::BaseModel
            sig do
              returns(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig)
            end
            attr_accessor :bulk_bps_config

            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_bps_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
                cadence: Symbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              bulk_bps_config:,
              cadence:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :bulk_bps
            ); end

            sig do
              override.returns(
                {
                  bulk_bps_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(
                    T::Hash[Symbol,
                            T.nilable(String)]
                  ),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class BulkBpsConfig < Orb::BaseModel
              sig do
                returns(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier])
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
                ).void
              end
              def initialize(tiers:); end

              sig do
                override.returns({tiers: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]})
              end
              def to_hash; end

              class Tier < Orb::BaseModel
                sig { returns(Float) }
                attr_accessor :bps

                sig { returns(T.nilable(String)) }
                attr_accessor :maximum_amount

                sig { returns(T.nilable(String)) }
                attr_accessor :per_unit_maximum

                sig do
                  params(
                    bps: Float,
                    maximum_amount: T.nilable(String),
                    per_unit_maximum: T.nilable(String)
                  ).void
                end
                def initialize(bps:, maximum_amount: nil, per_unit_maximum: nil); end

                sig do
                  override.returns(
                    {
                      bps: Float,
                      maximum_amount: T.nilable(String),
                      per_unit_maximum: T.nilable(String)
                    }
                  )
                end
                def to_hash; end
              end
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionBulkPrice < Orb::BaseModel
            sig do
              returns(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig)
            end
            attr_accessor :bulk_config

            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig,
                cadence: Symbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              bulk_config:,
              cadence:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :bulk
            ); end

            sig do
              override.returns(
                {
                  bulk_config: Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig,
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(
                    T::Hash[Symbol,
                            T.nilable(String)]
                  ),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class BulkConfig < Orb::BaseModel
              sig do
                returns(T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier])
              end
              attr_accessor :tiers

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                ).void
              end
              def initialize(tiers:); end

              sig do
                override.returns({tiers: T::Array[Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]})
              end
              def to_hash; end

              class Tier < Orb::BaseModel
                sig { returns(String) }
                attr_accessor :unit_amount

                sig { returns(T.nilable(Float)) }
                attr_accessor :maximum_units

                sig { params(unit_amount: String, maximum_units: T.nilable(Float)).void }
                def initialize(unit_amount:, maximum_units: nil); end

                sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
                def to_hash; end
              end
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionThresholdTotalAmountPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :threshold_total_amount_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                threshold_total_amount_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              threshold_total_amount_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :threshold_total_amount
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  threshold_total_amount_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionTieredPackagePrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_package_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_package_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              tiered_package_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered_package
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_package_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionTieredWithMinimumPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_with_minimum_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              tiered_with_minimum_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered_with_minimum
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionUnitWithPercentPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :unit_with_percent_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                unit_with_percent_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              unit_with_percent_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :unit_with_percent
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  unit_with_percent_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionPackageWithAllocationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :package_with_allocation_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                package_with_allocation_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              package_with_allocation_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :package_with_allocation
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  package_with_allocation_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionTierWithProrationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :tiered_with_proration_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              tiered_with_proration_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :tiered_with_proration
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  tiered_with_proration_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionUnitWithProrationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :unit_with_proration_config

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                unit_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              unit_with_proration_config:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :unit_with_proration
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  unit_with_proration_config: T::Hash[Symbol, T.anything],
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionGroupedAllocationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_allocation_config

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                grouped_allocation_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              grouped_allocation_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :grouped_allocation
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  grouped_allocation_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionGroupedWithProratedMinimumPrice < Orb::BaseModel
            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :grouped_with_prorated_minimum_config

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                cadence: Symbol,
                grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              cadence:,
              grouped_with_prorated_minimum_config:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :grouped_with_prorated_minimum
            ); end

            sig do
              override.returns(
                {
                  cadence: Symbol,
                  grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          class NewSubscriptionBulkWithProrationPrice < Orb::BaseModel
            sig { returns(T::Hash[Symbol, T.anything]) }
            attr_accessor :bulk_with_proration_config

            sig { returns(Symbol) }
            attr_accessor :cadence

            sig { returns(String) }
            attr_accessor :item_id

            sig { returns(Symbol) }
            attr_accessor :model_type

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_accessor :billable_metric_id

            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :billed_in_advance

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration))
            end
            attr_accessor :billing_cycle_configuration

            sig { returns(T.nilable(Float)) }
            attr_accessor :conversion_rate

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            sig { returns(T.nilable(String)) }
            attr_accessor :external_price_id

            sig { returns(T.nilable(Float)) }
            attr_accessor :fixed_price_quantity

            sig { returns(T.nilable(String)) }
            attr_accessor :invoice_grouping_key

            sig do
              returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration))
            end
            attr_accessor :invoicing_cycle_configuration

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            attr_accessor :metadata

            sig { returns(T.nilable(String)) }
            attr_accessor :reference_id

            sig do
              params(
                bulk_with_proration_config: T::Hash[Symbol, T.anything],
                cadence: Symbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              ).void
            end
            def initialize(
              bulk_with_proration_config:,
              cadence:,
              item_id:,
              name:,
              billable_metric_id: nil,
              billed_in_advance: nil,
              billing_cycle_configuration: nil,
              conversion_rate: nil,
              currency: nil,
              external_price_id: nil,
              fixed_price_quantity: nil,
              invoice_grouping_key: nil,
              invoicing_cycle_configuration: nil,
              metadata: nil,
              reference_id: nil,
              model_type: :bulk_with_proration
            ); end

            sig do
              override.returns(
                {
                  bulk_with_proration_config: T::Hash[Symbol, T.anything],
                  cadence: Symbol,
                  item_id: String,
                  model_type: Symbol,
                  name: String,
                  billable_metric_id: T.nilable(String),
                  billed_in_advance: T.nilable(T::Boolean),
                  billing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration),
                  conversion_rate: T.nilable(Float),
                  currency: T.nilable(String),
                  external_price_id: T.nilable(String),
                  fixed_price_quantity: T.nilable(Float),
                  invoice_grouping_key: T.nilable(String),
                  invoicing_cycle_configuration: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration),
                  metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                  reference_id: T.nilable(String)
                }
              )
            end
            def to_hash; end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              sig { override.returns(T::Array[Symbol]) }
              def self.values; end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              attr_accessor :duration

              sig { returns(Symbol) }
              attr_accessor :duration_unit

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:); end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash; end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                sig { override.returns(T::Array[Symbol]) }
                def self.values; end
              end
            end
          end

          sig do
            override.returns(
              [
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackagePrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionMatrixPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBpsPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice
                ],
                [
                  Symbol,
                  Orb::Models::SubscriptionSchedulePlanChangeParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice
                ]
              ]
            )
          end
          private_class_method def self.variants; end
        end
      end
    end
  end
end
