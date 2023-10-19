require 'models/customer'
require 'models/plan'
require 'model'

module Models
end

class Models::Subscription < Model

        class FixedFeeQuantitySchedule < Model

                # @!attribute [rw] end_date
                required :end_date, String
                # @!attribute [rw] price_id
                required :price_id, String
                # @!attribute [rw] quantity
                required :quantity, Float
                # @!attribute [rw] start_date
                required :start_date, String

        end
        class MaximumIntervals < Model

                # @!attribute [rw] applies_to_price_ids
                required :applies_to_price_ids, ArrayOf.new(String)
                # @!attribute [rw] applies_to_price_interval_ids
                required :applies_to_price_interval_ids, ArrayOf.new(String)
                # @!attribute [rw] end_date
                required :end_date, String
                # @!attribute [rw] maximum_amount
                required :maximum_amount, String
                # @!attribute [rw] start_date
                required :start_date, String

        end
        class MinimumIntervals < Model

                # @!attribute [rw] applies_to_price_ids
                required :applies_to_price_ids, ArrayOf.new(String)
                # @!attribute [rw] applies_to_price_interval_ids
                required :applies_to_price_interval_ids, ArrayOf.new(String)
                # @!attribute [rw] end_date
                required :end_date, String
                # @!attribute [rw] minimum_amount
                required :minimum_amount, String
                # @!attribute [rw] start_date
                required :start_date, String

        end
        class PriceIntervals < Model

                class FixedFeeQuantityTransitions < Model

                        # @!attribute [rw] effective_date
                        required :effective_date, String
                        # @!attribute [rw] price_id
                        required :price_id, String
                        # @!attribute [rw] quantity
                        required :quantity, Integer

                end
                # @!attribute [rw] id
                required :id, String
                # @!attribute [rw] billing_cycle_day
                required :billing_cycle_day, Integer
                # @!attribute [rw] current_billing_period_end_date
                required :current_billing_period_end_date, String
                # @!attribute [rw] current_billing_period_start_date
                required :current_billing_period_start_date, String
                # @!attribute [rw] end_date
                required :end_date, String
                # @!attribute [rw] fixed_fee_quantity_transitions
                required :fixed_fee_quantity_transitions, ArrayOf.new(FixedFeeQuantityTransitions)
                # @!attribute [rw] price
                required :price, Unknown
                # @!attribute [rw] start_date
                required :start_date, String

        end
        class RedeemedCoupon < Model

                # @!attribute [rw] coupon_id
                required :coupon_id, String
                # @!attribute [rw] end_date
                required :end_date, String
                # @!attribute [rw] start_date
                required :start_date, String

        end
        class TrialInfo < Model

                # @!attribute [rw] end_date
                required :end_date, String

        end
        # @!attribute [rw] id
        required :id, String
        # @!attribute [rw] active_plan_phase_order
        required :active_plan_phase_order, Integer
        # @!attribute [rw] auto_collection
        required :auto_collection, BooleanModel
        # @!attribute [rw] billing_cycle_day
        required :billing_cycle_day, Integer
        # @!attribute [rw] created_at
        required :created_at, String
        # @!attribute [rw] current_billing_period_end_date
        required :current_billing_period_end_date, String
        # @!attribute [rw] current_billing_period_start_date
        required :current_billing_period_start_date, String
        # @!attribute [rw] customer
        required :customer, Models::Customer
        # @!attribute [rw] default_invoice_memo
        required :default_invoice_memo, String
        # @!attribute [rw] discount_intervals
        required :discount_intervals, ArrayOf.new(Unknown)
        # @!attribute [rw] end_date
        required :end_date, String
        # @!attribute [rw] fixed_fee_quantity_schedule
        required :fixed_fee_quantity_schedule, ArrayOf.new(FixedFeeQuantitySchedule)
        # @!attribute [rw] invoicing_threshold
        required :invoicing_threshold, String
        # @!attribute [rw] maximum_intervals
        required :maximum_intervals, ArrayOf.new(MaximumIntervals)
        # @!attribute [rw] metadata
        required :metadata, Unknown
        # @!attribute [rw] minimum_intervals
        required :minimum_intervals, ArrayOf.new(MinimumIntervals)
        # @!attribute [rw] net_terms
        required :net_terms, Integer
        # @!attribute [rw] plan
        required :plan, Models::Plan
        # @!attribute [rw] price_intervals
        required :price_intervals, ArrayOf.new(PriceIntervals)
        # @!attribute [rw] redeemed_coupon
        required :redeemed_coupon, RedeemedCoupon
        # @!attribute [rw] start_date
        required :start_date, String
        # @!attribute [rw] status
        required :status, Enum.new([:"active", :"ended", :"upcoming"])
        # @!attribute [rw] trial_info
        required :trial_info, TrialInfo

end