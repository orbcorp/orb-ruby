require 'model'

module Models
    class Plan < Model

            class BasePlan < Model

                    # @!attribute [rw] id
                    required :id, String
                    # @!attribute [rw] external_plan_id
                    required :external_plan_id, String
                    # @!attribute [rw] name
                    required :name, String

            end
            class Maximum < Model

                    # @!attribute [rw] applies_to_price_ids
                    required :applies_to_price_ids, ArrayOf.new(String)
                    # @!attribute [rw] maximum_amount
                    required :maximum_amount, String

            end
            class Minimum < Model

                    # @!attribute [rw] applies_to_price_ids
                    required :applies_to_price_ids, ArrayOf.new(String)
                    # @!attribute [rw] minimum_amount
                    required :minimum_amount, String

            end
            class PlanPhases < Model

                    class Maximum < Model

                            # @!attribute [rw] applies_to_price_ids
                            required :applies_to_price_ids, ArrayOf.new(String)
                            # @!attribute [rw] maximum_amount
                            required :maximum_amount, String

                    end
                    class Minimum < Model

                            # @!attribute [rw] applies_to_price_ids
                            required :applies_to_price_ids, ArrayOf.new(String)
                            # @!attribute [rw] minimum_amount
                            required :minimum_amount, String

                    end
                    # @!attribute [rw] id
                    required :id, String
                    # @!attribute [rw] description
                    required :description, String
                    # @!attribute [rw] discount
                    required :discount, Unknown
                    # @!attribute [rw] duration
                    required :duration, Integer
                    # @!attribute [rw] duration_unit
                    required :duration_unit, Enum.new([:"daily", :"monthly", :"quarterly", :"annual"])
                    # @!attribute [rw] maximum
                    required :maximum, Maximum
                    # @!attribute [rw] maximum_amount
                    required :maximum_amount, String
                    # @!attribute [rw] minimum
                    required :minimum, Minimum
                    # @!attribute [rw] minimum_amount
                    required :minimum_amount, String
                    # @!attribute [rw] name
                    required :name, String
                    # @!attribute [rw] order
                    required :order, Integer

            end
            class Product < Model

                    # @!attribute [rw] id
                    required :id, String
                    # @!attribute [rw] created_at
                    required :created_at, String
                    # @!attribute [rw] name
                    required :name, String

            end
            class TrialConfig < Model

                    # @!attribute [rw] trial_period
                    required :trial_period, Integer
                    # @!attribute [rw] trial_period_unit
                    required :trial_period_unit, Enum.new([:"days"])

            end
            # @!attribute [rw] id
            required :id, String
            # @!attribute [rw] base_plan
            required :base_plan, BasePlan
            # @!attribute [rw] base_plan_id
            required :base_plan_id, String
            # @!attribute [rw] created_at
            required :created_at, String
            # @!attribute [rw] currency
            required :currency, String
            # @!attribute [rw] default_invoice_memo
            required :default_invoice_memo, String
            # @!attribute [rw] description
            required :description, String
            # @!attribute [rw] discount
            required :discount, Unknown
            # @!attribute [rw] external_plan_id
            required :external_plan_id, String
            # @!attribute [rw] invoicing_currency
            required :invoicing_currency, String
            # @!attribute [rw] maximum
            required :maximum, Maximum
            # @!attribute [rw] maximum_amount
            required :maximum_amount, String
            # @!attribute [rw] metadata
            required :metadata, Unknown
            # @!attribute [rw] minimum
            required :minimum, Minimum
            # @!attribute [rw] minimum_amount
            required :minimum_amount, String
            # @!attribute [rw] name
            required :name, String
            # @!attribute [rw] net_terms
            required :net_terms, Integer
            # @!attribute [rw] plan_phases
            required :plan_phases, ArrayOf.new(PlanPhases)
            # @!attribute [rw] prices
            required :prices, ArrayOf.new(Unknown)
            # @!attribute [rw] product
            required :product, Product
            # @!attribute [rw] status
            required :status, Enum.new([:"active", :"archived", :"draft"])
            # @!attribute [rw] trial_config
            required :trial_config, TrialConfig

    end
end