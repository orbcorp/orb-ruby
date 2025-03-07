# typed: strong

module Orb
  module Models
    class SubscriptionCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddAdjustment])) }
      def add_adjustments
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddAdjustment]))
          .returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddAdjustment]))
      end
      def add_adjustments=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice])) }
      def add_prices
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice]))
          .returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice]))
      end
      def add_prices=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def align_billing_with_subscription_start_date
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def align_billing_with_subscription_start_date=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def auto_collection
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def auto_collection=(_)
      end

      sig { returns(T.nilable(String)) }
      def aws_region
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def aws_region=(_)
      end

      sig { returns(T.nilable(Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration)) }
      def billing_cycle_anchor_configuration
      end

      sig do
        params(_: T.nilable(Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration))
          .returns(T.nilable(Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration))
      end
      def billing_cycle_anchor_configuration=(_)
      end

      sig { returns(T.nilable(String)) }
      def coupon_redemption_code
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def coupon_redemption_code=(_)
      end

      sig { returns(T.nilable(Float)) }
      def credits_overage_rate
      end

      sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
      def credits_overage_rate=(_)
      end

      sig { returns(T.nilable(String)) }
      def customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def customer_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def default_invoice_memo
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def default_invoice_memo=(_)
      end

      sig { returns(T.nilable(Time)) }
      def end_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def end_date=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_customer_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def external_marketplace
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def external_marketplace=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_marketplace_reporting_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_marketplace_reporting_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def external_plan_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def external_plan_id=(_)
      end

      sig { returns(T.nilable(String)) }
      def filter
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def filter=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def initial_phase_order
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def initial_phase_order=(_)
      end

      sig { returns(T.nilable(String)) }
      def invoicing_threshold
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def invoicing_threshold=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
      def metadata
      end

      sig do
        params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
          .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
      end
      def metadata=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def net_terms
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def net_terms=(_)
      end

      sig { returns(T.nilable(Float)) }
      def per_credit_overage_amount
      end

      sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
      def per_credit_overage_amount=(_)
      end

      sig { returns(T.nilable(String)) }
      def plan_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def plan_id=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def plan_version_number
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def plan_version_number=(_)
      end

      sig { returns(T.nilable(T::Array[T.anything])) }
      def price_overrides
      end

      sig { params(_: T.nilable(T::Array[T.anything])).returns(T.nilable(T::Array[T.anything])) }
      def price_overrides=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemoveAdjustment])) }
      def remove_adjustments
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemoveAdjustment]))
          .returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemoveAdjustment]))
      end
      def remove_adjustments=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemovePrice])) }
      def remove_prices
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemovePrice]))
          .returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemovePrice]))
      end
      def remove_prices=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplaceAdjustment])) }
      def replace_adjustments
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplaceAdjustment]))
          .returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplaceAdjustment]))
      end
      def replace_adjustments=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice])) }
      def replace_prices
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice]))
          .returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice]))
      end
      def replace_prices=(_)
      end

      sig { returns(T.nilable(Time)) }
      def start_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def start_date=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def trial_duration_days
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def trial_duration_days=(_)
      end

      sig { returns(T.nilable(T::Array[String])) }
      def usage_customer_ids
      end

      sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def usage_customer_ids=(_)
      end

      sig do
        params(
          add_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddAdjustment]),
          add_prices: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice]),
          align_billing_with_subscription_start_date: T::Boolean,
          auto_collection: T.nilable(T::Boolean),
          aws_region: T.nilable(String),
          billing_cycle_anchor_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration),
          coupon_redemption_code: T.nilable(String),
          credits_overage_rate: T.nilable(Float),
          customer_id: T.nilable(String),
          default_invoice_memo: T.nilable(String),
          end_date: T.nilable(Time),
          external_customer_id: T.nilable(String),
          external_marketplace: T.nilable(Symbol),
          external_marketplace_reporting_id: T.nilable(String),
          external_plan_id: T.nilable(String),
          filter: T.nilable(String),
          initial_phase_order: T.nilable(Integer),
          invoicing_threshold: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
          net_terms: T.nilable(Integer),
          per_credit_overage_amount: T.nilable(Float),
          plan_id: T.nilable(String),
          plan_version_number: T.nilable(Integer),
          price_overrides: T.nilable(T::Array[T.anything]),
          remove_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemoveAdjustment]),
          remove_prices: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemovePrice]),
          replace_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplaceAdjustment]),
          replace_prices: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice]),
          start_date: T.nilable(Time),
          trial_duration_days: T.nilable(Integer),
          usage_customer_ids: T.nilable(T::Array[String]),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
      end
      def initialize(
        add_adjustments: nil,
        add_prices: nil,
        align_billing_with_subscription_start_date: nil,
        auto_collection: nil,
        aws_region: nil,
        billing_cycle_anchor_configuration: nil,
        coupon_redemption_code: nil,
        credits_overage_rate: nil,
        customer_id: nil,
        default_invoice_memo: nil,
        end_date: nil,
        external_customer_id: nil,
        external_marketplace: nil,
        external_marketplace_reporting_id: nil,
        external_plan_id: nil,
        filter: nil,
        initial_phase_order: nil,
        invoicing_threshold: nil,
        metadata: nil,
        net_terms: nil,
        per_credit_overage_amount: nil,
        plan_id: nil,
        plan_version_number: nil,
        price_overrides: nil,
        remove_adjustments: nil,
        remove_prices: nil,
        replace_adjustments: nil,
        replace_prices: nil,
        start_date: nil,
        trial_duration_days: nil,
        usage_customer_ids: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              add_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddAdjustment]),
              add_prices: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice]),
              align_billing_with_subscription_start_date: T::Boolean,
              auto_collection: T.nilable(T::Boolean),
              aws_region: T.nilable(String),
              billing_cycle_anchor_configuration: T.nilable(Orb::Models::SubscriptionCreateParams::BillingCycleAnchorConfiguration),
              coupon_redemption_code: T.nilable(String),
              credits_overage_rate: T.nilable(Float),
              customer_id: T.nilable(String),
              default_invoice_memo: T.nilable(String),
              end_date: T.nilable(Time),
              external_customer_id: T.nilable(String),
              external_marketplace: T.nilable(Symbol),
              external_marketplace_reporting_id: T.nilable(String),
              external_plan_id: T.nilable(String),
              filter: T.nilable(String),
              initial_phase_order: T.nilable(Integer),
              invoicing_threshold: T.nilable(String),
              metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
              net_terms: T.nilable(Integer),
              per_credit_overage_amount: T.nilable(Float),
              plan_id: T.nilable(String),
              plan_version_number: T.nilable(Integer),
              price_overrides: T.nilable(T::Array[T.anything]),
              remove_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemoveAdjustment]),
              remove_prices: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::RemovePrice]),
              replace_adjustments: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplaceAdjustment]),
              replace_prices: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice]),
              start_date: T.nilable(Time),
              trial_duration_days: T.nilable(Integer),
              usage_customer_ids: T.nilable(T::Array[String]),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      class AddAdjustment < Orb::BaseModel
        sig do
          returns(
            T.any(
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewPercentageDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewUsageDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewAmountDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMinimum,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMaximum
            )
          )
        end
        def adjustment
        end

        sig do
          params(
            _: T.any(
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewPercentageDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewUsageDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewAmountDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMinimum,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMaximum
            )
          )
            .returns(
              T.any(
                Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewPercentageDiscount,
                Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewUsageDiscount,
                Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewAmountDiscount,
                Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMinimum,
                Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMaximum
              )
            )
        end
        def adjustment=(_)
        end

        sig { returns(T.nilable(Time)) }
        def end_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def end_date=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig { returns(T.nilable(Time)) }
        def start_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def start_date=(_)
        end

        sig do
          params(
            adjustment: T.any(
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewPercentageDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewUsageDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewAmountDiscount,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMinimum,
              Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMaximum
            ),
            end_date: T.nilable(Time),
            plan_phase_order: T.nilable(Integer),
            start_date: T.nilable(Time)
          )
            .void
        end
        def initialize(adjustment:, end_date: nil, plan_phase_order: nil, start_date: nil)
        end

        sig do
          override
            .returns(
              {
                adjustment: T.any(
                  Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewPercentageDiscount,
                  Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewUsageDiscount,
                  Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewAmountDiscount,
                  Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMinimum,
                  Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMaximum
                ),
                end_date: T.nilable(Time),
                plan_phase_order: T.nilable(Integer),
                start_date: T.nilable(Time)
              }
            )
        end
        def to_hash
        end

        class Adjustment < Orb::Union
          abstract!

          class NewPercentageDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(Float) }
            def percentage_discount
            end

            sig { params(_: Float).returns(Float) }
            def percentage_discount=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                percentage_discount: Float,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .void
            end
            def initialize(
              applies_to_price_ids:,
              percentage_discount:,
              is_invoice_level: nil,
              adjustment_type: :percentage_discount
            )
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    percentage_discount: Float,
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class NewUsageDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(Float) }
            def usage_discount
            end

            sig { params(_: Float).returns(Float) }
            def usage_discount=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                usage_discount: Float,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .void
            end
            def initialize(
              applies_to_price_ids:,
              usage_discount:,
              is_invoice_level: nil,
              adjustment_type: :usage_discount
            )
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    usage_discount: Float,
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class NewAmountDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(String) }
            def amount_discount
            end

            sig { params(_: String).returns(String) }
            def amount_discount=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig do
              params(
                amount_discount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .void
            end
            def initialize(
              amount_discount:,
              applies_to_price_ids:,
              is_invoice_level: nil,
              adjustment_type: :amount_discount
            )
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    amount_discount: String,
                    applies_to_price_ids: T::Array[String],
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class NewMinimum < Orb::BaseModel
            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(String) }
            def minimum_amount
            end

            sig { params(_: String).returns(String) }
            def minimum_amount=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                item_id: String,
                minimum_amount: String,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .void
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
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    item_id: String,
                    minimum_amount: String,
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class NewMaximum < Orb::BaseModel
            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(String) }
            def maximum_amount
            end

            sig { params(_: String).returns(String) }
            def maximum_amount=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                maximum_amount: String,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .void
            end
            def initialize(
              applies_to_price_ids:,
              maximum_amount:,
              is_invoice_level: nil,
              adjustment_type: :maximum
            )
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    maximum_amount: String,
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class << self
            sig do
              override
                .returns(
                  [[Symbol, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewPercentageDiscount], [Symbol, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewUsageDiscount], [Symbol, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewAmountDiscount], [Symbol, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMinimum], [Symbol, Orb::Models::SubscriptionCreateParams::AddAdjustment::Adjustment::NewMaximum]]
                )
            end
            private def variants
            end
          end
        end
      end

      class AddPrice < Orb::BaseModel
        sig { returns(T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice)) }
        def allocation_price
        end

        sig do
          params(_: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice))
            .returns(T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice))
        end
        def allocation_price=(_)
        end

        sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Discount])) }
        def discounts
        end

        sig do
          params(_: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Discount]))
            .returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Discount]))
        end
        def discounts=(_)
        end

        sig { returns(T.nilable(Time)) }
        def end_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def end_date=(_)
        end

        sig { returns(T.nilable(String)) }
        def external_price_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_price_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def plan_phase_order
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def plan_phase_order=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice
              )
            )
          )
        end
        def price
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice
                )
              )
            )
        end
        def price=(_)
        end

        sig { returns(T.nilable(String)) }
        def price_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def price_id=(_)
        end

        sig { returns(T.nilable(Time)) }
        def start_date
        end

        sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
        def start_date=(_)
        end

        sig do
          params(
            allocation_price: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice),
            discounts: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Discount]),
            end_date: T.nilable(Time),
            external_price_id: T.nilable(String),
            maximum_amount: T.nilable(String),
            minimum_amount: T.nilable(String),
            plan_phase_order: T.nilable(Integer),
            price: T.nilable(
              T.any(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice
              )
            ),
            price_id: T.nilable(String),
            start_date: T.nilable(Time)
          )
            .void
        end
        def initialize(
          allocation_price: nil,
          discounts: nil,
          end_date: nil,
          external_price_id: nil,
          maximum_amount: nil,
          minimum_amount: nil,
          plan_phase_order: nil,
          price: nil,
          price_id: nil,
          start_date: nil
        )
        end

        sig do
          override
            .returns(
              {
                allocation_price: T.nilable(Orb::Models::SubscriptionCreateParams::AddPrice::AllocationPrice),
                discounts: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Discount]),
                end_date: T.nilable(Time),
                external_price_id: T.nilable(String),
                maximum_amount: T.nilable(String),
                minimum_amount: T.nilable(String),
                plan_phase_order: T.nilable(Integer),
                price: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice
                  )
                ),
                price_id: T.nilable(String),
                start_date: T.nilable(Time)
              }
            )
        end
        def to_hash
        end

        class AllocationPrice < Orb::BaseModel
          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { returns(T::Boolean) }
          def expires_at_end_of_cadence
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def expires_at_end_of_cadence=(_)
          end

          sig do
            params(
              amount: String,
              cadence: Symbol,
              currency: String,
              expires_at_end_of_cadence: T::Boolean
            ).void
          end
          def initialize(amount:, cadence:, currency:, expires_at_end_of_cadence:)
          end

          sig do
            override
              .returns({
                         amount: String,
                         cadence: Symbol,
                         currency: String,
                         expires_at_end_of_cadence: T::Boolean
                       })
          end
          def to_hash
          end

          class Cadence < Orb::Enum
            abstract!

            ONE_TIME = :one_time
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            SEMI_ANNUAL = :semi_annual
            ANNUAL = :annual
            CUSTOM = :custom

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class Discount < Orb::BaseModel
          sig { returns(Symbol) }
          def discount_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def discount_type=(_)
          end

          sig { returns(T.nilable(String)) }
          def amount_discount
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def amount_discount=(_)
          end

          sig { returns(T.nilable(Float)) }
          def percentage_discount
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def percentage_discount=(_)
          end

          sig { returns(T.nilable(Float)) }
          def usage_discount
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def usage_discount=(_)
          end

          sig do
            params(
              discount_type: Symbol,
              amount_discount: T.nilable(String),
              percentage_discount: T.nilable(Float),
              usage_discount: T.nilable(Float)
            )
              .void
          end
          def initialize(discount_type:, amount_discount: nil, percentage_discount: nil, usage_discount: nil)
          end

          sig do
            override
              .returns(
                {
                  discount_type: Symbol,
                  amount_discount: T.nilable(String),
                  percentage_discount: T.nilable(Float),
                  usage_discount: T.nilable(Float)
                }
              )
          end
          def to_hash
          end

          class DiscountType < Orb::Enum
            abstract!

            PERCENTAGE = :percentage
            USAGE = :usage
            AMOUNT = :amount

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class Price < Orb::Union
          abstract!

          class NewSubscriptionUnitPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig) }
            def unit_config
            end

            sig do
              params(_: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig)
                .returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig)
            end
            def unit_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                unit_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::UnitConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class UnitConfig < Orb::BaseModel
              sig { returns(String) }
              def unit_amount
              end

              sig { params(_: String).returns(String) }
              def unit_amount=(_)
              end

              sig { params(unit_amount: String).void }
              def initialize(unit_amount:)
              end

              sig { override.returns({unit_amount: String}) }
              def to_hash
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionPackagePrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig
              )
            end
            def package_config
            end

            sig do
              params(
                _: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig
              )
                .returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig
                )
            end
            def package_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                package_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    package_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::PackageConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class PackageConfig < Orb::BaseModel
              sig { returns(String) }
              def package_amount
              end

              sig { params(_: String).returns(String) }
              def package_amount=(_)
              end

              sig { returns(Integer) }
              def package_size
              end

              sig { params(_: Integer).returns(Integer) }
              def package_size=(_)
              end

              sig { params(package_amount: String, package_size: Integer).void }
              def initialize(package_amount:, package_size:)
              end

              sig { override.returns({package_amount: String, package_size: Integer}) }
              def to_hash
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionMatrixPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig) }
            def matrix_config
            end

            sig do
              params(
                _: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig
              )
                .returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig)
            end
            def matrix_config=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                matrix_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    matrix_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class MatrixConfig < Orb::BaseModel
              sig { returns(String) }
              def default_unit_amount
              end

              sig { params(_: String).returns(String) }
              def default_unit_amount=(_)
              end

              sig { returns(T::Array[T.nilable(String)]) }
              def dimensions
              end

              sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
              def dimensions=(_)
              end

              sig do
                returns(
                  T::Array[
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                  ]
                )
              end
              def matrix_values
              end

              sig do
                params(
                  _: T::Array[
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                  ]
                )
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                    ]
                  )
              end
              def matrix_values=(_)
              end

              sig do
                params(
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                  ]
                )
                  .void
              end
              def initialize(default_unit_amount:, dimensions:, matrix_values:)
              end

              sig do
                override
                  .returns(
                    {
                      default_unit_amount: String,
                      dimensions: T::Array[T.nilable(String)],
                      matrix_values: T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                      ]
                    }
                  )
              end
              def to_hash
              end

              class MatrixValue < Orb::BaseModel
                sig { returns(T::Array[T.nilable(String)]) }
                def dimension_values
                end

                sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
                def dimension_values=(_)
                end

                sig { returns(String) }
                def unit_amount
                end

                sig { params(_: String).returns(String) }
                def unit_amount=(_)
                end

                sig { params(dimension_values: T::Array[T.nilable(String)], unit_amount: String).void }
                def initialize(dimension_values:, unit_amount:)
                end

                sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionTieredPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig) }
            def tiered_config
            end

            sig do
              params(
                _: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig
              )
                .returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig)
            end
            def tiered_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class TieredConfig < Orb::BaseModel
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                )
              end
              def tiers
              end

              sig do
                params(
                  _: T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                )
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                  )
              end
              def tiers=(_)
              end

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                )
                  .void
              end
              def initialize(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                sig { returns(Float) }
                def first_unit
                end

                sig { params(_: Float).returns(Float) }
                def first_unit=(_)
                end

                sig { returns(String) }
                def unit_amount
                end

                sig { params(_: String).returns(String) }
                def unit_amount=(_)
                end

                sig { returns(T.nilable(Float)) }
                def last_unit
                end

                sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
                def last_unit=(_)
                end

                sig { params(first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)).void }
                def initialize(first_unit:, unit_amount:, last_unit: nil)
                end

                sig do
                  override.returns({first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)})
                end
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionTieredBpsPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig
              )
            end
            def tiered_bps_config
            end

            sig do
              params(
                _: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig
              )
                .returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig
                )
            end
            def tiered_bps_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_bps_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_bps_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class TieredBpsConfig < Orb::BaseModel
              sig do
                returns(
                  T::Array[
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                  ]
                )
              end
              def tiers
              end

              sig do
                params(
                  _: T::Array[
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                  ]
                )
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                    ]
                  )
              end
              def tiers=(_)
              end

              sig do
                params(
                  tiers: T::Array[
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                  ]
                )
                  .void
              end
              def initialize(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                      ]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                sig { returns(Float) }
                def bps
                end

                sig { params(_: Float).returns(Float) }
                def bps=(_)
                end

                sig { returns(String) }
                def minimum_amount
                end

                sig { params(_: String).returns(String) }
                def minimum_amount=(_)
                end

                sig { returns(T.nilable(String)) }
                def maximum_amount
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def maximum_amount=(_)
                end

                sig { returns(T.nilable(String)) }
                def per_unit_maximum
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def per_unit_maximum=(_)
                end

                sig do
                  params(
                    bps: Float,
                    minimum_amount: String,
                    maximum_amount: T.nilable(String),
                    per_unit_maximum: T.nilable(String)
                  )
                    .void
                end
                def initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
                end

                sig do
                  override
                    .returns(
                      {
                        bps: Float,
                        minimum_amount: String,
                        maximum_amount: T.nilable(String),
                        per_unit_maximum: T.nilable(String)
                      }
                    )
                end
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionBpsPrice < Orb::BaseModel
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig) }
            def bps_config
            end

            sig do
              params(_: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig)
                .returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig)
            end
            def bps_config=(_)
            end

            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                bps_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig,
                cadence: Symbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    bps_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BpsConfig,
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class BpsConfig < Orb::BaseModel
              sig { returns(Float) }
              def bps
              end

              sig { params(_: Float).returns(Float) }
              def bps=(_)
              end

              sig { returns(T.nilable(String)) }
              def per_unit_maximum
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def per_unit_maximum=(_)
              end

              sig { params(bps: Float, per_unit_maximum: T.nilable(String)).void }
              def initialize(bps:, per_unit_maximum: nil)
              end

              sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
              def to_hash
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionBulkBpsPrice < Orb::BaseModel
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig
              )
            end
            def bulk_bps_config
            end

            sig do
              params(
                _: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig
              )
                .returns(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig
                )
            end
            def bulk_bps_config=(_)
            end

            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                bulk_bps_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
                cadence: Symbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    bulk_bps_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class BulkBpsConfig < Orb::BaseModel
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
                )
              end
              def tiers
              end

              sig do
                params(
                  _: T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
                )
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
                  )
              end
              def tiers=(_)
              end

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
                )
                  .void
              end
              def initialize(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                sig { returns(Float) }
                def bps
                end

                sig { params(_: Float).returns(Float) }
                def bps=(_)
                end

                sig { returns(T.nilable(String)) }
                def maximum_amount
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def maximum_amount=(_)
                end

                sig { returns(T.nilable(String)) }
                def per_unit_maximum
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def per_unit_maximum=(_)
                end

                sig do
                  params(
                    bps: Float,
                    maximum_amount: T.nilable(String),
                    per_unit_maximum: T.nilable(String)
                  ).void
                end
                def initialize(bps:, maximum_amount: nil, per_unit_maximum: nil)
                end

                sig do
                  override.returns(
                    {
                      bps: Float,
                      maximum_amount: T.nilable(String),
                      per_unit_maximum: T.nilable(String)
                    }
                  )
                end
                def to_hash
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionBulkPrice < Orb::BaseModel
            sig { returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig) }
            def bulk_config
            end

            sig do
              params(_: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig)
                .returns(Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig)
            end
            def bulk_config=(_)
            end

            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                bulk_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig,
                cadence: Symbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    bulk_config: Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig,
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class BulkConfig < Orb::BaseModel
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                )
              end
              def tiers
              end

              sig do
                params(
                  _: T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                )
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                  )
              end
              def tiers=(_)
              end

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                )
                  .void
              end
              def initialize(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                sig { returns(String) }
                def unit_amount
                end

                sig { params(_: String).returns(String) }
                def unit_amount=(_)
                end

                sig { returns(T.nilable(Float)) }
                def maximum_units
                end

                sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
                def maximum_units=(_)
                end

                sig { params(unit_amount: String, maximum_units: T.nilable(Float)).void }
                def initialize(unit_amount:, maximum_units: nil)
                end

                sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
                def to_hash
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionThresholdTotalAmountPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def threshold_total_amount_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def threshold_total_amount_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                threshold_total_amount_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    threshold_total_amount_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionTieredPackagePrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def tiered_package_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def tiered_package_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_package_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_package_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionTieredWithMinimumPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def tiered_with_minimum_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def tiered_with_minimum_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionUnitWithPercentPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def unit_with_percent_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def unit_with_percent_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                unit_with_percent_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_with_percent_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionPackageWithAllocationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def package_with_allocation_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def package_with_allocation_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                package_with_allocation_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    package_with_allocation_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionTierWithProrationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def tiered_with_proration_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def tiered_with_proration_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_proration_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionUnitWithProrationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def unit_with_proration_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def unit_with_proration_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                unit_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_with_proration_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionGroupedAllocationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def grouped_allocation_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def grouped_allocation_config=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                grouped_allocation_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    grouped_allocation_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionGroupedWithProratedMinimumPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def grouped_with_prorated_minimum_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def grouped_with_prorated_minimum_config=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionBulkWithProrationPrice < Orb::BaseModel
            sig { returns(T::Hash[Symbol, T.anything]) }
            def bulk_with_proration_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def bulk_with_proration_config=(_)
            end

            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                bulk_with_proration_config: T::Hash[Symbol, T.anything],
                cadence: Symbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    bulk_with_proration_config: T::Hash[Symbol, T.anything],
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionScalableMatrixWithUnitPricingPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def scalable_matrix_with_unit_pricing_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def scalable_matrix_with_unit_pricing_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              scalable_matrix_with_unit_pricing_config:,
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
              model_type: :scalable_matrix_with_unit_pricing
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionScalableMatrixWithTieredPricingPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def scalable_matrix_with_tiered_pricing_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def scalable_matrix_with_tiered_pricing_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              scalable_matrix_with_tiered_pricing_config:,
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
              model_type: :scalable_matrix_with_tiered_pricing
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionCumulativeGroupedBulkPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def cumulative_grouped_bulk_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def cumulative_grouped_bulk_config=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
            end
            def initialize(
              cadence:,
              cumulative_grouped_bulk_config:,
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
              model_type: :cumulative_grouped_bulk
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionMaxGroupTieredPackagePrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def max_group_tiered_package_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def max_group_tiered_package_config=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
            end
            def initialize(
              cadence:,
              item_id:,
              max_group_tiered_package_config:,
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
              model_type: :max_group_tiered_package
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionGroupedWithMeteredMinimumPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def grouped_with_metered_minimum_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def grouped_with_metered_minimum_config=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
            end
            def initialize(
              cadence:,
              grouped_with_metered_minimum_config:,
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
              model_type: :grouped_with_metered_minimum
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionMatrixWithDisplayNamePrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def matrix_with_display_name_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def matrix_with_display_name_config=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
            end
            def initialize(
              cadence:,
              item_id:,
              matrix_with_display_name_config:,
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
              model_type: :matrix_with_display_name
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionGroupedTieredPackagePrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def grouped_tiered_package_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def grouped_tiered_package_config=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
            end
            def initialize(
              cadence:,
              grouped_tiered_package_config:,
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
              model_type: :grouped_tiered_package
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class << self
            sig do
              override
                .returns(
                  [[Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackagePrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredBpsPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBpsPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkBpsPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionThresholdTotalAmountPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredPackagePrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTieredWithMinimumPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithPercentPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionPackageWithAllocationPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionTierWithProrationPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionUnitWithProrationPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedAllocationPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionBulkWithProrationPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionCumulativeGroupedBulkPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMaxGroupTieredPackagePrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionMatrixWithDisplayNamePrice], [Symbol, Orb::Models::SubscriptionCreateParams::AddPrice::Price::NewSubscriptionGroupedTieredPackagePrice]]
                )
            end
            private def variants
            end
          end
        end
      end

      class BillingCycleAnchorConfiguration < Orb::BaseModel
        sig { returns(Integer) }
        def day
        end

        sig { params(_: Integer).returns(Integer) }
        def day=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def month
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def month=(_)
        end

        sig { returns(T.nilable(Integer)) }
        def year
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def year=(_)
        end

        sig { params(day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)).void }
        def initialize(day:, month: nil, year: nil)
        end

        sig { override.returns({day: Integer, month: T.nilable(Integer), year: T.nilable(Integer)}) }
        def to_hash
        end
      end

      class ExternalMarketplace < Orb::Enum
        abstract!

        GOOGLE = T.let(:google, T.nilable(Symbol))
        AWS = T.let(:aws, T.nilable(Symbol))
        AZURE = T.let(:azure, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class RemoveAdjustment < Orb::BaseModel
        sig { returns(String) }
        def adjustment_id
        end

        sig { params(_: String).returns(String) }
        def adjustment_id=(_)
        end

        sig { params(adjustment_id: String).void }
        def initialize(adjustment_id:)
        end

        sig { override.returns({adjustment_id: String}) }
        def to_hash
        end
      end

      class RemovePrice < Orb::BaseModel
        sig { returns(T.nilable(String)) }
        def external_price_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_price_id=(_)
        end

        sig { returns(T.nilable(String)) }
        def price_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def price_id=(_)
        end

        sig { params(external_price_id: T.nilable(String), price_id: T.nilable(String)).void }
        def initialize(external_price_id: nil, price_id: nil)
        end

        sig { override.returns({external_price_id: T.nilable(String), price_id: T.nilable(String)}) }
        def to_hash
        end
      end

      class ReplaceAdjustment < Orb::BaseModel
        sig do
          returns(
            T.any(
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewUsageDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewAmountDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMinimum,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMaximum
            )
          )
        end
        def adjustment
        end

        sig do
          params(
            _: T.any(
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewUsageDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewAmountDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMinimum,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMaximum
            )
          )
            .returns(
              T.any(
                Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount,
                Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewUsageDiscount,
                Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewAmountDiscount,
                Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMinimum,
                Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMaximum
              )
            )
        end
        def adjustment=(_)
        end

        sig { returns(String) }
        def replaces_adjustment_id
        end

        sig { params(_: String).returns(String) }
        def replaces_adjustment_id=(_)
        end

        sig do
          params(
            adjustment: T.any(
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewUsageDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewAmountDiscount,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMinimum,
              Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMaximum
            ),
            replaces_adjustment_id: String
          )
            .void
        end
        def initialize(adjustment:, replaces_adjustment_id:)
        end

        sig do
          override
            .returns(
              {
                adjustment: T.any(
                  Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount,
                  Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewUsageDiscount,
                  Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewAmountDiscount,
                  Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMinimum,
                  Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMaximum
                ),
                replaces_adjustment_id: String
              }
            )
        end
        def to_hash
        end

        class Adjustment < Orb::Union
          abstract!

          class NewPercentageDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(Float) }
            def percentage_discount
            end

            sig { params(_: Float).returns(Float) }
            def percentage_discount=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                percentage_discount: Float,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .void
            end
            def initialize(
              applies_to_price_ids:,
              percentage_discount:,
              is_invoice_level: nil,
              adjustment_type: :percentage_discount
            )
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    percentage_discount: Float,
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class NewUsageDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(Float) }
            def usage_discount
            end

            sig { params(_: Float).returns(Float) }
            def usage_discount=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                usage_discount: Float,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .void
            end
            def initialize(
              applies_to_price_ids:,
              usage_discount:,
              is_invoice_level: nil,
              adjustment_type: :usage_discount
            )
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    usage_discount: Float,
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class NewAmountDiscount < Orb::BaseModel
            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(String) }
            def amount_discount
            end

            sig { params(_: String).returns(String) }
            def amount_discount=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig do
              params(
                amount_discount: String,
                applies_to_price_ids: T::Array[String],
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .void
            end
            def initialize(
              amount_discount:,
              applies_to_price_ids:,
              is_invoice_level: nil,
              adjustment_type: :amount_discount
            )
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    amount_discount: String,
                    applies_to_price_ids: T::Array[String],
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class NewMinimum < Orb::BaseModel
            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(String) }
            def minimum_amount
            end

            sig { params(_: String).returns(String) }
            def minimum_amount=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                item_id: String,
                minimum_amount: String,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .void
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
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    item_id: String,
                    minimum_amount: String,
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class NewMaximum < Orb::BaseModel
            sig { returns(Symbol) }
            def adjustment_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def adjustment_type=(_)
            end

            sig { returns(T::Array[String]) }
            def applies_to_price_ids
            end

            sig { params(_: T::Array[String]).returns(T::Array[String]) }
            def applies_to_price_ids=(_)
            end

            sig { returns(String) }
            def maximum_amount
            end

            sig { params(_: String).returns(String) }
            def maximum_amount=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def is_invoice_level
            end

            sig { params(_: T::Boolean).returns(T::Boolean) }
            def is_invoice_level=(_)
            end

            sig do
              params(
                applies_to_price_ids: T::Array[String],
                maximum_amount: String,
                is_invoice_level: T::Boolean,
                adjustment_type: Symbol
              )
                .void
            end
            def initialize(
              applies_to_price_ids:,
              maximum_amount:,
              is_invoice_level: nil,
              adjustment_type: :maximum
            )
            end

            sig do
              override
                .returns(
                  {
                    adjustment_type: Symbol,
                    applies_to_price_ids: T::Array[String],
                    maximum_amount: String,
                    is_invoice_level: T::Boolean
                  }
                )
            end
            def to_hash
            end
          end

          class << self
            sig do
              override
                .returns(
                  [[Symbol, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewPercentageDiscount], [Symbol, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewUsageDiscount], [Symbol, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewAmountDiscount], [Symbol, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMinimum], [Symbol, Orb::Models::SubscriptionCreateParams::ReplaceAdjustment::Adjustment::NewMaximum]]
                )
            end
            private def variants
            end
          end
        end
      end

      class ReplacePrice < Orb::BaseModel
        sig { returns(String) }
        def replaces_price_id
        end

        sig { params(_: String).returns(String) }
        def replaces_price_id=(_)
        end

        sig { returns(T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice)) }
        def allocation_price
        end

        sig do
          params(_: T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice))
            .returns(T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice))
        end
        def allocation_price=(_)
        end

        sig { returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount])) }
        def discounts
        end

        sig do
          params(_: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount]))
            .returns(T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount]))
        end
        def discounts=(_)
        end

        sig { returns(T.nilable(String)) }
        def external_price_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def external_price_id=(_)
        end

        sig { returns(T.nilable(Float)) }
        def fixed_price_quantity
        end

        sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
        def fixed_price_quantity=(_)
        end

        sig { returns(T.nilable(String)) }
        def maximum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def maximum_amount=(_)
        end

        sig { returns(T.nilable(String)) }
        def minimum_amount
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def minimum_amount=(_)
        end

        sig do
          returns(
            T.nilable(
              T.any(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice
              )
            )
          )
        end
        def price
        end

        sig do
          params(
            _: T.nilable(
              T.any(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice
              )
            )
          )
            .returns(
              T.nilable(
                T.any(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice
                )
              )
            )
        end
        def price=(_)
        end

        sig { returns(T.nilable(String)) }
        def price_id
        end

        sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
        def price_id=(_)
        end

        sig do
          params(
            replaces_price_id: String,
            allocation_price: T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice),
            discounts: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount]),
            external_price_id: T.nilable(String),
            fixed_price_quantity: T.nilable(Float),
            maximum_amount: T.nilable(String),
            minimum_amount: T.nilable(String),
            price: T.nilable(
              T.any(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice
              )
            ),
            price_id: T.nilable(String)
          )
            .void
        end
        def initialize(
          replaces_price_id:,
          allocation_price: nil,
          discounts: nil,
          external_price_id: nil,
          fixed_price_quantity: nil,
          maximum_amount: nil,
          minimum_amount: nil,
          price: nil,
          price_id: nil
        )
        end

        sig do
          override
            .returns(
              {
                replaces_price_id: String,
                allocation_price: T.nilable(Orb::Models::SubscriptionCreateParams::ReplacePrice::AllocationPrice),
                discounts: T.nilable(T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Discount]),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                maximum_amount: T.nilable(String),
                minimum_amount: T.nilable(String),
                price: T.nilable(
                  T.any(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice,
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice
                  )
                ),
                price_id: T.nilable(String)
              }
            )
        end
        def to_hash
        end

        class AllocationPrice < Orb::BaseModel
          sig { returns(String) }
          def amount
          end

          sig { params(_: String).returns(String) }
          def amount=(_)
          end

          sig { returns(Symbol) }
          def cadence
          end

          sig { params(_: Symbol).returns(Symbol) }
          def cadence=(_)
          end

          sig { returns(String) }
          def currency
          end

          sig { params(_: String).returns(String) }
          def currency=(_)
          end

          sig { returns(T::Boolean) }
          def expires_at_end_of_cadence
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def expires_at_end_of_cadence=(_)
          end

          sig do
            params(
              amount: String,
              cadence: Symbol,
              currency: String,
              expires_at_end_of_cadence: T::Boolean
            ).void
          end
          def initialize(amount:, cadence:, currency:, expires_at_end_of_cadence:)
          end

          sig do
            override
              .returns({
                         amount: String,
                         cadence: Symbol,
                         currency: String,
                         expires_at_end_of_cadence: T::Boolean
                       })
          end
          def to_hash
          end

          class Cadence < Orb::Enum
            abstract!

            ONE_TIME = :one_time
            MONTHLY = :monthly
            QUARTERLY = :quarterly
            SEMI_ANNUAL = :semi_annual
            ANNUAL = :annual
            CUSTOM = :custom

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class Discount < Orb::BaseModel
          sig { returns(Symbol) }
          def discount_type
          end

          sig { params(_: Symbol).returns(Symbol) }
          def discount_type=(_)
          end

          sig { returns(T.nilable(String)) }
          def amount_discount
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def amount_discount=(_)
          end

          sig { returns(T.nilable(Float)) }
          def percentage_discount
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def percentage_discount=(_)
          end

          sig { returns(T.nilable(Float)) }
          def usage_discount
          end

          sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
          def usage_discount=(_)
          end

          sig do
            params(
              discount_type: Symbol,
              amount_discount: T.nilable(String),
              percentage_discount: T.nilable(Float),
              usage_discount: T.nilable(Float)
            )
              .void
          end
          def initialize(discount_type:, amount_discount: nil, percentage_discount: nil, usage_discount: nil)
          end

          sig do
            override
              .returns(
                {
                  discount_type: Symbol,
                  amount_discount: T.nilable(String),
                  percentage_discount: T.nilable(Float),
                  usage_discount: T.nilable(Float)
                }
              )
          end
          def to_hash
          end

          class DiscountType < Orb::Enum
            abstract!

            PERCENTAGE = :percentage
            USAGE = :usage
            AMOUNT = :amount

            class << self
              sig { override.returns(T::Array[Symbol]) }
              def values
              end
            end
          end
        end

        class Price < Orb::Union
          abstract!

          class NewSubscriptionUnitPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig) }
            def unit_config
            end

            sig do
              params(
                _: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig
              )
                .returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig)
            end
            def unit_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                unit_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::UnitConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class UnitConfig < Orb::BaseModel
              sig { returns(String) }
              def unit_amount
              end

              sig { params(_: String).returns(String) }
              def unit_amount=(_)
              end

              sig { params(unit_amount: String).void }
              def initialize(unit_amount:)
              end

              sig { override.returns({unit_amount: String}) }
              def to_hash
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionPackagePrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig
              )
            end
            def package_config
            end

            sig do
              params(
                _: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig
              )
                .returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig
                )
            end
            def package_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                package_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    package_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::PackageConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class PackageConfig < Orb::BaseModel
              sig { returns(String) }
              def package_amount
              end

              sig { params(_: String).returns(String) }
              def package_amount=(_)
              end

              sig { returns(Integer) }
              def package_size
              end

              sig { params(_: Integer).returns(Integer) }
              def package_size=(_)
              end

              sig { params(package_amount: String, package_size: Integer).void }
              def initialize(package_amount:, package_size:)
              end

              sig { override.returns({package_amount: String, package_size: Integer}) }
              def to_hash
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionMatrixPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig
              )
            end
            def matrix_config
            end

            sig do
              params(
                _: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig
              )
                .returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig
                )
            end
            def matrix_config=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                matrix_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    matrix_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class MatrixConfig < Orb::BaseModel
              sig { returns(String) }
              def default_unit_amount
              end

              sig { params(_: String).returns(String) }
              def default_unit_amount=(_)
              end

              sig { returns(T::Array[T.nilable(String)]) }
              def dimensions
              end

              sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
              def dimensions=(_)
              end

              sig do
                returns(
                  T::Array[
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                  ]
                )
              end
              def matrix_values
              end

              sig do
                params(
                  _: T::Array[
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                  ]
                )
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                    ]
                  )
              end
              def matrix_values=(_)
              end

              sig do
                params(
                  default_unit_amount: String,
                  dimensions: T::Array[T.nilable(String)],
                  matrix_values: T::Array[
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                  ]
                )
                  .void
              end
              def initialize(default_unit_amount:, dimensions:, matrix_values:)
              end

              sig do
                override
                  .returns(
                    {
                      default_unit_amount: String,
                      dimensions: T::Array[T.nilable(String)],
                      matrix_values: T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice::MatrixConfig::MatrixValue
                      ]
                    }
                  )
              end
              def to_hash
              end

              class MatrixValue < Orb::BaseModel
                sig { returns(T::Array[T.nilable(String)]) }
                def dimension_values
                end

                sig { params(_: T::Array[T.nilable(String)]).returns(T::Array[T.nilable(String)]) }
                def dimension_values=(_)
                end

                sig { returns(String) }
                def unit_amount
                end

                sig { params(_: String).returns(String) }
                def unit_amount=(_)
                end

                sig { params(dimension_values: T::Array[T.nilable(String)], unit_amount: String).void }
                def initialize(dimension_values:, unit_amount:)
                end

                sig { override.returns({dimension_values: T::Array[T.nilable(String)], unit_amount: String}) }
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionTieredPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig
              )
            end
            def tiered_config
            end

            sig do
              params(
                _: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig
              )
                .returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig
                )
            end
            def tiered_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class TieredConfig < Orb::BaseModel
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                )
              end
              def tiers
              end

              sig do
                params(
                  _: T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                )
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                  )
              end
              def tiers=(_)
              end

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                )
                  .void
              end
              def initialize(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice::TieredConfig::Tier]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                sig { returns(Float) }
                def first_unit
                end

                sig { params(_: Float).returns(Float) }
                def first_unit=(_)
                end

                sig { returns(String) }
                def unit_amount
                end

                sig { params(_: String).returns(String) }
                def unit_amount=(_)
                end

                sig { returns(T.nilable(Float)) }
                def last_unit
                end

                sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
                def last_unit=(_)
                end

                sig { params(first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)).void }
                def initialize(first_unit:, unit_amount:, last_unit: nil)
                end

                sig do
                  override.returns({first_unit: Float, unit_amount: String, last_unit: T.nilable(Float)})
                end
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionTieredBpsPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig
              )
            end
            def tiered_bps_config
            end

            sig do
              params(
                _: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig
              )
                .returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig
                )
            end
            def tiered_bps_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_bps_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_bps_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class TieredBpsConfig < Orb::BaseModel
              sig do
                returns(
                  T::Array[
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                  ]
                )
              end
              def tiers
              end

              sig do
                params(
                  _: T::Array[
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                  ]
                )
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                    ]
                  )
              end
              def tiers=(_)
              end

              sig do
                params(
                  tiers: T::Array[
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                  ]
                )
                  .void
              end
              def initialize(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice::TieredBpsConfig::Tier
                      ]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                sig { returns(Float) }
                def bps
                end

                sig { params(_: Float).returns(Float) }
                def bps=(_)
                end

                sig { returns(String) }
                def minimum_amount
                end

                sig { params(_: String).returns(String) }
                def minimum_amount=(_)
                end

                sig { returns(T.nilable(String)) }
                def maximum_amount
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def maximum_amount=(_)
                end

                sig { returns(T.nilable(String)) }
                def per_unit_maximum
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def per_unit_maximum=(_)
                end

                sig do
                  params(
                    bps: Float,
                    minimum_amount: String,
                    maximum_amount: T.nilable(String),
                    per_unit_maximum: T.nilable(String)
                  )
                    .void
                end
                def initialize(bps:, minimum_amount:, maximum_amount: nil, per_unit_maximum: nil)
                end

                sig do
                  override
                    .returns(
                      {
                        bps: Float,
                        minimum_amount: String,
                        maximum_amount: T.nilable(String),
                        per_unit_maximum: T.nilable(String)
                      }
                    )
                end
                def to_hash
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionBpsPrice < Orb::BaseModel
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig) }
            def bps_config
            end

            sig do
              params(_: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig)
                .returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig)
            end
            def bps_config=(_)
            end

            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                bps_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig,
                cadence: Symbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    bps_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BpsConfig,
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class BpsConfig < Orb::BaseModel
              sig { returns(Float) }
              def bps
              end

              sig { params(_: Float).returns(Float) }
              def bps=(_)
              end

              sig { returns(T.nilable(String)) }
              def per_unit_maximum
              end

              sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
              def per_unit_maximum=(_)
              end

              sig { params(bps: Float, per_unit_maximum: T.nilable(String)).void }
              def initialize(bps:, per_unit_maximum: nil)
              end

              sig { override.returns({bps: Float, per_unit_maximum: T.nilable(String)}) }
              def to_hash
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionBulkBpsPrice < Orb::BaseModel
            sig do
              returns(
                Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig
              )
            end
            def bulk_bps_config
            end

            sig do
              params(
                _: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig
              )
                .returns(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig
                )
            end
            def bulk_bps_config=(_)
            end

            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                bulk_bps_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
                cadence: Symbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    bulk_bps_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig,
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class BulkBpsConfig < Orb::BaseModel
              sig do
                returns(
                  T::Array[
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier
                  ]
                )
              end
              def tiers
              end

              sig do
                params(
                  _: T::Array[
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier
                  ]
                )
                  .returns(
                    T::Array[
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier
                    ]
                  )
              end
              def tiers=(_)
              end

              sig do
                params(
                  tiers: T::Array[
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier
                  ]
                )
                  .void
              end
              def initialize(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice::BulkBpsConfig::Tier
                      ]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                sig { returns(Float) }
                def bps
                end

                sig { params(_: Float).returns(Float) }
                def bps=(_)
                end

                sig { returns(T.nilable(String)) }
                def maximum_amount
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def maximum_amount=(_)
                end

                sig { returns(T.nilable(String)) }
                def per_unit_maximum
                end

                sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
                def per_unit_maximum=(_)
                end

                sig do
                  params(
                    bps: Float,
                    maximum_amount: T.nilable(String),
                    per_unit_maximum: T.nilable(String)
                  ).void
                end
                def initialize(bps:, maximum_amount: nil, per_unit_maximum: nil)
                end

                sig do
                  override.returns(
                    {
                      bps: Float,
                      maximum_amount: T.nilable(String),
                      per_unit_maximum: T.nilable(String)
                    }
                  )
                end
                def to_hash
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionBulkPrice < Orb::BaseModel
            sig { returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig) }
            def bulk_config
            end

            sig do
              params(
                _: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig
              )
                .returns(Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig)
            end
            def bulk_config=(_)
            end

            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                bulk_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig,
                cadence: Symbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    bulk_config: Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig,
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class BulkConfig < Orb::BaseModel
              sig do
                returns(
                  T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                )
              end
              def tiers
              end

              sig do
                params(
                  _: T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                )
                  .returns(
                    T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                  )
              end
              def tiers=(_)
              end

              sig do
                params(
                  tiers: T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                )
                  .void
              end
              def initialize(tiers:)
              end

              sig do
                override
                  .returns(
                    {
                      tiers: T::Array[Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice::BulkConfig::Tier]
                    }
                  )
              end
              def to_hash
              end

              class Tier < Orb::BaseModel
                sig { returns(String) }
                def unit_amount
                end

                sig { params(_: String).returns(String) }
                def unit_amount=(_)
                end

                sig { returns(T.nilable(Float)) }
                def maximum_units
                end

                sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
                def maximum_units=(_)
                end

                sig { params(unit_amount: String, maximum_units: T.nilable(Float)).void }
                def initialize(unit_amount:, maximum_units: nil)
                end

                sig { override.returns({unit_amount: String, maximum_units: T.nilable(Float)}) }
                def to_hash
                end
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

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionThresholdTotalAmountPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def threshold_total_amount_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def threshold_total_amount_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                threshold_total_amount_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    threshold_total_amount_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionTieredPackagePrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def tiered_package_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def tiered_package_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_package_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_package_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionTieredWithMinimumPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def tiered_with_minimum_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def tiered_with_minimum_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_minimum_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionUnitWithPercentPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def unit_with_percent_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def unit_with_percent_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                unit_with_percent_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_with_percent_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionPackageWithAllocationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def package_with_allocation_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def package_with_allocation_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                package_with_allocation_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    package_with_allocation_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionTierWithProrationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def tiered_with_proration_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def tiered_with_proration_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                tiered_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    tiered_with_proration_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionUnitWithProrationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def unit_with_proration_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def unit_with_proration_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                unit_with_proration_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    unit_with_proration_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionGroupedAllocationPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def grouped_allocation_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def grouped_allocation_config=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                grouped_allocation_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    grouped_allocation_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionGroupedWithProratedMinimumPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def grouped_with_prorated_minimum_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def grouped_with_prorated_minimum_config=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    grouped_with_prorated_minimum_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionBulkWithProrationPrice < Orb::BaseModel
            sig { returns(T::Hash[Symbol, T.anything]) }
            def bulk_with_proration_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def bulk_with_proration_config=(_)
            end

            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                bulk_with_proration_config: T::Hash[Symbol, T.anything],
                cadence: Symbol,
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
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
            )
            end

            sig do
              override
                .returns(
                  {
                    bulk_with_proration_config: T::Hash[Symbol, T.anything],
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionScalableMatrixWithUnitPricingPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def scalable_matrix_with_unit_pricing_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def scalable_matrix_with_unit_pricing_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              scalable_matrix_with_unit_pricing_config:,
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
              model_type: :scalable_matrix_with_unit_pricing
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    scalable_matrix_with_unit_pricing_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionScalableMatrixWithTieredPricingPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def scalable_matrix_with_tiered_pricing_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def scalable_matrix_with_tiered_pricing_config=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                name: String,
                scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
            end
            def initialize(
              cadence:,
              item_id:,
              name:,
              scalable_matrix_with_tiered_pricing_config:,
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
              model_type: :scalable_matrix_with_tiered_pricing
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    scalable_matrix_with_tiered_pricing_config: T::Hash[Symbol, T.anything],
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionCumulativeGroupedBulkPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def cumulative_grouped_bulk_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def cumulative_grouped_bulk_config=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
            end
            def initialize(
              cadence:,
              cumulative_grouped_bulk_config:,
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
              model_type: :cumulative_grouped_bulk
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    cumulative_grouped_bulk_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionMaxGroupTieredPackagePrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def max_group_tiered_package_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def max_group_tiered_package_config=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
            end
            def initialize(
              cadence:,
              item_id:,
              max_group_tiered_package_config:,
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
              model_type: :max_group_tiered_package
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    max_group_tiered_package_config: T::Hash[Symbol, T.anything],
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionGroupedWithMeteredMinimumPrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def grouped_with_metered_minimum_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def grouped_with_metered_minimum_config=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
            end
            def initialize(
              cadence:,
              grouped_with_metered_minimum_config:,
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
              model_type: :grouped_with_metered_minimum
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    grouped_with_metered_minimum_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionMatrixWithDisplayNamePrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def matrix_with_display_name_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def matrix_with_display_name_config=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                item_id: String,
                matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
            end
            def initialize(
              cadence:,
              item_id:,
              matrix_with_display_name_config:,
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
              model_type: :matrix_with_display_name
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    item_id: String,
                    matrix_with_display_name_config: T::Hash[Symbol, T.anything],
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class NewSubscriptionGroupedTieredPackagePrice < Orb::BaseModel
            sig { returns(Symbol) }
            def cadence
            end

            sig { params(_: Symbol).returns(Symbol) }
            def cadence=(_)
            end

            sig { returns(T::Hash[Symbol, T.anything]) }
            def grouped_tiered_package_config
            end

            sig { params(_: T::Hash[Symbol, T.anything]).returns(T::Hash[Symbol, T.anything]) }
            def grouped_tiered_package_config=(_)
            end

            sig { returns(String) }
            def item_id
            end

            sig { params(_: String).returns(String) }
            def item_id=(_)
            end

            sig { returns(Symbol) }
            def model_type
            end

            sig { params(_: Symbol).returns(Symbol) }
            def model_type=(_)
            end

            sig { returns(String) }
            def name
            end

            sig { params(_: String).returns(String) }
            def name=(_)
            end

            sig { returns(T.nilable(String)) }
            def billable_metric_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def billable_metric_id=(_)
            end

            sig { returns(T.nilable(T::Boolean)) }
            def billed_in_advance
            end

            sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
            def billed_in_advance=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
                )
              )
            end
            def billing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
                  )
                )
            end
            def billing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(Float)) }
            def conversion_rate
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def conversion_rate=(_)
            end

            sig { returns(T.nilable(String)) }
            def currency
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def currency=(_)
            end

            sig { returns(T.nilable(String)) }
            def external_price_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def external_price_id=(_)
            end

            sig { returns(T.nilable(Float)) }
            def fixed_price_quantity
            end

            sig { params(_: T.nilable(Float)).returns(T.nilable(Float)) }
            def fixed_price_quantity=(_)
            end

            sig { returns(T.nilable(String)) }
            def invoice_grouping_key
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def invoice_grouping_key=(_)
            end

            sig do
              returns(
                T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
            end
            def invoicing_cycle_configuration
            end

            sig do
              params(
                _: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
                )
              )
                .returns(
                  T.nilable(
                    Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
                  )
                )
            end
            def invoicing_cycle_configuration=(_)
            end

            sig { returns(T.nilable(T::Hash[Symbol, T.nilable(String)])) }
            def metadata
            end

            sig do
              params(_: T.nilable(T::Hash[Symbol, T.nilable(String)]))
                .returns(T.nilable(T::Hash[Symbol, T.nilable(String)]))
            end
            def metadata=(_)
            end

            sig { returns(T.nilable(String)) }
            def reference_id
            end

            sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
            def reference_id=(_)
            end

            sig do
              params(
                cadence: Symbol,
                grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                item_id: String,
                name: String,
                billable_metric_id: T.nilable(String),
                billed_in_advance: T.nilable(T::Boolean),
                billing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
                ),
                conversion_rate: T.nilable(Float),
                currency: T.nilable(String),
                external_price_id: T.nilable(String),
                fixed_price_quantity: T.nilable(Float),
                invoice_grouping_key: T.nilable(String),
                invoicing_cycle_configuration: T.nilable(
                  Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
                ),
                metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                reference_id: T.nilable(String),
                model_type: Symbol
              )
                .void
            end
            def initialize(
              cadence:,
              grouped_tiered_package_config:,
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
              model_type: :grouped_tiered_package
            )
            end

            sig do
              override
                .returns(
                  {
                    cadence: Symbol,
                    grouped_tiered_package_config: T::Hash[Symbol, T.anything],
                    item_id: String,
                    model_type: Symbol,
                    name: String,
                    billable_metric_id: T.nilable(String),
                    billed_in_advance: T.nilable(T::Boolean),
                    billing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::BillingCycleConfiguration
                    ),
                    conversion_rate: T.nilable(Float),
                    currency: T.nilable(String),
                    external_price_id: T.nilable(String),
                    fixed_price_quantity: T.nilable(Float),
                    invoice_grouping_key: T.nilable(String),
                    invoicing_cycle_configuration: T.nilable(
                      Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice::InvoicingCycleConfiguration
                    ),
                    metadata: T.nilable(T::Hash[Symbol, T.nilable(String)]),
                    reference_id: T.nilable(String)
                  }
                )
            end
            def to_hash
            end

            class Cadence < Orb::Enum
              abstract!

              ANNUAL = :annual
              SEMI_ANNUAL = :semi_annual
              MONTHLY = :monthly
              QUARTERLY = :quarterly
              ONE_TIME = :one_time
              CUSTOM = :custom

              class << self
                sig { override.returns(T::Array[Symbol]) }
                def values
                end
              end
            end

            class BillingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end

            class InvoicingCycleConfiguration < Orb::BaseModel
              sig { returns(Integer) }
              def duration
              end

              sig { params(_: Integer).returns(Integer) }
              def duration=(_)
              end

              sig { returns(Symbol) }
              def duration_unit
              end

              sig { params(_: Symbol).returns(Symbol) }
              def duration_unit=(_)
              end

              sig { params(duration: Integer, duration_unit: Symbol).void }
              def initialize(duration:, duration_unit:)
              end

              sig { override.returns({duration: Integer, duration_unit: Symbol}) }
              def to_hash
              end

              class DurationUnit < Orb::Enum
                abstract!

                DAY = :day
                MONTH = :month

                class << self
                  sig { override.returns(T::Array[Symbol]) }
                  def values
                  end
                end
              end
            end
          end

          class << self
            sig do
              override
                .returns(
                  [[Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackagePrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredBpsPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBpsPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkBpsPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionThresholdTotalAmountPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredPackagePrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTieredWithMinimumPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithPercentPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionPackageWithAllocationPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionTierWithProrationPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionUnitWithProrationPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedAllocationPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithProratedMinimumPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionBulkWithProrationPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithUnitPricingPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionScalableMatrixWithTieredPricingPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionCumulativeGroupedBulkPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMaxGroupTieredPackagePrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedWithMeteredMinimumPrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionMatrixWithDisplayNamePrice], [Symbol, Orb::Models::SubscriptionCreateParams::ReplacePrice::Price::NewSubscriptionGroupedTieredPackagePrice]]
                )
            end
            private def variants
            end
          end
        end
      end
    end
  end
end
