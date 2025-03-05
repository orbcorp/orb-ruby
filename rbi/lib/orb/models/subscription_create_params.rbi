# typed: strong

module Orb
  module Models
    class SubscriptionCreateParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(T.nilable(T::Array[Orb::Models::AddSubscriptionAdjustmentParams])) }
      def add_adjustments
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::AddSubscriptionAdjustmentParams]))
          .returns(T.nilable(T::Array[Orb::Models::AddSubscriptionAdjustmentParams]))
      end
      def add_adjustments=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::AddSubscriptionPriceParams])) }
      def add_prices
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::AddSubscriptionPriceParams]))
          .returns(T.nilable(T::Array[Orb::Models::AddSubscriptionPriceParams]))
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

      sig { returns(T.nilable(Orb::Models::BillingCycleAnchorConfigurationModel)) }
      def billing_cycle_anchor_configuration
      end

      sig do
        params(_: T.nilable(Orb::Models::BillingCycleAnchorConfigurationModel))
          .returns(T.nilable(Orb::Models::BillingCycleAnchorConfigurationModel))
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

      sig { returns(T.nilable(T::Array[Orb::Models::RemoveSubscriptionAdjustmentParams])) }
      def remove_adjustments
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::RemoveSubscriptionAdjustmentParams]))
          .returns(T.nilable(T::Array[Orb::Models::RemoveSubscriptionAdjustmentParams]))
      end
      def remove_adjustments=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::RemoveSubscriptionPriceParams])) }
      def remove_prices
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::RemoveSubscriptionPriceParams]))
          .returns(T.nilable(T::Array[Orb::Models::RemoveSubscriptionPriceParams]))
      end
      def remove_prices=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::ReplaceSubscriptionAdjustmentParams])) }
      def replace_adjustments
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::ReplaceSubscriptionAdjustmentParams]))
          .returns(T.nilable(T::Array[Orb::Models::ReplaceSubscriptionAdjustmentParams]))
      end
      def replace_adjustments=(_)
      end

      sig { returns(T.nilable(T::Array[Orb::Models::ReplaceSubscriptionPriceParams])) }
      def replace_prices
      end

      sig do
        params(_: T.nilable(T::Array[Orb::Models::ReplaceSubscriptionPriceParams]))
          .returns(T.nilable(T::Array[Orb::Models::ReplaceSubscriptionPriceParams]))
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
          add_adjustments: T.nilable(T::Array[Orb::Models::AddSubscriptionAdjustmentParams]),
          add_prices: T.nilable(T::Array[Orb::Models::AddSubscriptionPriceParams]),
          align_billing_with_subscription_start_date: T::Boolean,
          auto_collection: T.nilable(T::Boolean),
          aws_region: T.nilable(String),
          billing_cycle_anchor_configuration: T.nilable(Orb::Models::BillingCycleAnchorConfigurationModel),
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
          remove_adjustments: T.nilable(T::Array[Orb::Models::RemoveSubscriptionAdjustmentParams]),
          remove_prices: T.nilable(T::Array[Orb::Models::RemoveSubscriptionPriceParams]),
          replace_adjustments: T.nilable(T::Array[Orb::Models::ReplaceSubscriptionAdjustmentParams]),
          replace_prices: T.nilable(T::Array[Orb::Models::ReplaceSubscriptionPriceParams]),
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
              add_adjustments: T.nilable(T::Array[Orb::Models::AddSubscriptionAdjustmentParams]),
              add_prices: T.nilable(T::Array[Orb::Models::AddSubscriptionPriceParams]),
              align_billing_with_subscription_start_date: T::Boolean,
              auto_collection: T.nilable(T::Boolean),
              aws_region: T.nilable(String),
              billing_cycle_anchor_configuration: T.nilable(Orb::Models::BillingCycleAnchorConfigurationModel),
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
              remove_adjustments: T.nilable(T::Array[Orb::Models::RemoveSubscriptionAdjustmentParams]),
              remove_prices: T.nilable(T::Array[Orb::Models::RemoveSubscriptionPriceParams]),
              replace_adjustments: T.nilable(T::Array[Orb::Models::ReplaceSubscriptionAdjustmentParams]),
              replace_prices: T.nilable(T::Array[Orb::Models::ReplaceSubscriptionPriceParams]),
              start_date: T.nilable(Time),
              trial_duration_days: T.nilable(Integer),
              usage_customer_ids: T.nilable(T::Array[String]),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      class ExternalMarketplace < Orb::Enum
        abstract!

        GOOGLE = T.let(:google, T.nilable(Symbol))
        AWS = T.let(:aws, T.nilable(Symbol))
        AZURE = T.let(:azure, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
