# typed: strong

module Orb
  module Models
    class SubscriptionSchedulePlanChangeParams < Orb::BaseModel
      extend Orb::RequestParameters::Converter
      include Orb::RequestParameters

      sig { returns(Symbol) }
      def change_option
      end

      sig { params(_: Symbol).returns(Symbol) }
      def change_option=(_)
      end

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
      def align_billing_with_plan_change_date
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def align_billing_with_plan_change_date=(_)
      end

      sig { returns(T.nilable(T::Boolean)) }
      def auto_collection
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def auto_collection=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def billing_cycle_alignment
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def billing_cycle_alignment=(_)
      end

      sig { returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAnchorConfiguration)) }
      def billing_cycle_anchor_configuration
      end

      sig do
        params(_: T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAnchorConfiguration))
          .returns(T.nilable(Orb::Models::SubscriptionSchedulePlanChangeParams::BillingCycleAnchorConfiguration))
      end
      def billing_cycle_anchor_configuration=(_)
      end

      sig { returns(T.nilable(Time)) }
      def change_date
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def change_date=(_)
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
      def default_invoice_memo
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def default_invoice_memo=(_)
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
          change_option: Symbol,
          add_adjustments: T.nilable(T::Array[Orb::Models::AddSubscriptionAdjustmentParams]),
          add_prices: T.nilable(T::Array[Orb::Models::AddSubscriptionPriceParams]),
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
          remove_adjustments: T.nilable(T::Array[Orb::Models::RemoveSubscriptionAdjustmentParams]),
          remove_prices: T.nilable(T::Array[Orb::Models::RemoveSubscriptionPriceParams]),
          replace_adjustments: T.nilable(T::Array[Orb::Models::ReplaceSubscriptionAdjustmentParams]),
          replace_prices: T.nilable(T::Array[Orb::Models::ReplaceSubscriptionPriceParams]),
          trial_duration_days: T.nilable(Integer),
          usage_customer_ids: T.nilable(T::Array[String]),
          request_options: T.any(Orb::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .void
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
        usage_customer_ids: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              change_option: Symbol,
              add_adjustments: T.nilable(T::Array[Orb::Models::AddSubscriptionAdjustmentParams]),
              add_prices: T.nilable(T::Array[Orb::Models::AddSubscriptionPriceParams]),
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
              remove_adjustments: T.nilable(T::Array[Orb::Models::RemoveSubscriptionAdjustmentParams]),
              remove_prices: T.nilable(T::Array[Orb::Models::RemoveSubscriptionPriceParams]),
              replace_adjustments: T.nilable(T::Array[Orb::Models::ReplaceSubscriptionAdjustmentParams]),
              replace_prices: T.nilable(T::Array[Orb::Models::ReplaceSubscriptionPriceParams]),
              trial_duration_days: T.nilable(Integer),
              usage_customer_ids: T.nilable(T::Array[String]),
              request_options: Orb::RequestOptions
            }
          )
      end
      def to_hash
      end

      class ChangeOption < Orb::Enum
        abstract!

        REQUESTED_DATE = :requested_date
        END_OF_SUBSCRIPTION_TERM = :end_of_subscription_term
        IMMEDIATE = :immediate

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class BillingCycleAlignment < Orb::Enum
        abstract!

        UNCHANGED = T.let(:unchanged, T.nilable(Symbol))
        PLAN_CHANGE_DATE = T.let(:plan_change_date, T.nilable(Symbol))
        START_OF_MONTH = T.let(:start_of_month, T.nilable(Symbol))

        sig { override.returns(T::Array[Symbol]) }
        def self.values
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
    end
  end
end
